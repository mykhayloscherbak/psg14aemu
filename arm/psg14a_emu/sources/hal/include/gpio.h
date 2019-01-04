/**
 * @file gpio.h
 * @e mikl74@yahoo.com
 * @a Mykhaylo Shcherbak
 * @date 01-01-2019
 * @version 1.00
 * @brief Contains GPIO hardware abstraction layer prototypes.
 * Buttons processing TBD
 */

#ifndef SOURCES_HAL_INCLUDE_GPIO_H_
#define SOURCES_HAL_INCLUDE_GPIO_H_

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

void Gpio_Init(void);
void Gpio_Set_Pin(const Gpio_id_t Id);
void Gpio_Reset_Pin(const Gpio_id_t Id);

#endif /* SOURCES_HAL_INCLUDE_GPIO_H_ */
