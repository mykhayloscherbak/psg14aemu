EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Transistor_FET:IRF9540N Q?
U 1 1 5C02A0F2
P 2450 1430
F 0 "Q?" H 2655 1384 50  0000 L CNN
F 1 "IRF9Z24N" H 2655 1475 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2650 1355 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf9540n.pdf" H 2450 1430 50  0001 L CNN
	1    2450 1430
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5C02A204
P 2250 1530
F 0 "R?" H 2309 1576 50  0000 L CNN
F 1 "10K" H 2309 1485 50  0000 L CNN
F 2 "" H 2250 1530 50  0001 C CNN
F 3 "~" H 2250 1530 50  0001 C CNN
	1    2250 1530
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5C02A2A6
P 2410 1230
F 0 "R?" V 2340 930 50  0000 C CNN
F 1 "10K" V 2440 930 50  0000 C CNN
F 2 "" H 2410 1230 50  0001 C CNN
F 3 "~" H 2410 1230 50  0001 C CNN
	1    2410 1230
	0    1    1    0   
$EndComp
Connection ~ 2250 1430
$Comp
L Device:C_Small C?
U 1 1 5C02A3CA
P 2400 1010
F 0 "C?" V 2380 720 50  0000 C CNN
F 1 "10nF" V 2460 720 50  0000 C CNN
F 2 "" H 2400 1010 50  0001 C CNN
F 3 "~" H 2400 1010 50  0001 C CNN
	1    2400 1010
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener_Small D?
U 1 1 5C02A910
P 2400 840
F 0 "D?" H 2110 840 50  0000 C CNN
F 1 "BZV55_C12" H 2100 760 50  0000 C CNN
F 2 "" V 2400 840 50  0001 C CNN
F 3 "~" V 2400 840 50  0001 C CNN
	1    2400 840 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 840  2500 840 
Wire Wire Line
	2300 840  2250 840 
Wire Wire Line
	2550 840  2550 1010
Wire Wire Line
	2250 840  2250 1010
Wire Wire Line
	2300 1010 2250 1010
Connection ~ 2250 1010
Wire Wire Line
	2250 1010 2250 1230
Wire Wire Line
	2500 1010 2550 1010
Connection ~ 2550 1010
Wire Wire Line
	2550 1010 2550 1230
Wire Wire Line
	2510 1230 2550 1230
Connection ~ 2550 1230
Wire Wire Line
	2310 1230 2250 1230
Connection ~ 2250 1230
Wire Wire Line
	2250 1230 2250 1430
$EndSCHEMATC
