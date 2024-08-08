/**
 * @mainpage
 * This is a c project for psg14a starter-alternator control panel for GTD350 engine
 * @section howtobuild How to build
 * -# You must have in your path:
 * - arm-none-eabi-gcc version >=9 bin dir in your path.
 * For example:
 * /opt/st/stm32cubeclt_1.15.1/GNU-tools-for-STM32/bin/
 * - make >= 4.2
 * - doxygen
 * -# create and output directory
 * -# make all
 * @file main.c
 * @e mikl74@yahoo.com
 * @brief Main file for psg14a_emu
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
