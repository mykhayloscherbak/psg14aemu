/**
 * @file clock_and_timers.c
 * @e mikl74@yahoo.com
 * @version 1.00
 * @brief Contains functions for clock system
 * Project uses HSI without PLL.
 */
#include <stdint.h>
#include "stm32f0xx.h"
#include "clock_and_timers.h"

/**
 * @brief inits HSI as a main clock. PLL will not be used. Core/systick frequency is ~8Mhz
 */
void Clock_HSI_Init(void)
{
	uint32_t tmp = RCC->CR;
	tmp &= RCC_CR_HSITRIM_Msk;
	tmp |= RCC_CR_HSION;
	RCC->CR = tmp;
}
