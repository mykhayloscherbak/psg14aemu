/**
 * @file led_control.h
 * @e mikl74@yahoo.com
 * @date 02-01-2019
 * @version 1.00
 * @brief Contains led blinking function prototypes
 */

#ifndef SOURCES_BL_INCLUDE_LED_CONTROL_H_
#define SOURCES_BL_INCLUDE_LED_CONTROL_H_
/**
 * This function must be called in main while(1) cycle. It contains internal timers so it may be called
 * at any frequency but the faster it's called, the more precision is got
 */
void Blink_Led(void);

#endif /* SOURCES_BL_INCLUDE_LED_CONTROL_H_ */
