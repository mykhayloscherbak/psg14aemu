/**
 * @file main_outputs.c
 * @e mikl74@yahoo.com
 * @date 05-01-2019
 * @version 1.00
 * @brief Contains functions for controlling main outputs
 */

#include <string.h>
#include <stdint.h>
#include "gpio_exti.h"
#include "main_outputs.h"
#include "control_tables.h"
#include "clock_and_timers.h"

static State_t State = STATE_IDLE;
extern Channel_Step_t Cyclogram_Cold[];
extern Channel_Step_t Cyclogram_Start[];
/**
 * Converts channel id to gpio id
 */
static const Gpio_id_t CH_2_Gpio[CH_TOTAL]=
{
		[CH_STARTER] 			= GPIO_CH0,
		[CH_PRIMING_FUEL] 		= GPIO_CH1,
		[CH_SPARK]				= GPIO_CH2,
		[CH_SHUNT]				= GPIO_CH3,
		[CH_36V]				= GPIO_CH4,
		[CH_OUT5]				= GPIO_CH5,
		[CH_OUT6]				= GPIO_CH6,
		[CH_OUT7]				= GPIO_CH7
};
typedef enum
{
	RET_STATE_OFF = 0,
	RET_STATE_ON,
	RET_STATE_NO_CHANGE
} Ret_State_t;


State_t Get_State(void)
{
	return State;
}

void Set_State(const State_t NewState)
{
	if (NewState < STATE_TOTAL)
	{
		State = NewState;
	}
	else
	{
		State = STATE_IDLE;
	}
}

/**
 * @brief Returns channel state for current time
 * @param Time_From_Start time from the start of the sequence
 * @param Step description of the current step
 * @return On/Off or do not change
 */

static Ret_State_t Get_Ch_State(uint32_t const Time_From_Start,const Channel_Step_t * const Step)
{
	Ret_State_t RetVal = RET_STATE_NO_CHANGE;
	uint32_t Pulsed_Time = 0;
	if (Time_From_Start >= Step->ms)
	{
		switch (Step->Mode)
		{
		case OUT_MODE_OFF:
			RetVal = RET_STATE_OFF;
			break;
		case OUT_MODE_ON:
			RetVal = RET_STATE_ON;
			break;
		case OUT_MODE_PULSED:
			Pulsed_Time =(Time_From_Start - Step->ms) % ( Step->On + Step->Off);
			if (Pulsed_Time >= Step->On)
			{
				RetVal = RET_STATE_OFF;
			}
			else
			{
				RetVal = RET_STATE_ON;
			}
			break;
		}
	}
	return RetVal;
}

static uint8_t Outputs_State(uint32_t const Time_From_Start,uint8_t * const Outs,const Channel_Step_t * const Steps)
{
	uint8_t RetVal = 0;
	memset(Outs,0,CH_TOTAL * sizeof(Outs[0])); /* All inputs must be off at start */
	if (Steps != NULL && Outs != NULL)
	{

		uint8_t Counter = 0;
		while (Steps[Counter].Channel < CH_TOTAL)
		{
			const Ret_State_t State = Get_Ch_State(Time_From_Start,&Steps[Counter]);
			switch (State)
			{
			case RET_STATE_OFF:	Outs[Steps[Counter].Channel] = 0; break;
			case RET_STATE_ON:	Outs[Steps[Counter].Channel] = 0xFF; break;
			default: break;

			}
			Counter++;
		}
		if (Time_From_Start >= Steps[Counter].ms)
		{
			RetVal = 0xFF;
		}
	}
	return RetVal;
}

uint8_t Control_Outs(const uint8_t FirstTime)
{
	static uint32_t Timer;
	static const Channel_Step_t * Step_Table = NULL;
	if (FirstTime != 0 )
	{
		ResetTimer(&Timer);
		const State_t CurrState = Get_State();
		switch (CurrState)
		{
		case STATE_START:
			Step_Table = Cyclogram_Start;
			break;
		case STATE_COLD:
			Step_Table = Cyclogram_Cold;
			break;
		default:
			Step_Table = NULL;
			break;
		}
	}
	uint8_t RetVal = 0xFF;
	if (Step_Table != NULL)
	{
		uint8_t Outs[CH_TOTAL];
		RetVal = Outputs_State(ReadTimer(&Timer), Outs, Step_Table);
		for (Control_channels_id Channel = 0; Channel < CH_TOTAL; Channel++)
		{
			const Gpio_id_t Gpio = CH_2_Gpio[Channel];
			if (RetVal == 0)
			{
				if (Outs[Channel] != 0)
				{
					Gpio_Set_Pin(Gpio);
				}
				else
				{
					Gpio_Reset_Pin(Gpio);
				}
			}
			else
			{
				Gpio_Reset_Pin(Gpio);
			}
		}
	}
	return RetVal;
}
