/**
 * @file main.c
 * @e mikl74@yahoo.com
 * @brief Main file for psg14a_emu - project for psg14a starter-alternator control panel for GTD350 engine
 */
#include <stdint.h>
#include "led_control.h"
#include "clock_and_timers.h"
#include "main_outputs.h"
#include "gpio.h"

static volatile uint8_t CallBack_Occured = 0;
static void CallBack(void)
{
	CallBack_Occured = !0;
}

void main(void)
{
	Clock_HSI_Init();
	Systick_Init(CallBack);
	Gpio_Init();
	uint32_t Timer;
	ResetTimer(&Timer);
	State_t State = STATE_IDLE;
	Control_Outs(!0);
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
		if (Control_Outs(0) != 0)
		{
			__asm__("bkpt #0");
		}
		CallBack_Occured = 0;
		while (CallBack_Occured == 0)
		{

		}
	}
}
