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
	GPIO_CH0 = 0,     //!< GPIO_CH0
	GPIO_CH1,         //!< GPIO_CH1
	GPIO_CH2,         //!< GPIO_CH2
	GPIO_CH3,         //!< GPIO_CH3
	GPIO_CH4,         //!< GPIO_CH4
	GPIO_CH5,         //!< GPIO_CH5
	GPIO_CH6,         //!< GPIO_CH6
	GPIO_CH7,         //!< GPIO_CH7
	GPIO_LED,         //!< GPIO_LED
	GPIO_BUTTON_START,//!< GPIO_BUTTON_START
	GPIO_BITTON_COLD, //!< GPIO_BITTON_COLD
	GPIO_TOTAL        //!< GPIO_TOTAL
} Gpio_id_t;


#endif /* SOURCES_HAL_INCLUDE_GPIO_H_ */
