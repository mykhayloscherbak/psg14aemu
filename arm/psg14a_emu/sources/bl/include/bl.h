/**
 * @file bl.h
 * @e mikl74@yahoo.com
 * @date 02-01-2019
 * @version 1.00
 * @brief Contains business logic function prototypes
 */

#ifndef SOURCES_BL_INCLUDE_BL_H_
#define SOURCES_BL_INCLUDE_BL_H_

typedef enum
{
	STATE_IDLE = 0, /** < Idle state. Must not occur in real life. In idle CPU sleeps */
	STATE_START,    /** < Starting the engine */
	STATE_COLD,     /** < Starting without fuel */
	STATE_TOTAL     /** < Total number of states */
} State_t;

/**
 * @Brief processes led. Led blinks depending on state.
 */
void Blink_Led(void);
/**
 * @brief Set blinking state
 * @param NewState New State
 */
void Set_State(const State_t NewState);

#endif /* SOURCES_BL_INCLUDE_BL_H_ */
