/**
 * @file control_tables.c
 * @date 10-08-2019
 * @version 1.10
 * @brief Contains main control table
 */

#include "control_tables.h"

/**
 * @brief Contains a cyclogram for cold start mode
 * @startuml
 * binary "STARTER" as ST
 * binary "SHUNT" as SH
 * @0
 * ST is high
 * SH is low
 *
 * @5000
 * SH is high
 *
 * @25000
 * ST is low
 * SH is low
 *
 *
 * @enduml
 */
const Channel_Step_t Cyclogram_Cold[]=
{
		{.Channel = CH_STARTER,			.Mode = OUT_MODE_ON,		.ms = 	  0, 	.On = 0,	.Off = 0	},
		{.Channel = CH_SHUNT,			.Mode = OUT_MODE_ON,		.ms =  5000,	.On = 0,	.Off = 0	},
		{.Channel = CH_STARTER, 		.Mode = OUT_MODE_OFF,		.ms = 25000,	.On = 0,	.Off = 0	},
		{.Channel = CH_SHUNT,   		.Mode = OUT_MODE_OFF,		.ms = 25000,	.On = 0,	.Off = 0	},
		{.Channel = CH_TOTAL, .ms = 25100}
};

/**
 * @brief Contains a cyclogram for real start mode
 * @startuml
 * scale 1000 as 50 pixels
 * binary "STARTER" as ST
 * binary "SHUNT" as SH
 * binary "PRIMING FUEL" as PF
 * binary "SPARK" as SP
 * binary "36V" as V36
 * @0
 * ST is high
 * PF is low
 * SH is low
 * V36 is low
 * SP is low
 * @2000
 * PF is high
 * SP is high
 * SH is high
 * @+5000
 * PF is low
 * @+300
 * PF is high
 * @+5000
 * PF is low
 * @+300
 * PF is high
 * @+5000
 * PF is low
 * @+300
 * PF is high
 * @+5000
 * PF is low
 * @+300
 * PF is high
 * @+5000
 * PF is low
 * @+300
 * PF is high
 * @10000
 * V36 is high
 * @28000
 * SH is low
 * ST is low
 * V36 is low
 * @30000
 * PF is low
 * SP is low
 *
 *
 * @enduml
 */
const Channel_Step_t Cyclogram_Start[]=
{
		{.Channel = CH_STARTER,			.Mode = OUT_MODE_ON,		.ms = 	  0, 	.On = 0,	.Off = 0	},
		{.Channel = CH_PRIMING_FUEL,	.Mode = OUT_MODE_PULSED,	.ms =  2000, 	.On = 5000,	.Off = 300	},
		{.Channel = CH_SPARK,			.Mode = OUT_MODE_ON,		.ms =  2000, 	.On = 	0,	.Off = 	 0	},
		{.Channel = CH_SHUNT,			.Mode = OUT_MODE_ON,		.ms =  2000,	.On =   0,	.Off =   0	},
		{.Channel = CH_36V,				.Mode = OUT_MODE_ON,		.ms = 10000,    .On =   0,  .Off = 	 0  },
		{.Channel = CH_SHUNT,			.Mode = OUT_MODE_OFF,		.ms = 28000,	.On =   0,	.Off =   0	},
		{.Channel = CH_STARTER,			.Mode = OUT_MODE_OFF,		.ms = 28000,	.On =   0,	.Off =   0	},
		{.Channel = CH_36V,				.Mode = OUT_MODE_OFF,       .ms = 28000,    .On =   0,  .Off =   0  },
		{.Channel = CH_PRIMING_FUEL,	.Mode = OUT_MODE_OFF,		.ms = 30000,	.On =   0,	.Off =   0	},
		{.Channel = CH_SPARK,			.Mode = OUT_MODE_OFF,		.ms = 30000,	.On =   0,	.Off =   0	},
		{.Channel = CH_TOTAL, .ms = 30100}

};
