/**
 * @file main.c
 * @e mikl74@yahoo.com
 * @brief Main file for psg14a_emu - project for psg14a starter-alternator control panel for GTD350 engine
 */
#include <led_control.h>
#include <stdint.h>
#include "clock_and_timers.h"
#include "gpio.h"


void main(void)
{
	Clock_HSI_Init();
	Systick_Init();
	Gpio_Init();
	uint32_t Timer;
	ResetTimer(&Timer);
	State_t State = STATE_IDLE;
	while(1)
	{
		if (IsExpiredTimer(&Timer,15000) != 0)
		{
			ResetTimer(&Timer);

			State++;
			if (State >= STATE_TOTAL)
			{
				State  = STATE_IDLE;
			}
			Set_State(State);
		}
		Blink_Led();
	}
}
