/**
 * @file main.c
 * @e mikl74@yahoo.com
 * @brief Main file for psg14a_emu - project for psg14a starter-alternator control panel for GTD350 engine
 */
#include <stdint.h>
#include "clock_and_timers.h"
#include "gpio.h"


void main(void)
{
    Clock_HSI_Init();
    Systick_Init();
    Gpio_Init();
	while(1)
	{
		Gpio_Set_Pin(GPIO_LED);
		Gpio_Reset_Pin(GPIO_LED);
	}
}
