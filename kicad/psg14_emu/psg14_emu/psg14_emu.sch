EESchema Schematic File Version 4
LIBS:psg14_emu-cache
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
L MCU_ST_STM32F0:STM32F030F4Px U1
U 1 1 5BC20D04
P 5725 2880
F 0 "U1" H 5725 1994 50  0000 C CNN
F 1 "STM32F030F4Px" H 5725 1903 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 5325 2180 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00088500.pdf" H 5725 2880 50  0001 C CNN
	1    5725 2880
	1    0    0    -1  
$EndComp
NoConn ~ 5225 3180
NoConn ~ 5225 3280
$Comp
L power:-BATT #PWR02
U 1 1 5BC20F55
P 4450 2620
F 0 "#PWR02" H 4450 2470 50  0001 C CNN
F 1 "-BATT" H 4465 2793 50  0000 C CNN
F 2 "" H 4450 2620 50  0001 C CNN
F 3 "" H 4450 2620 50  0001 C CNN
	1    4450 2620
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR01
U 1 1 5BC20FA4
P 4435 2290
F 0 "#PWR01" H 4435 2140 50  0001 C CNN
F 1 "+BATT" H 4450 2463 50  0000 C CNN
F 2 "" H 4435 2290 50  0001 C CNN
F 3 "" H 4435 2290 50  0001 C CNN
	1    4435 2290
	1    0    0    -1  
$EndComp
Text Label 4450 2620 0    50   ~ 0
GND
Text Label 4435 2290 0    50   ~ 0
+3V
Text Label 5825 2180 0    50   ~ 0
+3V
Text Label 5725 3680 0    50   ~ 0
GND
Wire Wire Line
	5725 2180 5825 2180
$Comp
L Device:R_Small R2
U 1 1 5BC2114C
P 5225 2280
F 0 "R2" H 4985 2360 50  0000 L CNN
F 1 "10K" H 4950 2290 50  0000 L CNN
F 2 "" H 5225 2280 50  0001 C CNN
F 3 "~" H 5225 2280 50  0001 C CNN
	1    5225 2280
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5BC21236
P 5125 2580
F 0 "R1" V 5195 2585 50  0000 C CNN
F 1 "10K" V 5015 2580 50  0000 C CNN
F 2 "" H 5125 2580 50  0001 C CNN
F 3 "~" H 5125 2580 50  0001 C CNN
	1    5125 2580
	0    -1   -1   0   
$EndComp
Text Label 5025 2580 2    50   ~ 0
GND
Text Label 5225 2380 2    50   ~ 0
NRST
Wire Wire Line
	5225 2180 5725 2180
Connection ~ 5725 2180
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5BC2176E
P 4325 3115
F 0 "J?" H 4245 2790 50  0000 C CNN
F 1 "Battery" H 4245 2881 50  0000 C CNN
F 2 "" H 4325 3115 50  0001 C CNN
F 3 "~" H 4325 3115 50  0001 C CNN
	1    4325 3115
	-1   0    0    1   
$EndComp
Text Label 4525 3015 0    50   ~ 0
+3V
Text Label 4525 3115 0    50   ~ 0
GND
$Comp
L Isolator:LTV-847S U?
U 1 1 5BC26E11
P 7160 2665
F 0 "U?" H 7160 2990 50  0000 C CNN
F 1 "LTV-847S" H 7160 2899 50  0000 C CNN
F 2 "Package_DIP:SMDIP-16_W9.53mm" H 7160 2365 50  0001 C CNN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 6560 3115 50  0001 C CNN
	1    7160 2665
	1    0    0    -1  
$EndComp
$EndSCHEMATC
