/**
 * @file main.c
 * @e mikl74@yahoo.com
 * @brief Main file for psg14a_emu - project for psg14a starter-alternator control panel for GTD350 engine
 */
#include <stdint.h>
#include "gpio_exti.h"
#include "led_control.h"
#include "clock_and_timers.h"
#include "main_outputs.h"
#include "sleep.h"
#include "buttons.h"
#include "led.h"
#include "main_cycle.h"

static volatile uint8_t Systick_CallBack_Occured = 0;
static void CallBack(void)
{
	Systick_CallBack_Occured = !0;
}


void main(void)
{
	Clock_HSI_Init();
	Systick_Init(CallBack);
	Gpio_Init();
	Buttons_Reset();
	mainCyclePreRun();

	while(1)
	{
		mainCycleRun();
		if (STATE_IDLE == Get_State())
		{
			Sleep_on();
			//Led_On();
			Exti_Clear_Pending();
			uint32_t stateChangeTimer;
			Buttons_Reset();
			ResetTimer(&stateChangeTimer);
			while(Buttons_Get_State() == STATE_IDLE && !IsExpiredTimer(&stateChangeTimer,BUTTON_WAIT_MS + 200))
			{
			}
			//Led_Off();
		}
		else
		{
			Systick_CallBack_Occured = 0;
			while (Systick_CallBack_Occured == 0)
			{

			}
		}
	}
}
