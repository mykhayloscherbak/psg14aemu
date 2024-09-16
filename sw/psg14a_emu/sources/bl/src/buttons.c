/**
 * @file buttons.c
 * @date 27-04-2019
 * @author Mykhaylo Shcherbak
 * @e mikl74@yahoo.com
 * @brief Contains functions to check the button state in non-blocking mode
 */


#include <stdint.h>
#include "clock_and_timers.h"
#include "gpio_exti.h"
#include "main_outputs.h"
#include "buttons.h"

/**
 * @brief holds the current switch (button) position (start/coldstart) and the timer how long it it is in the state
 */
typedef struct
{
	Buttons_t Button; /**< Button or switch position */
	uint32_t Timer; /**< Timer for state */
}Button_State_t;

static Button_State_t Button_State = {.Button = BUTTON_NONE, .Timer = 0x0FFFFFFF};

static uint8_t Buttons_is_Pressed(const Buttons_t Button)
{
	uint8_t retVal = 0;
	if (BUTTON_COLD == Button)
	{
		retVal = ! Gpio_Get_Pin(GPIO_BUTTON_COLD);
	}
	if (BUTTON_START == Button)
	{
		retVal = ! Gpio_Get_Pin(GPIO_BUTTON_START);
	}
	return retVal;
}

void Buttons_Reset(void)
{
	Button_State.Button = BUTTON_NONE;
	Button_State.Timer = 0x0FFFFFFF;
}

State_t Buttons_Get_State(void)
{
	Buttons_t pressedButton = BUTTON_NONE;
	State_t retVal = STATE_IDLE;
	if (Buttons_is_Pressed(BUTTON_COLD))
	{
		pressedButton = BUTTON_COLD;
	}
	if (Buttons_is_Pressed(BUTTON_START))
	{
		pressedButton = BUTTON_START;
	}
	if (pressedButton  != Button_State.Button)
	{
		Button_State.Button = pressedButton;
		ResetTimer(&Button_State.Timer);
	}
	if (BUTTON_NONE != Button_State.Button && IsExpiredTimer(&Button_State.Timer,BUTTON_WAIT_MS))
	{
		if (BUTTON_COLD == Button_State.Button)
		{
			retVal = STATE_COLD;
		}
		if (BUTTON_START == Button_State.Button)
		{
			retVal = STATE_START;
		}
	}
	return retVal;
}

