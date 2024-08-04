/**
 * @file main_cycle.c
 * @brief Contains functions that are called in while(1) main cycle and after it
 * @author Mykhaylo Shcherbak
 * @e mikl74@yahoo.com
 * @date 03-08-2019
 * @version 1.00
 */

#include "main_cycle.h"
#include "main_outputs.h"
#include "led.h"
#include "led_control.h"
#include "buttons.h"
#include "clock_and_timers.h"

/**
 * @brief Main Cycle State Machine states
 */
typedef enum
{
	MCSM_Idle = 0,           /** Idle state */
	MCSM_Cold,               /** Cold start - start without priming fuel and spark */
	MCSM_Start,              /** Main start mode */
	MCSM_Emergency_Stop_Cold,/** Switch was put in start position while in cold starting mode, stop and go to idle */
	MCSM_Emergency_Stop_Start/** Switch was put in cold position while in main starting mode, stop and go to idle */
} MCSM_State_t;

static void gotoIdle(void)
{
	Led_Off();
	Buttons_Reset();
	Set_State(STATE_IDLE);
}

void mainCycleRun(void)
{
	static MCSM_State_t CurrentState = MCSM_Idle;
	const State_t buttonsState = Buttons_Get_State();
	switch (CurrentState)
	{
	case MCSM_Idle:
		if (STATE_IDLE != buttonsState)
		{
			Set_State(buttonsState);
			if (STATE_COLD == buttonsState)
			{
				CurrentState = MCSM_Cold;
			}
			if (STATE_START == buttonsState)
			{
				CurrentState = MCSM_Start;
			}
			Control_Outs(!0);
		}
		break;
	case MCSM_Cold:
		if (STATE_START == buttonsState) /* Emergency */
		{
			CurrentState = MCSM_Emergency_Stop_Cold;
		}
		else
		{
			Blink_Led();
			if (Control_Outs(0) != 0)
			{
				gotoIdle();
				CurrentState = MCSM_Idle;
			}
		}
		break;
	case MCSM_Start:
		if (STATE_COLD == buttonsState) /* Emergency */
		{
			CurrentState = MCSM_Emergency_Stop_Start;
		}
		else
		{
			Blink_Led();
			if (Control_Outs(0) != 0)
			{
				gotoIdle();
				CurrentState = MCSM_Idle;
			}
		}
		break;
	case MCSM_Emergency_Stop_Cold:
		if (STATE_COLD != buttonsState)
		{
			gotoIdle();
			CurrentState = MCSM_Idle;
		}
		break;

	case MCSM_Emergency_Stop_Start:
		if (STATE_START != buttonsState)
		{
			gotoIdle();
			CurrentState = MCSM_Idle;
		}
		break;
	}
}


void mainCyclePreRun(void)
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

