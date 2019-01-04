/**
 * @file gpio.c
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

static const Gpio_Hal_t Gpios[GPIO_TOTAL]=
{
		[GPIO_CH0] = 			{.port = GPIOA,.Pin = 0	,	.Mode = GPIO_MODE_OUT},
		[GPIO_CH1] = 			{.port = GPIOA,.Pin = 1	,	.Mode = GPIO_MODE_OUT},
		[GPIO_CH2] = 			{.port = GPIOA,.Pin = 2	,	.Mode = GPIO_MODE_OUT},
		[GPIO_CH3] = 			{.port = GPIOA,.Pin = 3	,	.Mode = GPIO_MODE_OUT},
		[GPIO_CH4] = 			{.port = GPIOA,.Pin = 4	,	.Mode = GPIO_MODE_OUT},
		[GPIO_CH5] = 			{.port = GPIOA,.Pin = 5	,	.Mode = GPIO_MODE_OUT},
		[GPIO_CH6] = 			{.port = GPIOA,.Pin = 6	,	.Mode = GPIO_MODE_OUT},
		[GPIO_CH7] = 			{.port = GPIOA,.Pin = 7	,	.Mode = GPIO_MODE_OUT},
		[GPIO_LED] = 			{.port = GPIOB,.Pin = 1	,	.Mode = GPIO_MODE_OUT},
		[GPIO_BUTTON_START] = 	{.port = GPIOA,.Pin = 9	,	.Mode = GPIO_MODE_IN },
		[GPIO_BUTTON_COLD] 	= 	{.port = GPIOA,.Pin = 10,	.Mode = GPIO_MODE_IN }
};


void Gpio_Init(void)
{
	RCC->AHBENR |= RCC_AHBENR_GPIOAEN | RCC_AHBENR_GPIOBEN;
	for (Gpio_id_t id = 0; id < GPIO_TOTAL; id++)
	{
		const Gpio_Hal_t * const Gpio = &Gpios[id];
		if (GPIO_MODE_IN == Gpio->Mode)
		{
			Gpio->port->MODER &= ~(GPIO_MODER_MODER0 << (Gpio->Pin * 2)); /* in */

		}
		else
		{
			Gpio->port->MODER 	&= ~(GPIO_MODER_MODER0_1 << (Gpio->Pin * 2)); /* Out */
			Gpio->port->MODER 	|=  (GPIO_MODER_MODER0_0 << (Gpio->Pin * 2)); /* Out */
			Gpio->port->OTYPER 	&= ~(1u << Gpio->Pin); /* Push-pull */
			Gpio->port->OSPEEDR &= ~(GPIO_OSPEEDER_OSPEEDR0_0 << (Gpio->Pin * 2)); /* Low speed */
		}
	}
}

void Gpio_Set_Pin(const Gpio_id_t Id)
{
	if (Id < GPIO_TOTAL)
	{
		const Gpio_Hal_t * const Gpio = &Gpios[Id];
		if (GPIO_MODE_OUT == Gpio->Mode)
		{
			GPIO_TypeDef * const port = Gpio->port;
			const uint8_t pin = Gpio->Pin;
			port->BSRR = 1u << pin;
		}
	}
}

void Gpio_Reset_Pin(const Gpio_id_t Id)
{
	if (Id < GPIO_TOTAL)
	{
		const Gpio_Hal_t * const Gpio = &Gpios[Id];
		if (GPIO_MODE_OUT == Gpio->Mode)
		{
			GPIO_TypeDef * const port = Gpio->port;
			const uint8_t pin = Gpio->Pin;
			port->BSRR = 1u << (pin + 16);
		}
	}
}
