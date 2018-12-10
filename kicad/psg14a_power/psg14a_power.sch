EESchema Schematic File Version 4
LIBS:psg14a_power-cache
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
L Transistor_FET:IRF9540N Q1
U 1 1 5C02A0F2
P 2450 1430
F 0 "Q1" H 2655 1384 50  0000 L CNN
F 1 "IRF9Z24N" H 2655 1475 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 2650 1355 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf9540n.pdf" H 2450 1430 50  0001 L CNN
	1    2450 1430
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5C02A204
P 2250 1530
F 0 "R1" H 2309 1576 50  0000 L CNN
F 1 "10K" H 2309 1485 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2250 1530 50  0001 C CNN
F 3 "~" H 2250 1530 50  0001 C CNN
	1    2250 1530
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5C02A2A6
P 2410 1230
F 0 "R2" V 2340 930 50  0000 C CNN
F 1 "10K" V 2440 930 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2410 1230 50  0001 C CNN
F 3 "~" H 2410 1230 50  0001 C CNN
	1    2410 1230
	0    1    1    0   
$EndComp
Connection ~ 2250 1430
$Comp
L Device:C_Small C1
U 1 1 5C02A3CA
P 2400 1010
F 0 "C1" V 2380 720 50  0000 C CNN
F 1 "10nF" V 2460 720 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2400 1010 50  0001 C CNN
F 3 "~" H 2400 1010 50  0001 C CNN
	1    2400 1010
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener_Small D1
U 1 1 5C02A910
P 2400 840
F 0 "D1" H 2110 840 50  0000 C CNN
F 1 "BZX85_C12" H 2100 760 50  0000 C CNN
F 2 "Diodes_THT:D_DO-41_SOD81_P5.08mm_Vertical_AnodeUp" V 2400 840 50  0001 C CNN
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
Wire Wire Line
	2250 1630 2060 1630
Text Label 2060 1630 2    50   ~ 0
In
$Comp
L Device:D_Small D3
U 1 1 5C0EF074
P 2550 1730
F 0 "D3" V 2470 1850 50  0000 L CNN
F 1 "UF4007" V 2540 1840 50  0000 L CNN
F 2 "Diodes_THT:D_DO-41_SOD81_P5.08mm_Vertical_AnodeUp" V 2550 1730 50  0001 C CNN
F 3 "~" V 2550 1730 50  0001 C CNN
	1    2550 1730
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 1630 2450 1630
$Comp
L Device:LED_Small D2
U 1 1 5C0EF3AD
P 2450 1730
F 0 "D2" V 2470 1970 50  0000 R CNN
F 1 "green" V 2410 1960 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" V 2450 1730 50  0001 C CNN
F 3 "~" V 2450 1730 50  0001 C CNN
	1    2450 1730
	0    -1   -1   0   
$EndComp
Connection ~ 2550 1630
$Comp
L Device:R_Small R3
U 1 1 5C0EF5C4
P 2450 1970
F 0 "R3" H 2509 2016 50  0000 L CNN
F 1 "5k1" H 2509 1925 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2450 1970 50  0001 C CNN
F 3 "~" H 2450 1970 50  0001 C CNN
	1    2450 1970
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1830 2450 1870
Text Label 2550 1830 0    50   ~ 0
Relay_Ctl
Wire Wire Line
	2060 1820 2060 2070
Wire Wire Line
	2060 2070 2450 2070
Connection ~ 2450 2070
Wire Wire Line
	2450 2070 3130 2070
$Comp
L Device:C_Small C2
U 1 1 5C0EFE1A
P 3130 940
F 0 "C2" H 3222 986 50  0000 L CNN
F 1 "1uF 50V" H 3222 895 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3130 940 50  0001 C CNN
F 3 "~" H 3130 940 50  0001 C CNN
	1    3130 940 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3130 1040 3130 2070
Wire Wire Line
	3130 840  2550 840 
Connection ~ 2550 840 
Text Label 2060 1820 2    50   ~ 0
gnd
Text Label 3130 840  0    50   ~ 0
+24V
$EndSCHEMATC
