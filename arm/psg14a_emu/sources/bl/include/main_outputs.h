/**
 * @file main_outputs.h
 * @e mikl74@yahoo.com
 * @date 05-01-2019
 * @version 1.00
 * @brief Contains functions prototypes for controlling main outputs
 */

#ifndef SOURCES_BL_INCLUDE_MAIN_OUTPUTS_H_
#define SOURCES_BL_INCLUDE_MAIN_OUTPUTS_H_


typedef enum
{
	STATE_IDLE = 0, /** < Idle state. Must not occur in real life. In idle CPU sleeps */
	STATE_START,    /** < Starting the engine */
	STATE_COLD,     /** < Starting without fuel */
	STATE_TOTAL     /** < Total number of states */
} State_t;

/**
 * Returns the current device state
 * @return Current state
 */
State_t Get_State(void);

/**
 * Sets the current device state
 * @param NewState New device state
 */
void Set_State(const State_t NewState);

/**
 * @brief Controls outputs for the current time
 * @param FirstTime This is first run of the function if nonzero
 * @return non-zero  if all sequence is over
 */
uint8_t Control_Outs(const uint8_t FirstTime);

#endif /* SOURCES_BL_INCLUDE_MAIN_OUTPUTS_H_ */
