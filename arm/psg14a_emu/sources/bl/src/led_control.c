/**
 * @file led_control.c
 * @e mikl74@yahoo.com
 * @date 02-01-2019
 * @version 1.00
 * @brief Contains led blinking function prototypes
 */


#include <led_control.h>
#include <stdint.h>
#include "clock_and_timers.h"
#include "gpio.h"

typedef struct
{
	uint32_t On;
	uint32_t Off;
}Blink_mode_t;

static const Blink_mode_t Blink_Timings[]=
{
		[STATE_IDLE] = 	{.On = 0,.Off = 0},
		[STATE_START] = {.On = 300, .Off = 700},
		[STATE_COLD]  = {.On = 700, .Off = 300}
};

static State_t State = STATE_IDLE;

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

void Blink_Led(void)
{
	const State_t CurrState = State;
	static uint32_t Timer = 0;
	static uint8_t On = 0;

	if (STATE_IDLE != CurrState)
	{
		if (On != 0)
		{
			Gpio_Set_Pin(GPIO_LED);
			if (IsExpiredTimer(&Timer,Blink_Timings[CurrState].On) != 0)
			{
				On = 0;
				ResetTimer(&Timer);
			}
		}
		else
		{
			Gpio_Reset_Pin(GPIO_LED);
			if (IsExpiredTimer(&Timer,Blink_Timings[CurrState].Off) != 0)
			{
				On = 1;
				ResetTimer(&Timer);
			}
		}

	}
	else
	{
		Gpio_Reset_Pin(GPIO_LED);
		ResetTimer(&Timer);
		On = 0;
	}
}
