/**
 * @file led.h
 *
 * @a Mykhaylo Scherbak
 * @date 04-01-2019
 * @e mikl74@yahoo.com
 * @version 1.00
 * @brief contains functions to turn LED on and off
 */

#include <gpio_exti.h>

static inline void Led_On(void)
{
	Gpio_Set_Pin(GPIO_LED);
}


static inline void Led_Off(void)
{
	Gpio_Reset_Pin(GPIO_LED);
}
