/**
 * @file gpio_exti.c
 * @e mikl74@yahoo.com
 * @date 11-01-2019
 * @a Mykhaylo Shcherbak
 * @version 2.00
 * @brief Contains GPIO and EXTI HAL functions
 *
 */
#include <gpio_exti.h>
#include "stm32f0xx.h"
#include <stdint.h>
#include <stddef.h>

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

static const uint8_t B0_Pin = 9;
static const uint8_t B1_Pin = 10;
static volatile Buttons_Callback_t Buttons_CallBack_Stored = NULL;


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

void EXTI4_15_IRQHandler(void);

void EXTI4_15_IRQHandler(void)
{
	if ((EXTI->PR & ( 1u << B0_Pin)) != 0)
	{
		if (Buttons_CallBack_Stored != NULL)
		{
			(*Buttons_CallBack_Stored)(BUTTON_0);
			EXTI->PR |= (1u << B0_Pin);
		}
	}
	if ((EXTI->PR & ( 1u << B1_Pin)) != 0)
	{
		if (Buttons_CallBack_Stored != NULL)
		{
			(*Buttons_CallBack_Stored)(BUTTON_1);
			EXTI->PR |= (1u << B1_Pin);
		}
	}

}
static void Exti_Init(void)
{
	/* PA9 and PA10 are exti events for starting sequence. We need event + interrupt */
	EXTI->IMR |= (1u << B0_Pin) | (1u << B1_Pin); /* Interrupt mask RM 11.3 */
//	EXTI->EMR |= (1u << B0_Pin) | (1u << B1_Pin); /* Event mask RM 11.3 */
	EXTI->RTSR &= ~((1u << B0_Pin) | (1u << B1_Pin)); /* No rising edge */
	EXTI->FTSR |= (1u << B0_Pin) | (1u << B1_Pin); /* Falling edge */
}

void Exti_Clear_Pending(void)
{
	EXTI->PR |= (1u << B0_Pin) | (1u << B1_Pin);
}

void Gpio_Init(const Buttons_Callback_t Buttons_CallBack)
{
	RCC->AHBENR |= RCC_AHBENR_GPIOAEN | RCC_AHBENR_GPIOBEN;
	for (Gpio_id_t id = 0; id < GPIO_TOTAL; id++)
	{
		const Gpio_Hal_t * const Gpio = &Gpios[id];
		if (GPIO_MODE_IN == Gpio->Mode)
		{
			Gpio->port->MODER &= ~(GPIO_MODER_MODER0 << (Gpio->Pin * 2)); /* in */
			Gpio->port->PUPDR &= ~(GPIO_PUPDR_PUPDR0_1 << (Gpio->Pin * 2)); /* Pull-up */
			Gpio->port->PUPDR |= GPIO_PUPDR_PUPDR0_0 << (Gpio->Pin * 2);

		}
		else
		{
			Gpio->port->MODER 	&= ~(GPIO_MODER_MODER0_1 << (Gpio->Pin * 2)); /* Out */
			Gpio->port->MODER 	|=  (GPIO_MODER_MODER0_0 << (Gpio->Pin * 2)); /* Out */
			Gpio->port->OTYPER 	&= ~(1u << Gpio->Pin); /* Push-pull */
			Gpio->port->OSPEEDR &= ~(GPIO_OSPEEDER_OSPEEDR0_0 << (Gpio->Pin * 2)); /* Low speed */
		}
	}
	Exti_Init();
	Buttons_CallBack_Stored = Buttons_CallBack;
	NVIC_EnableIRQ(EXTI4_15_IRQn);
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

void Gpio_Reset_all_Outs(void)
{
	for (Gpio_id_t id = 0; id < GPIO_TOTAL; id++)
	{
		if (GPIO_MODE_OUT == Gpios[id].Mode)
		{
			Gpio_Reset_Pin(id);
		}
	}
}
