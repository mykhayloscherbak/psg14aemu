## @file cycle2uml.py
# @brief Optional file needed to build doxygen with UML
#

## @package cycle2uml
# This module converts .c cyclogram format to uml diagrams using COG
#

import cog
import re

## Checks if the split line is a first cyclogram line
# @param split (list): is a split line
# @returns Boolean: True if line is the first cyclo line
#
def check_cyclogram(split):
  return len(split) >= 3 and split[0] == 'const' and split[1] == 'Channel_Step_t' and split[2].startswith('Cyclogram_')

## Converts a cyclogram line to a dictionary
# line format is a designated initializers format of c struct.
# It's like .Param = value, ....
# dictionary is line "Param":"value" from the line
# @param line (string):   cyclogram line from the C struct
# @returns dictionary: the dictionary containing the line converted to "Param":"value" format
#
def line2dict(line):
  ret = {}
  line_split = re.findall("\.[A-z0-9]+\s*=\s*[A-z0-9]+", line)
  for item in line_split:
    eq_split=item.split("=")
    key = eq_split[0][1:].strip()
    value = eq_split[1].strip()
    ret[key]=value
  return ret

## Converts the parsed structure to a UML
# @param parsed (dict): A parsed line from @ref line2dict
# @param name (string): A name of the diagram
# @param xscale (int): [optional] width of the img in pixels.
# @param yscale (int): [optional] height of the img in pixels.

def parsed_to_uml(parsed, name, xscale, yscale):
 cog.outl("/\x2a*")
 cog.outl("@startuml")
 cog.outl("title "+name)
 if xscale is not None and yscale is not None:
  cog.outl("scale {:d}*{:d}".format(xscale, yscale))
 elif xscale is not None:
  cog.outl("scale {:d} width".format(xscale))
 elif yscale is not None:
  cog.outl("scale {:d} height".format(yscale))
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

##The main function. Converts the cyclofram to UML timing diagram
# @param instance_no (int): The number of the cyclogram in the code, enumerated from zero
# @param xscale (int): [optional] width of the img in pixels.
# @param yscale (int): [optional] height of the img in pixels.
#
def convert_to_uml(instance_no, xscale = None, yscale = None):
  parsed = {}
  with open(cog.inFile) as f:
    instance = 0
    for line in f:
      split = line.split()
      if check_cyclogram(split):
          instance += 1
      if instance >= instance_no + 1:
        break
    if instance != instance_no + 1:
      cog.error("No Cycloram line found")
    else:
      name = split[2]
      name = name[0:name.find("[")]
      for line in f:
        if line.find(";") != -1 :
          break
        line_dict = line2dict(line)
        if "Channel" in line_dict.keys():
          dictkey = line_dict["Channel"]
          line_dict.pop("Channel")
          if dictkey not in parsed.keys():
            parsed[dictkey] = []
          parsed[dictkey].append(line_dict)
      parsed_to_uml(parsed, name, xscale, yscale)

  f.close()