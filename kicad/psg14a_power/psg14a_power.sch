EESchema Schematic File Version 4
LIBS:psg14a_power-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1240 1010 630  530 
U 5C15D206
F0 "ch1" 50
F1 "ch.sch" 50
F2 "GND" I L 1240 1450 50 
F3 "In" I L 1240 1320 50 
F4 "+24V" I L 1240 1170 50 
F5 "Relay_ctl" O R 1870 1270 50 
$EndSheet
$Sheet
S 3280 990  630  530 
U 5C1626A2
F0 "ch2" 50
F1 "ch.sch" 50
F2 "GND" I L 3280 1460 50 
F3 "In" I L 3280 1320 50 
F4 "+24V" I L 3280 1170 50 
F5 "Relay_ctl" O R 3910 1270 50 
$EndSheet
$Sheet
S 5800 990  630  530 
U 5C1626A4
F0 "ch3" 50
F1 "ch.sch" 50
F2 "GND" I L 5800 1460 50 
F3 "In" I L 5800 1320 50 
F4 "+24V" I L 5800 1170 50 
F5 "Relay_ctl" O R 6430 1270 50 
$EndSheet
$Sheet
S 7840 970  630  530 
U 5C1626A6
F0 "ch4" 50
F1 "ch.sch" 50
F2 "GND" I L 7840 1460 50 
F3 "In" I L 7840 1320 50 
F4 "+24V" I L 7840 1170 50 
F5 "Relay_ctl" O R 8470 1270 50 
$EndSheet
$Sheet
S 1240 2460 630  530 
U 5C1626A8
F0 "ch5" 50
F1 "ch.sch" 50
F2 "GND" I L 1240 2900 50 
F3 "In" I L 1240 2780 50 
F4 "+24V" I L 1240 2670 50 
F5 "Relay_ctl" O R 1870 2750 50 
$EndSheet
Wire Wire Line
	1240 1450 1180 1450
Wire Wire Line
	1180 1450 1180 1640
Wire Wire Line
	1180 2900 1240 2900
Wire Wire Line
	1180 1640 3230 1640
Wire Wire Line
	7800 1640 7800 1460
Wire Wire Line
	7800 1460 7840 1460
Connection ~ 1180 1640
Wire Wire Line
	1180 1640 1180 2900
Wire Wire Line
	3280 1460 3230 1460
Wire Wire Line
	3230 1460 3230 1640
Connection ~ 3230 1640
Wire Wire Line
	3230 1640 5770 1640
Wire Wire Line
	5800 1460 5770 1460
Wire Wire Line
	5770 1460 5770 1640
Connection ~ 5770 1640
Wire Wire Line
	5770 1640 7800 1640
Wire Wire Line
	1240 1170 1120 1170
Wire Wire Line
	1120 1170 1120 2670
Wire Wire Line
	1120 2670 1240 2670
Wire Wire Line
	1120 1170 1120 890 
Wire Wire Line
	1120 890  3230 890 
Wire Wire Line
	7810 890  7810 1170
Wire Wire Line
	7810 1170 7840 1170
Connection ~ 1120 1170
Wire Wire Line
	5800 1170 5770 1170
Wire Wire Line
	5770 1170 5770 890 
Connection ~ 5770 890 
Wire Wire Line
	5770 890  7810 890 
Wire Wire Line
	3280 1170 3230 1170
Wire Wire Line
	3230 1170 3230 890 
Connection ~ 3230 890 
Wire Wire Line
	3230 890  5770 890 
Text Label 3230 1640 3    50   ~ 0
GND
Text Label 3240 890  1    50   ~ 0
+24V
Text Label 1240 1320 2    50   ~ 0
In1
Text Label 3280 1320 2    50   ~ 0
In2
Text Label 5800 1320 2    50   ~ 0
In3
Text Label 7840 1320 2    50   ~ 0
In4
Text Label 1240 2780 2    50   ~ 0
In5
Text Label 1870 1270 0    50   ~ 0
Out1
Text Label 3910 1270 0    50   ~ 0
Out2
Text Label 6430 1270 0    50   ~ 0
Out3
Text Label 8470 1270 0    50   ~ 0
Out4
Text Label 1870 2750 0    50   ~ 0
Out5
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5C183449
P 1450 3770
F 0 "J1" H 1370 3445 50  0000 C CNN
F 1 "Power" H 1370 3536 50  0000 C CNN
F 2 "TerminalBlocks_Phoenix:TerminalBlock_Phoenix_MPT-2.54mm_2pol" H 1450 3770 50  0001 C CNN
F 3 "~" H 1450 3770 50  0001 C CNN
	1    1450 3770
	-1   0    0    1   
$EndComp
Text Label 1650 3770 0    50   ~ 0
GND
Text Label 1650 3670 0    50   ~ 0
+24V
$Comp
L Connector_Generic:Conn_01x06 J2
U 1 1 5C183BBE
P 2450 3490
F 0 "J2" H 2530 3482 50  0000 L CNN
F 1 "In" H 2530 3391 50  0000 L CNN
F 2 "TerminalBlocks_Phoenix:TerminalBlock_Phoenix_MPT-2.54mm_6pol" H 2450 3490 50  0001 C CNN
F 3 "~" H 2450 3490 50  0001 C CNN
	1    2450 3490
	1    0    0    -1  
$EndComp
Text Label 2250 3790 2    50   ~ 0
GND
Text Label 2250 3290 2    50   ~ 0
In1
Text Label 2250 3390 2    50   ~ 0
In2
Text Label 2250 3490 2    50   ~ 0
In3
Text Label 2250 3590 2    50   ~ 0
In4
Text Label 2250 3690 2    50   ~ 0
In5
$Comp
L Connector_Generic:Conn_01x06 J3
U 1 1 5C183D59
P 3080 3480
F 0 "J3" H 3159 3472 50  0000 L CNN
F 1 "Out" H 3159 3381 50  0000 L CNN
F 2 "TerminalBlocks_Phoenix:TerminalBlock_Phoenix_MPT-2.54mm_6pol" H 3080 3480 50  0001 C CNN
F 3 "~" H 3080 3480 50  0001 C CNN
	1    3080 3480
	1    0    0    -1  
$EndComp
Text Label 2880 3780 2    50   ~ 0
GND
Text Label 2880 3280 2    50   ~ 0
Out1
Text Label 2880 3380 2    50   ~ 0
Out2
Text Label 2880 3480 2    50   ~ 0
Out3
Text Label 2880 3580 2    50   ~ 0
Out4
Text Label 2880 3680 2    50   ~ 0
Out5
$EndSCHEMATC
