/**
 * @file control_tables.c
 * @date 10-09-2024
 * @version 2.10
 * @brief Contains main control table
 */

#include "control_tables.h"
/*[[[cog
from cycle2uml import convert_to_uml

convert_to_uml(0)

]]]*/
/**
@startuml
title Cyclogram_Cold
binary "STARTER" as CH_STARTER
binary "SHUNT" as CH_SHUNT
@0
CH_STARTER is high
@25000
CH_STARTER is low
@5000
CH_SHUNT is high
@25000
CH_SHUNT is low
@enduml
*/
/*[[[end]]] (checksum: 528b41bdd7e3118236630c249feda6d0) */
/**
 * @brief Contains a cyclogram for cold start mode
*/

 /* !!!!!!!! Do not change the names and format of Cyclogram_xxxx arrays as it's used in docs auto generation */
const Channel_Step_t Cyclogram_Cold[]=
{
        {.Channel = CH_STARTER,		.Mode = OUT_MODE_ON,		.ms = 	  0, 	.On = 0,	.Off = 0	},
		{.Channel = CH_SHUNT,			.Mode = OUT_MODE_ON,		.ms =  5000,	.On = 0,	.Off = 0	},
		{.Channel = CH_STARTER, 		.Mode = OUT_MODE_OFF,		.ms = 25000,	.On = 0,	.Off = 0	},
		{.Channel = CH_SHUNT,   		.Mode = OUT_MODE_OFF,		.ms = 25000,	.On = 0,	.Off = 0	},
		{.Channel = CH_TOTAL, .ms = 25100}
};

/*[[[cog
convert_to_uml(1,3000,500)
]]]*/
/**
@startuml
title Cyclogram_Start
scale 3000*500
binary "STARTER" as CH_STARTER
binary "PRIMING_FUEL" as CH_PRIMING_FUEL
binary "SPARK" as CH_SPARK
binary "SHUNT" as CH_SHUNT
binary "36V" as CH_36V
@0
CH_STARTER is high
@28000
CH_STARTER is low
@2000
CH_PRIMING_FUEL is high
@+5000
CH_PRIMING_FUEL is low
@+300
CH_PRIMING_FUEL is high
@+5000
CH_PRIMING_FUEL is low
@+300
CH_PRIMING_FUEL is high
@+5000
CH_PRIMING_FUEL is low
@+300
CH_PRIMING_FUEL is high
@+5000
CH_PRIMING_FUEL is low
@+300
CH_PRIMING_FUEL is high
@+5000
CH_PRIMING_FUEL is low
@+300
CH_PRIMING_FUEL is high
@30000
CH_PRIMING_FUEL is low
@2000
CH_SPARK is high
@30000
CH_SPARK is low
@2000
CH_SHUNT is high
@28000
CH_SHUNT is low
@10000
CH_36V is high
@28000
CH_36V is low
@enduml
*/
/*[[[end]]] (checksum: cfdf8906078d1140567f11a9590a8c6f) */

/**
 * @brief Contains a cyclogram for real start mode
 */
 /* !!!!!!!! Do not change the names and format of Cyclogram_xxxx arrays as it's used in docs auto generation */
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
