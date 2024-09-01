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
  line_split = re.findall("\.[A-z0-9]+\s*=\s*[A-z0-9]+", line)
  for item in line_split:
    eq_split=item.split("=")
    key = eq_split[0][1:].strip()
    value = eq_split[1].strip()
    ret[key]=value
  return ret


def parsedToUml(parsed, name):
 cog.outl("/\x2a*")
 cog.outl("@startuml")
 cog.outl("title "+name)
 #cog.outl("scale max 1000*300")
 cog.outl("scale 30100 as 1000 pixels")
 for key in parsed.keys():
  if key != "CH_TOTAL":
    name = key[key.find("CH_") + 3:]
    cog.outl("binary \""+name+"\" as " +key)
 totalms = int(parsed["CH_TOTAL"][0]["ms"])
 for key in parsed.keys():
  if key != "CH_TOTAL":
    l = parsed[key]
    for n,element in enumerate(l):
      cog.outl("@"+element["ms"])
      if element["Mode"] == "OUT_MODE_ON":
        cog.outl(key + " is high")
      if element["Mode"] == "OUT_MODE_OFF":
        cog.outl(key + " is low")
      if element["Mode"] == "OUT_MODE_PULSED":
        start = int(element["ms"])
        on = int(element["On"])
        off = int(element["Off"])
        if n<len(l) - 1: #not the last element
         to = int(l[n + 1]["ms"])
        else:
          to = totalms
        ts = int(element["ms"])
        cog.outl(key + " is high")
        while True:
          ts += on
          if ts >= to:
            break
          cog.outl("@+" + str(on))
          cog.outl(key + " is low")
          ts += off
          if ts >= to:
            break
          cog.outl("@+" + str(off))
          cog.outl(key + " is high")

 cog.outl("@enduml")
 cog.outl("\x2a/")


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
      name = split[2]
      name = name[0:name.find("[")]
      for line in f:
        if line.find(";") != -1 :
          break
        dict = line2dict(line)
        if "Channel" in dict.keys():
          dictkey = dict["Channel"]
          dict.pop("Channel")
          if dictkey not in parsed.keys():
            parsed[dictkey] = []
          parsed[dictkey].append(dict)
      #cog.msg(str(parsed))
      parsedToUml(parsed, name)

  f.close()

convertToUml(0)

]]]*/
/**
@startuml
title Cyclogram_Cold
scale 30100 as 1000 pixels
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
/*[[[end]]] (checksum: 66cb44bc61aa353ba8e6e11035a2f605) */
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
convertToUml(1)
]]]*/
/**
@startuml
title Cyclogram_Start
scale 30100 as 1000 pixels
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
/*[[[end]]] (checksum: 9ea6b725968904046eefe495335ab7a4) */

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
