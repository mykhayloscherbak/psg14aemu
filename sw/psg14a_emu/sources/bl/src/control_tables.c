/**
 * @file control_tables.c
 * @date 10-08-2019
 * @version 1.10
 * @brief Contains main control table
 */

#include "control_tables.h"
/*[[[cog
import cog
import re
def checkCyclogram(split):
  return len(split) >= 3 and split[0] == 'const' and split[1] == 'Channel_Step_t' and split[2].startswith('Cyclogram_')

def line2dict(line):
  ret = {}
  line_split = re.findall("\.[A-z0-9]+ *= *[A-z0-9]+", line)
  for item in line_split:
    eq_split=item.split("=")
    key = eq_split[0][1:].strip()
    value = eq_split[1].strip()
    ret[key]=value
  return ret

def convertToUml(instanceNo):
  parsed = {}
  with open(cog.inFile) as f:
    instance = 0
    for line in f:
      split = line.split()
      if checkCyclogram(split):
          instance += 1
      if (instance >= instanceNo + 1):
        break
    if instance != instanceNo + 1:
      cog.error("No Cycloram line found")
    else:
      for line in f:
        if line.find(";") != -1 :
          break
        dict = line2dict(line)
        cog.msg(str(dict))
  f.close()

convertToUml(0)

]]]*/
/*[[[end]]] (checksum: d41d8cd98f00b204e9800998ecf8427e)*/
/**
 * @brief Contains a cyclogram for cold start mode
*/

 /* !!!!!!!! Do not change the names and format of Cyclogram_xxxx arrays as it's used in docs auto generation */
const Channel_Step_t Cyclogram_Cold[]=
{
		{.Channel = CH_STARTER,			.Mode = OUT_MODE_ON,		.ms = 	  0, 	.On = 0,	.Off = 0	},
		{.Channel = CH_SHUNT,			.Mode = OUT_MODE_ON,		.ms =  5000,	.On = 0,	.Off = 0	},
		{.Channel = CH_STARTER, 		.Mode = OUT_MODE_OFF,		.ms = 25000,	.On = 0,	.Off = 0	},
		{.Channel = CH_SHUNT,   		.Mode = OUT_MODE_OFF,		.ms = 25000,	.On = 0,	.Off = 0	},
		{.Channel = CH_TOTAL, .ms = 25100}
};

/*[[[cog
convertToUml(1)
]]]*/
/*[[[end]]] (checksum: d41d8cd98f00b204e9800998ecf8427e)*/

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
