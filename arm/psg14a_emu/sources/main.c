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
#include "stm32f0xx.h"

static volatile uint8_t Systick_CallBack_Occured = 0;
static void CallBack(void)
{
	Systick_CallBack_Occured = !0;
}

static void prestart(void)
{
	uint32_t prestartTimer;
	ResetTimer(&prestartTimer);

	while (!IsExpiredTimer(&prestartTimer,5000))
	{
		static uint8_t on = 0;
		uint32_t blinkTimer;
		ResetTimer(&blinkTimer);
		if (on == 0)
		{
			Gpio_Set_Pin(GPIO_LED);
		}
		else
		{
			Gpio_Reset_Pin(GPIO_LED);
		}
		on = !on;
		while(!IsExpiredTimer(&blinkTimer,100))
		{

		}
	}
	Gpio_Reset_Pin(GPIO_LED);
}

void main(void)
{
	Clock_HSI_Init();
	Systick_Init(CallBack);
	Gpio_Init();
	Buttons_Reset();
	prestart();

	while(1)
	{
		State_t Buttons_State = Buttons_Get_State();
		static State_t Old_State = STATE_IDLE;
		static State_t Working_State = STATE_IDLE;
		if (STATE_IDLE == Working_State)
		{
			Working_State = Buttons_State;
		}
		if (Old_State != Working_State)
		{
			Set_State(Working_State);
			if (Working_State != STATE_IDLE)
			{
				Control_Outs(!0);
			}
			Old_State = Working_State;
		}
		Blink_Led();
		if (Working_State != STATE_IDLE)
		{
			if (Control_Outs(0) != 0)
			{
				Working_State = STATE_IDLE;
			}
		}
		Systick_CallBack_Occured = 0;
		while (Systick_CallBack_Occured == 0)
		{

		}
		if (STATE_IDLE == Working_State)
		{
			Sleep_on();
			Exti_Clear_Pending();
			uint32_t stateChangeTimer;
			Buttons_Reset();
			ResetTimer(&stateChangeTimer);
			while(Buttons_Get_State() == STATE_IDLE && !IsExpiredTimer(&stateChangeTimer,BUTTON_WAIT_MS + 100))
			{
			}
		}
	}
}
