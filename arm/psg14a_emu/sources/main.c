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

static volatile uint8_t Systick_CallBack_Occured = 0;
static void CallBack(void)
{
	Systick_CallBack_Occured = !0;
}

static volatile State_t State = STATE_IDLE;

static void Button_CallBack(const Buttons_t Button)
{
	switch(Button)
	{
	case BUTTON_0:
		if (STATE_IDLE == State)
		{
			State = STATE_COLD;
		}
		break;
	case BUTTON_1:
		if (STATE_IDLE == State)
		{
			State = STATE_START;
		}
		break;
	default:
		State = STATE_IDLE;
		break;
	}
}

void main(void)
{
	Clock_HSI_Init();
	Systick_Init(CallBack);
	Gpio_Init(Button_CallBack);
	while(1)
	{
//		if (STATE_IDLE == State)
//		{
//			Sleep_on();
//		}
		State_t New_State = State;
		static State_t Old_State = STATE_IDLE;
		if (Old_State != New_State)
		{
			if (New_State != STATE_IDLE)
			{
				Control_Outs(!0);
			}
			Set_State(New_State);
			Old_State = New_State;
		}

		Blink_Led();
		if (Control_Outs(0) != 0)
		{
			State = STATE_IDLE;
		}
		Systick_CallBack_Occured = 0;
		while (Systick_CallBack_Occured == 0)
		{

		}
	}
}
