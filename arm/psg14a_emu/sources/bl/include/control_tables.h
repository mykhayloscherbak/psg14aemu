/**
 * @file control_tables.h
 * @e mikl74@yahoo.com
 * @date 05-01-2019
 * @version 1.00
 * @author Mykhaylo Shcherbak
 * @brief Contains prototypes and types for main outputs control table
 */

#ifndef SOURCES_BL_INCLUDE_CONTROL_TABLES_H_
#define SOURCES_BL_INCLUDE_CONTROL_TABLES_H_

#include <stdint.h>

typedef enum
{
	CH_STARTER = 0,
	CH_PRIMING_FUEL,
	CH_SPARK,
	CH_OUT3,
	CH_OUT4,
	CH_OUT5,
	CH_OUT6,
	CH_OUT7,
	CH_TOTAL
} Control_channels_id;

typedef enum
{
	OUT_MODE_OFF = 0,
	OUT_MODE_ON,
	OUT_MODE_PULSED
} Out_Mode_t;

/**
 * @brief Struct for each line in a table. It describes which channel must be in which state after described time
 */
typedef struct
{
	Control_channels_id Channel; /** Channel id */
	uint32_t ms;                 /** At which ms make this state active */
	Out_Mode_t Mode;	         /** Mode which must be active. Modes are on,off or pulsed now */
	uint32_t On;				 /** Time output is on in pulsed mode */
	uint32_t Off;				 /** Time output is off in pulsed mode */
} Channel_Step_t;

#endif /* SOURCES_BL_INCLUDE_CONTROL_TABLES_H_ */
