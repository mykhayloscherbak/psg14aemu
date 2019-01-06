/**
 * @file main_outputs.c
 * @e mikl74@yahoo.com
 * @date 05-01-2019
 * @version 1.00
 * @brief Contains functions for controlling main outputs
 */

#include <stdio.h>
#include <string.h>
#include "main_outputs.h"
#include "control_tables.h"
#include "clock_and_timers.h"

static State_t State = STATE_IDLE;
extern Channel_Step_t Cyclogram_Cold[];

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


static uint8_t Get_Ch_State(uint32_t const Time_From_Start,const Channel_Step_t * const Step)
{
	uint8_t RetVal = 0;
	uint32_t Pulsed_Time = 0;
	if (Step->ms >= Time_From_Start)
	{
		switch (Step->Mode)
		{
		case OUT_MODE_OFF:
			RetVal = 0;
			break;
		case OUT_MODE_ON:
			RetVal = 0xff;
			break;
		case OUT_MODE_PULSED:
			Pulsed_Time = (Step->ms - Time_From_Start) % ( Step->On + Step->Off);
			if (Pulsed_Time >= Step->On)
			{
				RetVal = 0;
			}
			else
			{
				RetVal = 0xff;
			}
			break;
		}
	}
	return RetVal;
}

static void Outputs_State(uint32_t const Time_From_Start,uint8_t * const Outs,const Channel_Step_t * const Steps)
{
	memset(Outs,0,CH_TOTAL * sizeof(Outs[0])); /* All inputs must be off at start */
	if (Steps != NULL && Outs != NULL)
	{
		uint8_t Counter = 0;
		while (Steps[Counter].Channel < CH_TOTAL)
		{
			Counter++;
		}
		while (--Counter > 0)
		{
			Outs[Steps[Counter].Channel] = Get_Ch_State(Time_From_Start,&Steps[Counter]);
		}
	}
}

void Control_Outs(const uint8_t FirstTime)
{
	static uint32_t Timer;
	static uint8_t OutsOld[CH_TOTAL];
	if (FirstTime != 0 )
	{
		ResetTimer(&Timer);
		memset(OutsOld,0,sizeof(OutsOld));
	}
	uint8_t Outs[CH_TOTAL];
	Outputs_State(ReadTimer(&Timer), Outs, Cyclogram_Cold);
	if (memcmp(Outs,OutsOld,CH_TOTAL) != 0)
	{
		memcpy(OutsOld,Outs,CH_TOTAL);
		__asm__("bkpt #0");
	}
}
