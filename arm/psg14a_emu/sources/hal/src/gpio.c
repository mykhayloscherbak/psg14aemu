/**
 * @file gpio.h
 * @e mikl74@yahoo.com
 * @date 02-01-2019
 * @a Mykhaylo Shcherbak
 * @version 1.00
 * @brief Contains GPIO HAL functions
 * Wake-up from buttons TBD
 */
#include "stm32f0xx.h"
#include "gpio.h"
#include <stdint.h>

/**
 * @brief Here are two modes only: out push/pull and in for button.
 */
typedef enum
{
	GPIO_MODE_IN = 0,/** < Button */
	GPIO_MODE_OUT    /** < Channel or LED */
} Gpio_Mode_t;

typedef struct
{
	GPIO_TypeDef * port;
	uint8_t	Pin;
	Gpio_Mode_t Mode;
} Gpio_Hal_t;

