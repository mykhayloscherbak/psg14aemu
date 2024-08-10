/**
 * @file led_control.c
 * @author Mykhaylo Shcherbak
 * @em mikl74@yahoo.com
 * @date 02-01-2019
 * @version 1.00
 * @brief Contains led blinking functions
 */

#include <led_control.h>
#include <stdint.h>
#include "clock_and_timers.h"
#include "led.h"
#include "main_outputs.h"

/**
 * Blink mode config
 */
typedef struct
{
	uint32_t On; /** mS led must be on */
	uint32_t Off; /** mS led must be off */
}Blink_mode_t;

/**
 * Config for led blinking for both modes
 */
static const Blink_mode_t Blink_Timings[]=
{
		[STATE_IDLE] = 	{.On = 0,.Off = 0},
		[STATE_START] = {.On = 150, .Off = 150},
		[STATE_COLD]  = {.On = 300, .Off = 700}
};

void Blink_Led(void)
{
	const State_t CurrState = Get_State();
	static uint32_t Timer = 0;
	static uint8_t On = 0;

	if (STATE_IDLE != CurrState)
	{
		if (On != 0)
		{
			Led_On();
			if (IsExpiredTimer(&Timer,Blink_Timings[CurrState].On) != 0)
			{
				On = 0;
				ResetTimer(&Timer);
			}
		}
		else
		{
			Led_Off();
			if (IsExpiredTimer(&Timer,Blink_Timings[CurrState].Off) != 0)
			{
				On = 1;
				ResetTimer(&Timer);
			}
		}

	}
	else
	{
		Led_Off();
		ResetTimer(&Timer);
		On = 0;
	}
}
