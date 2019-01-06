/**
 * @file control_tables.c
 * @e mikl74@yahoo.com
 * @author Mykhaylo Shcherbak
 * @date 05-01-2019
 * @version 1.00
 * @brief Contains main control table
 */

#include "control_tables.h"

const Channel_Step_t Cyclogram_Cold[]=
{
		{.Channel = CH_STARTER,.Mode = OUT_MODE_ON,.ms = 0, .On = 0,.Off = 0},
		{.Channel = CH_STARTER,.Mode = OUT_MODE_OFF, .ms = 1000, .On = 0, .Off = 0},
		{.Channel = CH_TOTAL}
};
