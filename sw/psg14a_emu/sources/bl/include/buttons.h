/**
 * @file buttons.h
 * @date 27-04-2019
 * @author Mykhaylo Shcherbak
 * @e mikl74@yahoo.com
 * @brief Contains functions prototypes to check the button state in non-blocking mode
 */
#ifndef SOURCES_BL_INCLUDE_BUTTONS_H_
#define SOURCES_BL_INCLUDE_BUTTONS_H_

/**
 * Time the button (switch) must be in On state to recognize it's really turned on to prevent accidental start
 */
#define BUTTON_WAIT_MS 500

#include "main_outputs.h"
/**
 * Resets the button state machine. Needed after waking-up
 */
void Buttons_Reset(void);
/**
 * Returns the current state selected by pressed button or switch
 * @return the state
 */
State_t Buttons_Get_State(void);
#endif
