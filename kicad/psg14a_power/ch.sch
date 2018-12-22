EESchema Schematic File Version 4
LIBS:psg14a_power-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	2560 1490 2560 2520
$Comp
L Device:C_Small C2
U 1 1 5C15D7B1
P 2560 1390
AR Path="/5C15D206/5C15D7B1" Ref="C2"  Part="1" 
AR Path="/5C1626A2/5C15D7B1" Ref="C4"  Part="1" 
AR Path="/5C1626A4/5C15D7B1" Ref="C6"  Part="1" 
AR Path="/5C1626A6/5C15D7B1" Ref="C8"  Part="1" 
AR Path="/5C1626A8/5C15D7B1" Ref="C10"  Part="1" 
F 0 "C2" H 2652 1436 50  0000 L CNN
F 1 "1uF 50V" H 2652 1345 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2560 1390 50  0001 C CNN
F 3 "~" H 2560 1390 50  0001 C CNN
	1    2560 1390
	1    0    0    -1  
$EndComp
Wire Wire Line
	2560 1290 1980 1290
Wire Wire Line
	1490 2270 1490 2520
Wire Wire Line
	1880 2280 1880 2320
Wire Wire Line
	1880 2520 1980 2520
Wire Wire Line
	1490 2520 1880 2520
Connection ~ 1880 2520
$Comp
L Device:R_Small R3
U 1 1 5C15D7C0
P 1880 2420
AR Path="/5C15D206/5C15D7C0" Ref="R3"  Part="1" 
AR Path="/5C1626A2/5C15D7C0" Ref="R6"  Part="1" 
AR Path="/5C1626A4/5C15D7C0" Ref="R9"  Part="1" 
AR Path="/5C1626A6/5C15D7C0" Ref="R12"  Part="1" 
AR Path="/5C1626A8/5C15D7C0" Ref="R15"  Part="1" 
F 0 "R3" H 1939 2466 50  0000 L CNN
F 1 "5k1" H 1939 2375 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1880 2420 50  0001 C CNN
F 3 "~" H 1880 2420 50  0001 C CNN
	1    1880 2420
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D2
U 1 1 5C15D7C7
P 1880 2180
AR Path="/5C15D206/5C15D7C7" Ref="D2"  Part="1" 
AR Path="/5C1626A2/5C15D7C7" Ref="D5"  Part="1" 
AR Path="/5C1626A4/5C15D7C7" Ref="D8"  Part="1" 
AR Path="/5C1626A6/5C15D7C7" Ref="D11"  Part="1" 
AR Path="/5C1626A8/5C15D7C7" Ref="D14"  Part="1" 
F 0 "D2" V 1900 2420 50  0000 R CNN
F 1 "green" V 1840 2410 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" V 1880 2180 50  0001 C CNN
F 3 "~" V 1880 2180 50  0001 C CNN
	1    1880 2180
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1980 2080 1880 2080
$Comp
L Device:D_Small D3
U 1 1 5C15D7CF
P 1980 2180
AR Path="/5C15D206/5C15D7CF" Ref="D3"  Part="1" 
AR Path="/5C1626A2/5C15D7CF" Ref="D6"  Part="1" 
AR Path="/5C1626A4/5C15D7CF" Ref="D9"  Part="1" 
AR Path="/5C1626A6/5C15D7CF" Ref="D12"  Part="1" 
AR Path="/5C1626A8/5C15D7CF" Ref="D15"  Part="1" 
F 0 "D3" V 1900 2300 50  0000 L CNN
F 1 "UF4007" V 1970 2290 50  0000 L CNN
F 2 "Diodes_THT:D_DO-41_SOD81_P5.08mm_Vertical_AnodeUp" V 1980 2180 50  0001 C CNN
F 3 "~" V 1980 2180 50  0001 C CNN
	1    1980 2180
	0    1    1    0   
$EndComp
Wire Wire Line
	1680 2080 1490 2080
Wire Wire Line
	1680 1680 1680 1880
Wire Wire Line
	1740 1680 1680 1680
Wire Wire Line
	1940 1680 1980 1680
Wire Wire Line
	1980 1460 1980 1680
Wire Wire Line
	1930 1460 1980 1460
Connection ~ 1680 1680
Wire Wire Line
	1680 1460 1680 1680
Wire Wire Line
	1730 1460 1680 1460
Connection ~ 1680 1460
Wire Wire Line
	1680 1290 1680 1460
Connection ~ 1980 1460
Wire Wire Line
	1980 1290 1980 1460
Wire Wire Line
	1730 1290 1680 1290
Connection ~ 1980 1290
Wire Wire Line
	1980 1290 1930 1290
$Comp
L Device:D_Zener_Small D1
U 1 1 5C15D7E7
P 1830 1290
AR Path="/5C15D206/5C15D7E7" Ref="D1"  Part="1" 
AR Path="/5C1626A2/5C15D7E7" Ref="D4"  Part="1" 
AR Path="/5C1626A4/5C15D7E7" Ref="D7"  Part="1" 
AR Path="/5C1626A6/5C15D7E7" Ref="D10"  Part="1" 
AR Path="/5C1626A8/5C15D7E7" Ref="D13"  Part="1" 
F 0 "D1" H 1540 1290 50  0000 C CNN
F 1 "BZX85_C12" H 1530 1210 50  0000 C CNN
F 2 "Diodes_THT:D_DO-41_SOD81_P5.08mm_Vertical_AnodeUp" V 1830 1290 50  0001 C CNN
F 3 "~" V 1830 1290 50  0001 C CNN
	1    1830 1290
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5C15D7EE
P 1830 1460
AR Path="/5C15D206/5C15D7EE" Ref="C1"  Part="1" 
AR Path="/5C1626A2/5C15D7EE" Ref="C3"  Part="1" 
AR Path="/5C1626A4/5C15D7EE" Ref="C5"  Part="1" 
AR Path="/5C1626A6/5C15D7EE" Ref="C7"  Part="1" 
AR Path="/5C1626A8/5C15D7EE" Ref="C9"  Part="1" 
F 0 "C1" V 1810 1170 50  0000 C CNN
F 1 "10nF" V 1890 1170 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1830 1460 50  0001 C CNN
F 3 "~" H 1830 1460 50  0001 C CNN
	1    1830 1460
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5C15D7F5
P 1840 1680
AR Path="/5C15D206/5C15D7F5" Ref="R2"  Part="1" 
AR Path="/5C1626A2/5C15D7F5" Ref="R5"  Part="1" 
AR Path="/5C1626A4/5C15D7F5" Ref="R8"  Part="1" 
AR Path="/5C1626A6/5C15D7F5" Ref="R11"  Part="1" 
AR Path="/5C1626A8/5C15D7F5" Ref="R14"  Part="1" 
F 0 "R2" V 1770 1380 50  0000 C CNN
F 1 "10K" V 1870 1380 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1840 1680 50  0001 C CNN
F 3 "~" H 1840 1680 50  0001 C CNN
	1    1840 1680
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5C15D7FC
P 1680 1980
AR Path="/5C15D206/5C15D7FC" Ref="R1"  Part="1" 
AR Path="/5C1626A2/5C15D7FC" Ref="R4"  Part="1" 
AR Path="/5C1626A4/5C15D7FC" Ref="R7"  Part="1" 
AR Path="/5C1626A6/5C15D7FC" Ref="R10"  Part="1" 
AR Path="/5C1626A8/5C15D7FC" Ref="R13"  Part="1" 
F 0 "R1" H 1739 2026 50  0000 L CNN
F 1 "10K" H 1739 1935 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1680 1980 50  0001 C CNN
F 3 "~" H 1680 1980 50  0001 C CNN
	1    1680 1980
	1    0    0    -1  
$EndComp
Connection ~ 1980 1680
Connection ~ 1980 2080
Connection ~ 1680 1880
$Comp
L Transistor_FET:IRF9540N Q1
U 1 1 5C15D806
P 1880 1880
AR Path="/5C15D206/5C15D806" Ref="Q1"  Part="1" 
AR Path="/5C1626A2/5C15D806" Ref="Q2"  Part="1" 
AR Path="/5C1626A4/5C15D806" Ref="Q3"  Part="1" 
AR Path="/5C1626A6/5C15D806" Ref="Q4"  Part="1" 
AR Path="/5C1626A8/5C15D806" Ref="Q5"  Part="1" 
F 0 "Q1" H 2085 1834 50  0000 L CNN
F 1 "IRF9Z24N" H 2085 1925 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 2080 1805 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf9540n.pdf" H 1880 1880 50  0001 L CNN
	1    1880 1880
	1    0    0    1   
$EndComp
Wire Wire Line
	1980 2280 1980 2520
Connection ~ 1980 2520
Wire Wire Line
	1980 2520 2560 2520
Text HLabel 1490 2270 0    50   Input ~ 0
GND
Text HLabel 1490 2080 0    50   Input ~ 0
In
Text HLabel 2560 1290 2    50   Input ~ 0
+24V
Wire Wire Line
	1980 2080 2420 2080
Text HLabel 2420 2080 2    50   Output ~ 0
Relay_ctl
$EndSCHEMATC
