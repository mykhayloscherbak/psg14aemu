/**
 * @file main.c
 * @e mikl74@yahoo.com
 * @brief Main file for psg14a_emu - project for psg14a starter-alternator control panel for GTD350 engine
 */
#include <stdint.h>
#include "clock_and_timers.h"

volatile uint32_t x[3]={1,2,3};
void main(void)
{
    Clock_HSI_Init();
	while(1)
	{
		x[1]++;
	}
}
