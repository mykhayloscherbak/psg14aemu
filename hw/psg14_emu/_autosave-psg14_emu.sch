EESchema Schematic File Version 5
EELAYER 43 0
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
Comment5 ""
Comment6 ""
Comment7 ""
Comment8 ""
Comment9 ""
$EndDescr
Connection ~ 3180 1725
NoConn ~ 2680 2725
NoConn ~ 2680 2825
NoConn ~ 3605 4295
NoConn ~ 3605 4395
Wire Wire Line
	2010 2170 1930 2170
Wire Wire Line
	2110 3285 2190 3285
Wire Wire Line
	2110 3485 1975 3485
Wire Wire Line
	2190 3485 2190 3685
Wire Wire Line
	2190 3685 1975 3685
Wire Wire Line
	2680 1725 3180 1725
Wire Wire Line
	2880 3225 3180 3225
Wire Wire Line
	3005 4795 3105 4795
Wire Wire Line
	3180 1725 3280 1725
Text Label 1890 1835 0    50   ~ 0
+3V
Text Label 1975 3485 0    50   ~ 0
B1
Text Label 1975 3585 0    50   ~ 0
GND
Text Label 1975 3685 0    50   ~ 0
B0
Text Label 1975 3785 0    50   ~ 0
GND
Text Label 1980 2560 0    50   ~ 0
+3V
Text Label 1980 2660 0    50   ~ 0
GND
Text Label 2010 2170 0    50   ~ 0
GND
Text Label 2190 3285 0    50   ~ 0
+3V
Text Label 2260 2525 0    50   ~ 0
+3V
Text Label 2260 2725 0    50   ~ 0
GND
Text Label 2260 2855 0    50   ~ 0
+3V
Text Label 2260 3055 0    50   ~ 0
GND
Text Label 2480 2125 2    50   ~ 0
GND
Text Label 2680 1925 2    50   ~ 0
NRST
Text Label 3105 3595 0    50   ~ 0
+3V
Text Label 3105 4795 0    50   ~ 0
GND
Text Label 3180 3225 0    50   ~ 0
GND
Text Label 3280 1725 0    50   ~ 0
+3V
Text Label 3605 3895 0    50   ~ 0
NRST
Text Label 3605 4095 0    50   ~ 0
SWDCLK
Text Label 3605 4195 0    50   ~ 0
SWDIO
Text Label 3680 1925 0    50   ~ 0
DO0
Text Label 3680 2025 0    50   ~ 0
DO1
Text Label 3680 2125 0    50   ~ 0
DO2
Text Label 3680 2225 0    50   ~ 0
DO3
Text Label 3680 2325 0    50   ~ 0
DO4
Text Label 3680 2425 0    50   ~ 0
DO5
Text Label 3680 2525 0    50   ~ 0
DO6
Text Label 3680 2625 0    50   ~ 0
DO7
Text Label 3680 2725 0    50   ~ 0
B0
Text Label 3680 2825 0    50   ~ 0
B1
Text Label 3680 2925 0    50   ~ 0
SWDIO
Text Label 3680 3025 0    50   ~ 0
SWDCLK
Text Label 5510 4205 2    50   ~ 0
DO3
Text Label 5520 2660 2    50   ~ 0
DO1
Text Label 5525 3315 2    50   ~ 0
DO2
Text Label 5535 1770 2    50   ~ 0
DO0
Text Label 5710 4405 2    50   ~ 0
GND
Text Label 5720 2860 2    50   ~ 0
GND
Text Label 5725 3515 2    50   ~ 0
GND
Text Label 5735 1970 2    50   ~ 0
GND
Text Label 6310 4205 0    50   ~ 0
OUT3
Text Label 6310 4405 0    50   ~ 0
GND_O
Text Label 6320 2660 0    50   ~ 0
OUT1
Text Label 6320 2860 0    50   ~ 0
GND_O
Text Label 6325 3315 0    50   ~ 0
OUT2
Text Label 6325 3515 0    50   ~ 0
GND_O
Text Label 6335 1770 0    50   ~ 0
OUT0
Text Label 6335 1970 0    50   ~ 0
GND_O
Text Label 7605 4205 2    50   ~ 0
DO7
Text Label 7615 2660 2    50   ~ 0
DO5
Text Label 7620 3315 2    50   ~ 0
DO6
Text Label 7630 1770 2    50   ~ 0
DO4
Text Label 7805 4405 2    50   ~ 0
GND
Text Label 7815 2860 2    50   ~ 0
GND
Text Label 7820 3515 2    50   ~ 0
GND
Text Label 7830 1970 2    50   ~ 0
GND
Text Label 8405 4205 0    50   ~ 0
OUT7
Text Label 8405 4405 0    50   ~ 0
GND_O
Text Label 8415 2660 0    50   ~ 0
OUT5
Text Label 8415 2860 0    50   ~ 0
GND_O
Text Label 8420 3315 0    50   ~ 0
OUT6
Text Label 8420 3515 0    50   ~ 0
GND_O
Text Label 8430 1770 0    50   ~ 0
OUT4
Text Label 8430 1970 0    50   ~ 0
GND_O
Text Label 9390 2640 2    50   ~ 0
OUT2
Text Label 9390 2740 2    50   ~ 0
OUT1
Text Label 9390 2840 2    50   ~ 0
OUT0
Text Label 9390 3060 2    50   ~ 0
OUT5
Text Label 9390 3160 2    50   ~ 0
OUT4
Text Label 9390 3260 2    50   ~ 0
OUT3
Text Label 9400 3460 2    50   ~ 0
GND_O
Text Label 9400 3560 2    50   ~ 0
OUT7
Text Label 9400 3660 2    50   ~ 0
OUT6
$Comp
L power:+BATT #PWR01
U 1 1 5BC20FA4
P 1890 1835
F 0 "#PWR01" H 1890 1685 50  0001 C CNN
F 1 "+BATT" H 1905 2008 50  0000 C CNN
F 2 "" H 1890 1835 50  0001 C CNN
F 3 "" H 1890 1835 50  0001 C CNN
	1    1890 1835
	1    0    0    -1  
$EndComp
$Comp
L power:-BATT #PWR02
U 1 1 5BC20F55
P 1930 2170
F 0 "#PWR02" H 1930 2020 50  0001 C CNN
F 1 "-BATT" H 1945 2343 50  0000 C CNN
F 2 "" H 1930 2170 50  0001 C CNN
F 3 "" H 1930 2170 50  0001 C CNN
	1    1930 2170
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5BC41002
P 2110 3385
F 0 "R3" H 2000 3545 50  0000 L CNN
F 1 "10K" V 2040 3335 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2110 3385 50  0001 C CNN
F 3 "~" H 2110 3385 50  0001 C CNN
	1    2110 3385
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5BC41930
P 2190 3385
F 0 "R4" H 2125 3545 50  0000 L CNN
F 1 "10K" V 2255 3335 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2190 3385 50  0001 C CNN
F 3 "~" H 2190 3385 50  0001 C CNN
	1    2190 3385
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5BC21236
P 2580 2125
F 0 "R1" V 2650 2130 50  0000 C CNN
F 1 "10K" V 2470 2125 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2580 2125 50  0001 C CNN
F 3 "~" H 2580 2125 50  0001 C CNN
	1    2580 2125
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5BC2114C
P 2680 1825
F 0 "R2" H 2440 1905 50  0000 L CNN
F 1 "10K" H 2405 1835 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2680 1825 50  0001 C CNN
F 3 "~" H 2680 1825 50  0001 C CNN
	1    2680 1825
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5BC402ED
P 2780 3225
F 0 "R5" V 2715 3225 50  0000 C CNN
F 1 "68" V 2870 3225 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2780 3225 50  0001 C CNN
F 3 "~" H 2780 3225 50  0001 C CNN
	1    2780 3225
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5BC3DBA6
P 5610 4205
F 0 "R6" V 5414 4205 50  0000 C CNN
F 1 "330" V 5505 4205 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5610 4205 50  0001 C CNN
F 3 "~" H 5610 4205 50  0001 C CNN
	1    5610 4205
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5BC3CFFD
P 5620 2660
F 0 "R7" V 5424 2660 50  0000 C CNN
F 1 "330" V 5515 2660 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5620 2660 50  0001 C CNN
F 3 "~" H 5620 2660 50  0001 C CNN
	1    5620 2660
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R8
U 1 1 5BC3DB96
P 5625 3315
F 0 "R8" V 5429 3315 50  0000 C CNN
F 1 "330" V 5520 3315 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5625 3315 50  0001 C CNN
F 3 "~" H 5625 3315 50  0001 C CNN
	1    5625 3315
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R9
U 1 1 5BC3BEC8
P 5635 1770
F 0 "R9" V 5439 1770 50  0000 C CNN
F 1 "330" V 5530 1770 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5635 1770 50  0001 C CNN
F 3 "~" H 5635 1770 50  0001 C CNN
	1    5635 1770
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R10
U 1 1 5BC3E818
P 7705 4205
F 0 "R10" V 7509 4205 50  0000 C CNN
F 1 "330" V 7600 4205 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 7705 4205 50  0001 C CNN
F 3 "~" H 7705 4205 50  0001 C CNN
	1    7705 4205
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R11
U 1 1 5BC3E7F8
P 7715 2660
F 0 "R11" V 7519 2660 50  0000 C CNN
F 1 "330" V 7610 2660 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 7715 2660 50  0001 C CNN
F 3 "~" H 7715 2660 50  0001 C CNN
	1    7715 2660
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R12
U 1 1 5BC3E808
P 7720 3315
F 0 "R12" V 7524 3315 50  0000 C CNN
F 1 "330" V 7615 3315 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 7720 3315 50  0001 C CNN
F 3 "~" H 7720 3315 50  0001 C CNN
	1    7720 3315
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R13
U 1 1 5BC3E7E8
P 7730 1770
F 0 "R13" V 7534 1770 50  0000 C CNN
F 1 "330" V 7625 1770 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 7730 1770 50  0001 C CNN
F 3 "~" H 7730 1770 50  0001 C CNN
	1    7730 1770
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole MH1
U 1 1 5BC75866
P 3120 880
F 0 "MH1" H 3220 926 50  0000 L CNN
F 1 "BatteryWire" H 3220 835 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_2.5mm" H 3120 880 50  0001 C CNN
F 3 "~" H 3120 880 50  0001 C CNN
	1    3120 880 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH2
U 1 1 5BC755F9
P 4080 850
F 0 "MH2" H 4180 896 50  0000 L CNN
F 1 "MountingHole" H 4180 805 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 4080 850 50  0001 C CNN
F 3 "~" H 4080 850 50  0001 C CNN
	1    4080 850 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH3
U 1 1 5BC75507
P 4090 1070
F 0 "MH3" H 4190 1116 50  0000 L CNN
F 1 "MountingHole" H 4190 1025 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 4090 1070 50  0001 C CNN
F 3 "~" H 4090 1070 50  0001 C CNN
	1    4090 1070
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH4
U 1 1 5BC756D8
P 4110 1280
F 0 "MH4" H 4210 1326 50  0000 L CNN
F 1 "MountingHole" H 4210 1235 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 4110 1280 50  0001 C CNN
F 3 "~" H 4110 1280 50  0001 C CNN
	1    4110 1280
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH5
U 1 1 5BC757C5
P 4110 1480
F 0 "MH5" H 4210 1526 50  0000 L CNN
F 1 "MountingHole" H 4210 1435 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 4110 1480 50  0001 C CNN
F 3 "~" H 4110 1480 50  0001 C CNN
	1    4110 1480
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D1
U 1 1 5BC3F876
P 2680 3125
F 0 "D1" V 2695 3365 50  0000 R CNN
F 1 "LED_GREEN" V 2600 3535 50  0000 R CNN
F 2 "LEDs:LED_D5.0mm" V 2680 3125 50  0001 C CNN
F 3 "~" V 2680 3125 50  0001 C CNN
	1    2680 3125
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5BC3B644
P 2260 2625
F 0 "C1" H 2352 2671 50  0000 L CNN
F 1 "100nF" H 2352 2580 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2260 2625 50  0001 C CNN
F 3 "~" H 2260 2625 50  0001 C CNN
	1    2260 2625
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5BC74FB7
P 2260 2955
F 0 "C2" H 2352 3001 50  0000 L CNN
F 1 "100nF" H 2352 2910 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2260 2955 50  0001 C CNN
F 3 "~" H 2260 2955 50  0001 C CNN
	1    2260 2955
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5BC2176E
P 1780 2660
F 0 "J2" H 1700 2335 50  0000 C CNN
F 1 "Battery" H 1700 2426 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 1780 2660 50  0001 C CNN
F 3 "~" H 1780 2660 50  0001 C CNN
	1    1780 2660
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J4
U 1 1 5BC48CA1
P 9590 2740
F 0 "J4" H 9670 2782 50  0000 L CNN
F 1 "Conn_01x03" H 9670 2691 50  0000 L CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-3_P5.08mm" H 9590 2740 50  0001 C CNN
F 3 "~" H 9590 2740 50  0001 C CNN
	1    9590 2740
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J5
U 1 1 5BC48D97
P 9590 3160
F 0 "J5" H 9670 3202 50  0000 L CNN
F 1 "Conn_01x03" H 9670 3111 50  0000 L CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-3_P5.08mm" H 9590 3160 50  0001 C CNN
F 3 "~" H 9590 3160 50  0001 C CNN
	1    9590 3160
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J6
U 1 1 5BC48E7A
P 9600 3560
F 0 "J6" H 9680 3602 50  0000 L CNN
F 1 "Conn_01x03" H 9680 3511 50  0000 L CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-3_P5.08mm" H 9600 3560 50  0001 C CNN
F 3 "~" H 9600 3560 50  0001 C CNN
	1    9600 3560
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5BC40C39
P 1775 3685
F 0 "J1" H 1695 3260 50  0000 C CNN
F 1 "Buttons" H 1695 3351 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-4_P5.08mm" H 1775 3685 50  0001 C CNN
F 3 "~" H 1775 3685 50  0001 C CNN
	1    1775 3685
	-1   0    0    1   
$EndComp
$Comp
L Isolator:LTV-847S U2
U 1 1 5BC3DB9F
P 6010 4305
F 0 "U2" H 6010 4630 50  0000 C CNN
F 1 "LTV-847S" H 6010 4539 50  0000 C CNN
F 2 "Housings_DIP:SMDIP-16_W9.53mm_Clearance8mm" H 6010 4005 50  0001 C CNN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 5410 4755 50  0001 C CNN
	1    6010 4305
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-847S U2
U 2 1 5BC3CFF6
P 6020 2760
F 0 "U2" H 6020 3085 50  0000 C CNN
F 1 "LTV-847S" H 6020 2994 50  0000 C CNN
F 2 "Housings_DIP:SMDIP-16_W9.53mm_Clearance8mm" H 6020 2460 50  0001 C CNN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 5420 3210 50  0001 C CNN
	2    6020 2760
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-847S U2
U 3 1 5BC3DB8F
P 6025 3415
F 0 "U2" H 6025 3740 50  0000 C CNN
F 1 "LTV-847S" H 6025 3649 50  0000 C CNN
F 2 "Housings_DIP:SMDIP-16_W9.53mm_Clearance8mm" H 6025 3115 50  0001 C CNN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 5425 3865 50  0001 C CNN
	3    6025 3415
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-847S U2
U 4 1 5BC26E11
P 6035 1870
F 0 "U2" H 6035 2195 50  0000 C CNN
F 1 "LTV-847S" H 6035 2104 50  0000 C CNN
F 2 "Housings_DIP:SMDIP-16_W9.53mm_Clearance8mm" H 6035 1570 50  0001 C CNN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 5435 2320 50  0001 C CNN
	4    6035 1870
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-847S U3
U 1 1 5BC3E811
P 8105 4305
F 0 "U3" H 8105 4630 50  0000 C CNN
F 1 "LTV-847S" H 8105 4539 50  0000 C CNN
F 2 "Housings_DIP:SMDIP-16_W9.53mm_Clearance8mm" H 8105 4005 50  0001 C CNN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 7505 4755 50  0001 C CNN
	1    8105 4305
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-847S U3
U 2 1 5BC3E7F1
P 8115 2760
F 0 "U3" H 8115 3085 50  0000 C CNN
F 1 "LTV-847S" H 8115 2994 50  0000 C CNN
F 2 "Housings_DIP:SMDIP-16_W9.53mm_Clearance8mm" H 8115 2460 50  0001 C CNN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 7515 3210 50  0001 C CNN
	2    8115 2760
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-847S U3
U 3 1 5BC3E801
P 8120 3415
F 0 "U3" H 8120 3740 50  0000 C CNN
F 1 "LTV-847S" H 8120 3649 50  0000 C CNN
F 2 "Housings_DIP:SMDIP-16_W9.53mm_Clearance8mm" H 8120 3115 50  0001 C CNN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 7520 3865 50  0001 C CNN
	3    8120 3415
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-847S U3
U 4 1 5BC3E7E1
P 8130 1870
F 0 "U3" H 8130 2195 50  0000 C CNN
F 1 "LTV-847S" H 8130 2104 50  0000 C CNN
F 2 "Housings_DIP:SMDIP-16_W9.53mm_Clearance8mm" H 8130 1570 50  0001 C CNN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 7530 2320 50  0001 C CNN
	4    8130 1870
	1    0    0    -1  
$EndComp
$Comp
L psg14_emu-rescue:Conn_ARM_JTAG_SWD_10-Connector J3
U 1 1 5BC42580
P 3105 4195
F 0 "J3" H 2665 4241 50  0000 R CNN
F 1 "Conn_ARM_JTAG_SWD_10" H 2665 4150 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch1.27mm_SMD" H 3155 3645 50  0001 L TNN
F 3 "http://infocenter.arm.com/help/topic/com.arm.doc.faqs/attached/13634/cortex_debug_connectors.pdf" V 2755 2945 50  0001 C CNN
	1    3105 4195
	1    0    0    -1  
$EndComp
$Comp
L psg14_emu-rescue:STM32F030F4Px-MCU_ST_STM32F0 U1
U 1 1 5BC20D04
P 3180 2425
F 0 "U1" H 3180 1539 50  0000 C CNN
F 1 "STM32F030F4Px" H 3180 1448 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-20_4.4x6.5mm_Pitch0.65mm" H 2780 1725 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00088500.pdf" H 3180 2425 50  0001 C CNN
	1    3180 2425
	1    0    0    -1  
$EndComp
$EndSCHEMATC
