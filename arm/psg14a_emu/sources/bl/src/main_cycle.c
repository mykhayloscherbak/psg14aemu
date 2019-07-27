/**
 * @file main_cycle.c
 * @brief Contains function that is called in while(1) main cycle
 */

#include "main_cycle.h"
#include "main_outputs.h"
#include "led.h"
#include "led_control.h"
#include "buttons.h"

typedef enum
{
	MCSM_Idle = 0,
	MCSM_Cold,
	MCSM_Start,
	MCSM_Emergency_Stop_Cold,
	MCSM_Emergency_Stop_Start
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
