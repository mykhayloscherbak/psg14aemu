/**
 * @file gpio_exti.h
 * @e mikl74@yahoo.com
 * @a Mykhaylo Shcherbak
 * @date 11-01-2019
 * @version 2.00
 * @brief Contains GPIO and EXTI hardware abstraction layer prototypes.
 */

#ifndef SOURCES_HAL_INCLUDE_GPIO_EXTI_H_
#define SOURCES_HAL_INCLUDE_GPIO_EXTI_H_

#include <stdint.h>

typedef enum
{
	GPIO_CH0 = 0,     /**  OUT CH0 (Starter) */
	GPIO_CH1,         /**  OUT CH1 (Priming fuel) */
	GPIO_CH2,         /**  OUT CH2 (Spark plug )*/
	GPIO_CH3,         /**  OUT CH3 (TBD) */
	GPIO_CH4,         /**  OUT CH4 (TBD) */
	GPIO_CH5,         /**  OUT CH5 (TBD) */
	GPIO_CH6,         /**  OUT CH6 (TBD) */
	GPIO_CH7,         /**  OUT CH7 (TBD) */
	GPIO_LED,         /**  Led */
	GPIO_BUTTON_START,/**  Input for start button */
	GPIO_BUTTON_COLD, /**  Input for start_without_fuel button */
	GPIO_TOTAL        /**  Total number of GPIOs */
} Gpio_id_t;

typedef enum
{
	BUTTON_NONE = 0,
	BUTTON_START,
	BUTTON_COLD
} Buttons_t;


void Gpio_Init(void);
void Gpio_Set_Pin(const Gpio_id_t Id);
void Gpio_Reset_Pin(const Gpio_id_t Id);
void Gpio_Reset_all_Outs(void);
void Exti_Clear_Pending(void);
uint8_t Gpio_Get_Pin(const Gpio_id_t Id);

#endif /* SOURCES_HAL_INCLUDE_GPIO_EXTI_H_ */
