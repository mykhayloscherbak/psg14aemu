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
U 1 1 5C131219
P 1030 1420
F 0 "Q1" H 1235 1374 50  0000 L CNN
F 1 "IRF9Z24N" H 1235 1465 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 1230 1345 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf9540n.pdf" H 1030 1420 50  0001 L CNN
	1    1030 1420
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5C131220
P 830 1520
F 0 "R6" H 889 1566 50  0000 L CNN
F 1 "10K" H 889 1475 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 830 1520 50  0001 C CNN
F 3 "~" H 830 1520 50  0001 C CNN
	1    830  1520
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5C131227
P 990 1220
F 0 "R1" V 920 920 50  0000 C CNN
F 1 "10K" V 1020 920 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 990 1220 50  0001 C CNN
F 3 "~" H 990 1220 50  0001 C CNN
	1    990  1220
	0    1    1    0   
$EndComp
Connection ~ 830  1420
$Comp
L Device:C_Small C1
U 1 1 5C13122F
P 980 1000
F 0 "C1" V 960 710 50  0000 C CNN
F 1 "10nF" V 1040 710 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 980 1000 50  0001 C CNN
F 3 "~" H 980 1000 50  0001 C CNN
	1    980  1000
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener_Small D1
U 1 1 5C131236
P 980 830
F 0 "D1" H 690 830 50  0000 C CNN
F 1 "BZX85_C12" H 680 750 50  0000 C CNN
F 2 "Diodes_THT:D_DO-41_SOD81_P5.08mm_Vertical_AnodeUp" V 980 830 50  0001 C CNN
F 3 "~" V 980 830 50  0001 C CNN
	1    980  830 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1130 830  1080 830 
Wire Wire Line
	880  830  830  830 
Wire Wire Line
	1130 830  1130 1000
Wire Wire Line
	830  830  830  1000
Wire Wire Line
	880  1000 830  1000
Connection ~ 830  1000
Wire Wire Line
	830  1000 830  1220
Wire Wire Line
	1080 1000 1130 1000
Connection ~ 1130 1000
Wire Wire Line
	1130 1000 1130 1220
Wire Wire Line
	1090 1220 1130 1220
Connection ~ 1130 1220
Wire Wire Line
	890  1220 830  1220
Connection ~ 830  1220
Wire Wire Line
	830  1220 830  1420
Wire Wire Line
	830  1620 640  1620
Text Label 640  1620 2    50   ~ 0
In1
$Comp
L Device:D_Small D11
U 1 1 5C13124E
P 1130 1720
F 0 "D11" V 1050 1840 50  0000 L CNN
F 1 "UF4007" V 1120 1830 50  0000 L CNN
F 2 "Diodes_THT:D_DO-41_SOD81_P5.08mm_Vertical_AnodeUp" V 1130 1720 50  0001 C CNN
F 3 "~" V 1130 1720 50  0001 C CNN
	1    1130 1720
	0    1    1    0   
$EndComp
Wire Wire Line
	1130 1620 1030 1620
$Comp
L Device:LED_Small D6
U 1 1 5C131256
P 1030 1720
F 0 "D6" V 1050 1960 50  0000 R CNN
F 1 "green" V 990 1950 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" V 1030 1720 50  0001 C CNN
F 3 "~" V 1030 1720 50  0001 C CNN
	1    1030 1720
	0    -1   -1   0   
$EndComp
Connection ~ 1130 1620
$Comp
L Device:R_Small R11
U 1 1 5C13125E
P 1030 1960
F 0 "R11" H 1089 2006 50  0000 L CNN
F 1 "5k1" H 1089 1915 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1030 1960 50  0001 C CNN
F 3 "~" H 1030 1960 50  0001 C CNN
	1    1030 1960
	1    0    0    -1  
$EndComp
Wire Wire Line
	1030 1820 1030 1860
Text Label 1130 1620 0    50   ~ 0
Relay_Ctl1
Wire Wire Line
	640  1810 640  2060
Wire Wire Line
	640  2060 1030 2060
Connection ~ 1030 2060
Wire Wire Line
	1030 2060 1130 2060
$Comp
L Device:C_Small C6
U 1 1 5C13126B
P 1710 930
F 0 "C6" H 1802 976 50  0000 L CNN
F 1 "1uF 50V" H 1802 885 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1710 930 50  0001 C CNN
F 3 "~" H 1710 930 50  0001 C CNN
	1    1710 930 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1710 1030 1710 2060
Wire Wire Line
	1710 830  1130 830 
Connection ~ 1130 830 
Text Label 640  1810 2    50   ~ 0
gnd
Text Label 1710 830  0    50   ~ 0
+24V
Wire Wire Line
	1130 1820 1130 2060
Connection ~ 1130 2060
Wire Wire Line
	1130 2060 1710 2060
Wire Wire Line
	2830 3530 3410 3530
Connection ~ 2830 3530
Wire Wire Line
	2830 3290 2830 3530
Text Label 2340 3280 2    50   ~ 0
gnd
Wire Wire Line
	2340 3280 2340 3530
Text Label 2830 3090 0    50   ~ 0
Relay_Ctl5
Wire Wire Line
	2730 3290 2730 3330
Wire Wire Line
	2730 3530 2830 3530
Wire Wire Line
	2340 3530 2730 3530
Connection ~ 2730 3530
$Comp
L Device:R_Small R15
U 1 1 5C134C09
P 2730 3430
F 0 "R15" H 2789 3476 50  0000 L CNN
F 1 "5k1" H 2789 3385 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2730 3430 50  0001 C CNN
F 3 "~" H 2730 3430 50  0001 C CNN
	1    2730 3430
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D10
U 1 1 5C134C01
P 2730 3190
F 0 "D10" V 2750 3430 50  0000 R CNN
F 1 "green" V 2690 3420 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" V 2730 3190 50  0001 C CNN
F 3 "~" V 2730 3190 50  0001 C CNN
	1    2730 3190
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2830 3090 2730 3090
$Comp
L Device:D_Small D15
U 1 1 5C134BF9
P 2830 3190
F 0 "D15" V 2750 3310 50  0000 L CNN
F 1 "UF4007" V 2820 3300 50  0000 L CNN
F 2 "Diodes_THT:D_DO-41_SOD81_P5.08mm_Vertical_AnodeUp" V 2830 3190 50  0001 C CNN
F 3 "~" V 2830 3190 50  0001 C CNN
	1    2830 3190
	0    1    1    0   
$EndComp
Text Label 2340 3090 2    50   ~ 0
In5
Wire Wire Line
	2530 3090 2340 3090
Wire Wire Line
	2530 2690 2530 2890
Wire Wire Line
	2590 2690 2530 2690
Wire Wire Line
	2790 2690 2830 2690
Wire Wire Line
	2830 2470 2830 2690
Wire Wire Line
	2780 2470 2830 2470
Connection ~ 2530 2690
Wire Wire Line
	2530 2470 2530 2690
Wire Wire Line
	2580 2470 2530 2470
Connection ~ 2530 2470
Wire Wire Line
	2530 2300 2530 2470
Connection ~ 2830 2470
Wire Wire Line
	2830 2300 2830 2470
Wire Wire Line
	2580 2300 2530 2300
Wire Wire Line
	2830 2300 2780 2300
$Comp
L Device:D_Zener_Small D5
U 1 1 5C134BE1
P 2680 2300
F 0 "D5" H 2390 2300 50  0000 C CNN
F 1 "BZX85_C12" H 2380 2220 50  0000 C CNN
F 2 "Diodes_THT:D_DO-41_SOD81_P5.08mm_Vertical_AnodeUp" V 2680 2300 50  0001 C CNN
F 3 "~" V 2680 2300 50  0001 C CNN
	1    2680 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5C134BDA
P 2680 2470
F 0 "C5" V 2660 2180 50  0000 C CNN
F 1 "10nF" V 2740 2180 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2680 2470 50  0001 C CNN
F 3 "~" H 2680 2470 50  0001 C CNN
	1    2680 2470
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5C134BD2
P 2690 2690
F 0 "R5" V 2620 2390 50  0000 C CNN
F 1 "10K" V 2720 2390 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2690 2690 50  0001 C CNN
F 3 "~" H 2690 2690 50  0001 C CNN
	1    2690 2690
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R10
U 1 1 5C134BCB
P 2530 2990
F 0 "R10" H 2589 3036 50  0000 L CNN
F 1 "10K" H 2589 2945 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2530 2990 50  0001 C CNN
F 3 "~" H 2530 2990 50  0001 C CNN
	1    2530 2990
	1    0    0    -1  
$EndComp
Connection ~ 2830 2690
Connection ~ 2830 3090
Connection ~ 2530 2890
$Comp
L Transistor_FET:IRF9540N Q5
U 1 1 5C134BC4
P 2730 2890
F 0 "Q5" H 2935 2844 50  0000 L CNN
F 1 "IRF9Z24N" H 2935 2935 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 2930 2815 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf9540n.pdf" H 2730 2890 50  0001 L CNN
	1    2730 2890
	1    0    0    1   
$EndComp
Wire Wire Line
	1170 3540 1750 3540
Connection ~ 1170 3540
Wire Wire Line
	1170 3300 1170 3540
Text Label 1750 2310 0    50   ~ 0
+24V
Text Label 680  3290 2    50   ~ 0
gnd
Wire Wire Line
	1750 2310 1170 2310
Wire Wire Line
	1750 2510 1750 3540
$Comp
L Device:C_Small C9
U 1 1 5C1328D0
P 1750 2410
F 0 "C9" H 1842 2456 50  0000 L CNN
F 1 "1uF 50V" H 1842 2365 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1750 2410 50  0001 C CNN
F 3 "~" H 1750 2410 50  0001 C CNN
	1    1750 2410
	1    0    0    -1  
$EndComp
Wire Wire Line
	680  3290 680  3540
Text Label 1170 3100 0    50   ~ 0
Relay_Ctl4
Wire Wire Line
	1070 3300 1070 3340
Wire Wire Line
	1070 3540 1170 3540
Wire Wire Line
	680  3540 1070 3540
Connection ~ 1070 3540
$Comp
L Device:R_Small R14
U 1 1 5C1328C3
P 1070 3440
F 0 "R14" H 1129 3486 50  0000 L CNN
F 1 "5k1" H 1129 3395 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1070 3440 50  0001 C CNN
F 3 "~" H 1070 3440 50  0001 C CNN
	1    1070 3440
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D9
U 1 1 5C1328BB
P 1070 3200
F 0 "D9" V 1090 3440 50  0000 R CNN
F 1 "green" V 1030 3430 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" V 1070 3200 50  0001 C CNN
F 3 "~" V 1070 3200 50  0001 C CNN
	1    1070 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1170 3100 1070 3100
$Comp
L Device:D_Small D14
U 1 1 5C1328B3
P 1170 3200
F 0 "D14" V 1090 3320 50  0000 L CNN
F 1 "UF4007" V 1160 3310 50  0000 L CNN
F 2 "Diodes_THT:D_DO-41_SOD81_P5.08mm_Vertical_AnodeUp" V 1170 3200 50  0001 C CNN
F 3 "~" V 1170 3200 50  0001 C CNN
	1    1170 3200
	0    1    1    0   
$EndComp
Text Label 680  3100 2    50   ~ 0
In4
Wire Wire Line
	870  3100 680  3100
Wire Wire Line
	870  2700 870  2900
Wire Wire Line
	930  2700 870  2700
Wire Wire Line
	1130 2700 1170 2700
Wire Wire Line
	1170 2480 1170 2700
Wire Wire Line
	1120 2480 1170 2480
Connection ~ 870  2700
Wire Wire Line
	870  2480 870  2700
Wire Wire Line
	920  2480 870  2480
Connection ~ 870  2480
Wire Wire Line
	870  2310 870  2480
Connection ~ 1170 2480
Wire Wire Line
	1170 2310 1170 2480
Wire Wire Line
	920  2310 870  2310
Connection ~ 1170 2310
Wire Wire Line
	1170 2310 1120 2310
$Comp
L Device:D_Zener_Small D4
U 1 1 5C13289B
P 1020 2310
F 0 "D4" H 730 2310 50  0000 C CNN
F 1 "BZX85_C12" H 720 2230 50  0000 C CNN
F 2 "Diodes_THT:D_DO-41_SOD81_P5.08mm_Vertical_AnodeUp" V 1020 2310 50  0001 C CNN
F 3 "~" V 1020 2310 50  0001 C CNN
	1    1020 2310
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5C132894
P 1020 2480
F 0 "C4" V 1000 2190 50  0000 C CNN
F 1 "10nF" V 1080 2190 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1020 2480 50  0001 C CNN
F 3 "~" H 1020 2480 50  0001 C CNN
	1    1020 2480
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5C13288C
P 1030 2700
F 0 "R4" V 960 2400 50  0000 C CNN
F 1 "10K" V 1060 2400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1030 2700 50  0001 C CNN
F 3 "~" H 1030 2700 50  0001 C CNN
	1    1030 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R9
U 1 1 5C132885
P 870 3000
F 0 "R9" H 929 3046 50  0000 L CNN
F 1 "10K" H 929 2955 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 870 3000 50  0001 C CNN
F 3 "~" H 870 3000 50  0001 C CNN
	1    870  3000
	1    0    0    -1  
$EndComp
Connection ~ 1170 2700
Connection ~ 1170 3100
Connection ~ 870  2900
$Comp
L Transistor_FET:IRF9540N Q4
U 1 1 5C13287E
P 1070 2900
F 0 "Q4" H 1275 2854 50  0000 L CNN
F 1 "IRF9Z24N" H 1275 2945 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 1270 2825 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf9540n.pdf" H 1070 2900 50  0001 L CNN
	1    1070 2900
	1    0    0    1   
$EndComp
Text Label 2060 1820 2    50   ~ 0
gnd
Wire Wire Line
	2060 1820 2060 2070
Text Label 2060 1630 2    50   ~ 0
In2
Text Label 4810 840  0    50   ~ 0
+24V
Wire Wire Line
	4810 1040 4810 2070
$Comp
L Device:C_Small C8
U 1 1 5C12FC94
P 4810 940
F 0 "C8" H 4902 986 50  0000 L CNN
F 1 "1uF 50V" H 4902 895 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4810 940 50  0001 C CNN
F 3 "~" H 4810 940 50  0001 C CNN
	1    4810 940 
	1    0    0    -1  
$EndComp
Text Label 3410 2300 0    50   ~ 0
+24V
Connection ~ 2830 2300
Wire Wire Line
	3410 2300 2830 2300
Wire Wire Line
	3410 2500 3410 3530
$Comp
L Device:C_Small C10
U 1 1 5C134C16
P 3410 2400
F 0 "C10" H 3502 2446 50  0000 L CNN
F 1 "1uF 50V" H 3502 2355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3410 2400 50  0001 C CNN
F 3 "~" H 3410 2400 50  0001 C CNN
	1    3410 2400
	1    0    0    -1  
$EndComp
Text Label 3740 1820 2    50   ~ 0
gnd
Wire Wire Line
	4810 840  4230 840 
Wire Wire Line
	3740 1820 3740 2070
Text Label 4230 1630 0    50   ~ 0
Relay_Ctl3
Wire Wire Line
	4130 1830 4130 1870
Wire Wire Line
	4130 2070 4230 2070
Wire Wire Line
	3740 2070 4130 2070
Connection ~ 4130 2070
$Comp
L Device:R_Small R13
U 1 1 5C12FC88
P 4130 1970
F 0 "R13" H 4189 2016 50  0000 L CNN
F 1 "5k1" H 4189 1925 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 4130 1970 50  0001 C CNN
F 3 "~" H 4130 1970 50  0001 C CNN
	1    4130 1970
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D8
U 1 1 5C12FC81
P 4130 1730
F 0 "D8" V 4150 1970 50  0000 R CNN
F 1 "green" V 4090 1960 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" V 4130 1730 50  0001 C CNN
F 3 "~" V 4130 1730 50  0001 C CNN
	1    4130 1730
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4230 1630 4130 1630
$Comp
L Device:D_Small D13
U 1 1 5C12FC7A
P 4230 1730
F 0 "D13" V 4150 1850 50  0000 L CNN
F 1 "UF4007" V 4220 1840 50  0000 L CNN
F 2 "Diodes_THT:D_DO-41_SOD81_P5.08mm_Vertical_AnodeUp" V 4230 1730 50  0001 C CNN
F 3 "~" V 4230 1730 50  0001 C CNN
	1    4230 1730
	0    1    1    0   
$EndComp
Text Label 3740 1630 2    50   ~ 0
In3
Wire Wire Line
	3930 1630 3740 1630
Wire Wire Line
	3930 1230 3930 1430
Wire Wire Line
	3990 1230 3930 1230
Wire Wire Line
	4190 1230 4230 1230
Wire Wire Line
	4230 1010 4230 1230
Wire Wire Line
	4180 1010 4230 1010
Connection ~ 3930 1230
Wire Wire Line
	3930 1010 3930 1230
Wire Wire Line
	3980 1010 3930 1010
Connection ~ 3930 1010
Wire Wire Line
	3930 840  3930 1010
Connection ~ 4230 1010
Wire Wire Line
	4230 840  4230 1010
Wire Wire Line
	3980 840  3930 840 
Connection ~ 4230 840 
Wire Wire Line
	4230 840  4180 840 
$Comp
L Device:D_Zener_Small D3
U 1 1 5C12FC63
P 4080 840
F 0 "D3" H 3790 840 50  0000 C CNN
F 1 "BZX85_C12" H 3780 760 50  0000 C CNN
F 2 "Diodes_THT:D_DO-41_SOD81_P5.08mm_Vertical_AnodeUp" V 4080 840 50  0001 C CNN
F 3 "~" V 4080 840 50  0001 C CNN
	1    4080 840 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5C12FC5D
P 4080 1010
F 0 "C3" V 4060 720 50  0000 C CNN
F 1 "10nF" V 4140 720 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4080 1010 50  0001 C CNN
F 3 "~" H 4080 1010 50  0001 C CNN
	1    4080 1010
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5C12FC56
P 4090 1230
F 0 "R3" V 4020 930 50  0000 C CNN
F 1 "10K" V 4120 930 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 4090 1230 50  0001 C CNN
F 3 "~" H 4090 1230 50  0001 C CNN
	1    4090 1230
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R8
U 1 1 5C12FC50
P 3930 1530
F 0 "R8" H 3989 1576 50  0000 L CNN
F 1 "10K" H 3989 1485 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 3930 1530 50  0001 C CNN
F 3 "~" H 3930 1530 50  0001 C CNN
	1    3930 1530
	1    0    0    -1  
$EndComp
Connection ~ 4230 1230
Connection ~ 4230 1630
Connection ~ 3930 1430
$Comp
L Transistor_FET:IRF9540N Q3
U 1 1 5C12FC4A
P 4130 1430
F 0 "Q3" H 4335 1384 50  0000 L CNN
F 1 "IRF9Z24N" H 4335 1475 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 4330 1355 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf9540n.pdf" H 4130 1430 50  0001 L CNN
	1    4130 1430
	1    0    0    1   
$EndComp
Text Label 3130 840  0    50   ~ 0
+24V
Wire Wire Line
	3130 840  2550 840 
$Comp
L Device:C_Small C7
U 1 1 5C0EFE1A
P 3130 940
F 0 "C7" H 3222 986 50  0000 L CNN
F 1 "1uF 50V" H 3222 895 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3130 940 50  0001 C CNN
F 3 "~" H 3130 940 50  0001 C CNN
	1    3130 940 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1010 2550 1010
Wire Wire Line
	2300 1010 2250 1010
Wire Wire Line
	2250 840  2250 1010
Wire Wire Line
	2550 840  2550 1010
Wire Wire Line
	2300 840  2250 840 
Connection ~ 2550 840 
Wire Wire Line
	2550 840  2500 840 
$Comp
L Device:D_Zener_Small D2
U 1 1 5C02A910
P 2400 840
F 0 "D2" H 2110 840 50  0000 C CNN
F 1 "BZX85_C12" H 2100 760 50  0000 C CNN
F 2 "Diodes_THT:D_DO-41_SOD81_P5.08mm_Vertical_AnodeUp" V 2400 840 50  0001 C CNN
F 3 "~" V 2400 840 50  0001 C CNN
	1    2400 840 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5C02A3CA
P 2400 1010
F 0 "C2" V 2380 720 50  0000 C CNN
F 1 "10nF" V 2460 720 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2400 1010 50  0001 C CNN
F 3 "~" H 2400 1010 50  0001 C CNN
	1    2400 1010
	0    1    1    0   
$EndComp
Wire Wire Line
	3130 1040 3130 2070
Text Label 2550 1630 0    50   ~ 0
Relay_Ctl2
Wire Wire Line
	2450 1830 2450 1870
Wire Wire Line
	2450 2070 2550 2070
Wire Wire Line
	2060 2070 2450 2070
Connection ~ 2450 2070
$Comp
L Device:R_Small R12
U 1 1 5C0EF5C4
P 2450 1970
F 0 "R12" H 2509 2016 50  0000 L CNN
F 1 "5k1" H 2509 1925 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2450 1970 50  0001 C CNN
F 3 "~" H 2450 1970 50  0001 C CNN
	1    2450 1970
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D7
U 1 1 5C0EF3AD
P 2450 1730
F 0 "D7" V 2470 1970 50  0000 R CNN
F 1 "green" V 2410 1960 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" V 2450 1730 50  0001 C CNN
F 3 "~" V 2450 1730 50  0001 C CNN
	1    2450 1730
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2550 1630 2450 1630
$Comp
L Device:D_Small D12
U 1 1 5C0EF074
P 2550 1730
F 0 "D12" V 2470 1850 50  0000 L CNN
F 1 "UF4007" V 2540 1840 50  0000 L CNN
F 2 "Diodes_THT:D_DO-41_SOD81_P5.08mm_Vertical_AnodeUp" V 2550 1730 50  0001 C CNN
F 3 "~" V 2550 1730 50  0001 C CNN
	1    2550 1730
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 1630 2060 1630
Wire Wire Line
	2250 1230 2250 1430
Wire Wire Line
	2310 1230 2250 1230
Wire Wire Line
	2510 1230 2550 1230
Connection ~ 2550 1010
Wire Wire Line
	2550 1010 2550 1230
Connection ~ 2250 1230
Connection ~ 2250 1010
Wire Wire Line
	2250 1010 2250 1230
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
$Comp
L Device:R_Small R7
U 1 1 5C02A204
P 2250 1530
F 0 "R7" H 2309 1576 50  0000 L CNN
F 1 "10K" H 2309 1485 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2250 1530 50  0001 C CNN
F 3 "~" H 2250 1530 50  0001 C CNN
	1    2250 1530
	1    0    0    -1  
$EndComp
Connection ~ 2550 1230
Connection ~ 2550 1630
Connection ~ 2250 1430
$Comp
L Transistor_FET:IRF9540N Q2
U 1 1 5C02A0F2
P 2450 1430
F 0 "Q2" H 2655 1384 50  0000 L CNN
F 1 "IRF9Z24N" H 2655 1475 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 2650 1355 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf9540n.pdf" H 2450 1430 50  0001 L CNN
	1    2450 1430
	1    0    0    1   
$EndComp
Wire Wire Line
	2550 1830 2550 2070
Connection ~ 2550 2070
Wire Wire Line
	2550 2070 3130 2070
Wire Wire Line
	4230 1830 4230 2070
Connection ~ 4230 2070
Wire Wire Line
	4230 2070 4810 2070
$EndSCHEMATC
