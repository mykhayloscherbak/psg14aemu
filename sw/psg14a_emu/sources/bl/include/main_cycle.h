/**
 * @file main_cycle.h
 * @brief Contains prototypes of functions that are called in while(1) main cycle and after it
 * @author Mykhaylo Shcherbak
 * @e mikl74@yahoo.com
 * @date 03-08-2019
 * @version 1.00
 */

#ifndef SOURCES_BL_INCLUDE_MAIN_CYCLE_H_
#define SOURCES_BL_INCLUDE_MAIN_CYCLE_H_
/**
 * @brief This function is called in while(1). Waiting for the end of the tick is done after it
 */
void mainCycleRun(void);
/**
 * @brief This function is called before main cycle and makes 5s pause to connect debugger if needed
 */
void mainCyclePreRun(void);

#endif /* SOURCES_BL_INCLUDE_MAIN_CYCLE_H_ */
