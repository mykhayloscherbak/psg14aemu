/**
 * @file clock_and_timers.c
 * @e mikl74@yahoo.com
 * @version 1.00
 * @brief Contains functions for clock system
 * Project uses HSI without PLL. Clock is ~8Mhz for core and buses
 */
#include <stdint.h>
#include <stddef.h>
#include "stm32f0xx.h"
#include "clock_and_timers.h"

static volatile uint32_t Counter = 0;
static Systick_Callback_t CB = NULL;

/**
 * @brief inits HSI as a main clock. PLL will not be used. Core/systick frequency is ~8Mhz
 */
void Clock_HSI_Init(void)
{
	uint32_t tmp = RCC->CR;
	tmp &= RCC_CR_HSITRIM_Msk;
	tmp |= RCC_CR_HSION;
	RCC->CR = tmp;
	while ((RCC->CR & RCC_CR_HSIRDY) == 0)
	{

	}
	RCC->CFGR &= ~(RCC_CFGR_HPRE); /* No prescalers for AHB */
	RCC->CFGR &= ~(RCC_CFGR_SW); /* HSI as a system clock */
}

/**
 * @brief Inits systick timer interrupt for 1ms period.
 */
void Systick_Init(const Systick_Callback_t CallBack)
{
	SysTick_Config( CORE_FREQ / SYSTICK_FREQ);
	CB = CallBack;
}

void SysTick_Handler(void);

void SysTick_Handler(void)
{
	Counter++;
	if (CB != NULL)
	{
		(*CB)();
	}
}

/**
 * @brief Resets software timer
 * @param Timer timer variable
 */
void ResetTimer(uint32_t * const Timer)
{
	*Timer = Counter;
}

/**
 * @brief Checks if timer timeout has expired
 * @param Timer Timer variable
 * @param Timeout Timeout value in ms
 * @return zero if timer has not expired, non-zero else
 */
uint8_t IsExpiredTimer(uint32_t * const Timer, const uint32_t Timeout)
{
	return Counter >= *Timer + Timeout ;
}

uint32_t ReadTimer(uint32_t * const Timer)
{
	return Counter - *Timer;
}

void Reset_Main_Counter(void)
{
	Counter = 0;
}

