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
/**
 * Describes the control (output) channels
 */
typedef enum
{
	CH_STARTER = 0, /**< Starter-alternater control channel */
	CH_PRIMING_FUEL,/**< Priming fuel em valve */
	CH_SPARK,       /**< Priming spark control */
	CH_SHUNT,       /**< STG-3 shunt */
	CH_OUT4,        /**< Reserved channel 4 that has power output */
	CH_OUT5,        /**< Reserved channel 5 that does not have power out, it's just OC out */
	CH_OUT6,        /**< Reserved channel 6 that does not have power out, it's just OC out */
	CH_OUT7,        /**< Reserved channel 7 that does not have power out, it's just OC out */
	CH_TOTAL
} Control_channels_id;

/**
 * Describes the channel mode
 */
typedef enum
{
	OUT_MODE_OFF = 0,/**< Channel is off */
	OUT_MODE_ON,     /**< Channel is on */
	OUT_MODE_PULSED  /**< Channel is in pulsed mode. The description of pulsed mode will be in next fields */
} Out_Mode_t;

/**
 * @brief Struct for each line in a table. It describes which channel must be in which state after described time
 */
typedef struct
{
	Control_channels_id Channel; /**< Channel id */
	uint32_t ms;                 /**< At which ms make this state active */
	Out_Mode_t Mode;	         /**< Mode which must be active. Modes are on,off or pulsed now */
	uint32_t On;				 /**< Time output is on in pulsed mode */
	uint32_t Off;				 /**< Time output is off in pulsed mode */
} Channel_Step_t;

#endif /* SOURCES_BL_INCLUDE_CONTROL_TABLES_H_ */
