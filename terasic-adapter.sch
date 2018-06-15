EESchema Schematic File Version 4
LIBS:terasic-adapter-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Bus Spider Terasic Adapter"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J1
U 1 1 5B1EBC32
P 2100 2850
F 0 "J1" H 2150 1625 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 2150 1716 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x20_P2.54mm_Vertical" H 2100 2850 50  0001 C CNN
F 3 "~" H 2100 2850 50  0001 C CNN
	1    2100 2850
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J2
U 1 1 5B1EBDC7
P 4100 1700
F 0 "J2" H 4150 2117 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 4150 2026 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 4100 1700 50  0001 C CNN
F 3 "~" H 4100 1700 50  0001 C CNN
	1    4100 1700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J3
U 1 1 5B1EBE3F
P 4100 2750
F 0 "J3" H 4150 3167 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 4150 3076 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 4100 2750 50  0001 C CNN
F 3 "~" H 4100 2750 50  0001 C CNN
	1    4100 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J4
U 1 1 5B1EBE86
P 4100 3800
F 0 "J4" H 4150 4217 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 4150 4126 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 4100 3800 50  0001 C CNN
F 3 "~" H 4100 3800 50  0001 C CNN
	1    4100 3800
	1    0    0    -1  
$EndComp
Text Label 2300 1850 0    50   ~ 0
GPIO1
Text Label 2300 1950 0    50   ~ 0
GPIO3
Text Label 2300 2050 0    50   ~ 0
GPIO5
Text Label 2300 2150 0    50   ~ 0
GPIO7
Text Label 2300 2250 0    50   ~ 0
GPIO9
Text Label 2300 2450 0    50   ~ 0
GPIO11
Text Label 2300 2550 0    50   ~ 0
GPIO13
Text Label 2300 2650 0    50   ~ 0
GPIO15
Text Label 2300 2750 0    50   ~ 0
GPIO17
Text Label 2300 2850 0    50   ~ 0
GPIO19
Text Label 2300 2950 0    50   ~ 0
GPIO21
Text Label 2300 3050 0    50   ~ 0
GPIO23
Text Label 2300 3150 0    50   ~ 0
GPIO25
Text Label 2300 3350 0    50   ~ 0
GPIO27
Text Label 2300 3450 0    50   ~ 0
GPIO29
Text Label 2300 3550 0    50   ~ 0
GPIO31
Text Label 2300 3650 0    50   ~ 0
GPIO33
Text Label 2300 3750 0    50   ~ 0
GPIO35
Text Label 1800 1850 2    50   ~ 0
GPIO0
Text Label 1800 1950 2    50   ~ 0
GPIO2
Text Label 1800 2050 2    50   ~ 0
GPIO4
Text Label 1800 2150 2    50   ~ 0
GPIO6
Text Label 1800 2250 2    50   ~ 0
GPIO8
Text Label 1800 2450 2    50   ~ 0
GPIO10
Text Label 1800 2550 2    50   ~ 0
GPIO12
Text Label 1800 2650 2    50   ~ 0
GPIO14
Text Label 1800 2750 2    50   ~ 0
GPIO16
Text Label 1800 2850 2    50   ~ 0
GPIO18
Text Label 1800 2950 2    50   ~ 0
GPIO20
Text Label 1800 3050 2    50   ~ 0
GPIO22
Text Label 1800 3150 2    50   ~ 0
GPIO24
Text Label 1800 3350 2    50   ~ 0
GPIO26
Text Label 1800 3450 2    50   ~ 0
GPIO28
Text Label 1800 3550 2    50   ~ 0
GPIO30
Text Label 1800 3650 2    50   ~ 0
GPIO32
Text Label 1800 3750 2    50   ~ 0
GPIO34
Wire Wire Line
	3550 1500 3900 1500
Text Label 3550 1500 2    50   ~ 0
PWR3V3
Wire Wire Line
	3550 1600 3900 1600
Wire Wire Line
	4400 1600 4750 1600
Wire Wire Line
	3200 1700 3900 1700
Wire Wire Line
	4400 1700 5050 1700
Wire Wire Line
	3550 1800 3900 1800
Wire Wire Line
	4400 1800 4750 1800
Wire Wire Line
	4400 1900 4750 1900
Wire Wire Line
	3550 1900 3900 1900
Text Label 3550 1600 2    50   ~ 0
GPIO1
Text Label 3550 1900 2    50   ~ 0
GPIO9
Text Label 3550 1800 2    50   ~ 0
GPIO7
Text Label 4750 1600 0    50   ~ 0
GPIO3
Text Label 4750 1900 0    50   ~ 0
GPIO8
Text Label 4750 1800 0    50   ~ 0
GPIO6
Wire Wire Line
	3550 2550 3900 2550
Text Label 3550 2550 2    50   ~ 0
PWR3V3
Wire Wire Line
	3550 2650 3900 2650
Wire Wire Line
	3550 2750 3900 2750
Wire Wire Line
	3550 2850 3900 2850
Wire Wire Line
	4400 2650 4750 2650
Wire Wire Line
	4400 2750 4750 2750
Wire Wire Line
	4400 2850 4750 2850
Wire Wire Line
	4400 2950 4750 2950
Wire Wire Line
	3550 2950 3900 2950
Text Label 4750 2650 0    50   ~ 0
GPIO11
Text Label 3550 2650 2    50   ~ 0
GPIO10
Wire Wire Line
	4400 3700 4750 3700
Wire Wire Line
	4400 3800 4750 3800
Wire Wire Line
	4400 3900 4750 3900
Wire Wire Line
	3550 3600 3900 3600
Wire Wire Line
	3550 3700 3900 3700
Wire Wire Line
	3550 3800 3900 3800
Wire Wire Line
	3550 3900 3900 3900
Wire Wire Line
	3550 4000 3900 4000
Text Label 3550 3600 2    50   ~ 0
GPIO21
Text Label 4750 2750 0    50   ~ 0
GPIO13
Text Label 4750 2850 0    50   ~ 0
GPIO15
Text Label 3550 2750 2    50   ~ 0
GPIO12
Text Label 3550 2850 2    50   ~ 0
GPIO14
Text Label 3550 2950 2    50   ~ 0
GPIO16
Text Label 4750 2950 0    50   ~ 0
GPIO17
Text Label 3550 3700 2    50   ~ 0
GPIO20
Text Label 3550 3800 2    50   ~ 0
GPIO22
Text Label 3550 4000 2    50   ~ 0
GPIO24
Text Label 4750 3800 0    50   ~ 0
GPIO23
$Comp
L Regulator_Linear:TPS793333-EP U1
U 1 1 5B1EF3CB
P 7650 2100
F 0 "U1" H 7650 2442 50  0000 C CNN
F 1 "TPS793333-EP" H 7650 2351 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 7650 2425 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tps79333-ep.pdf" H 7650 2150 50  0001 C CNN
	1    7650 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5B1EF57A
P 6700 2500
F 0 "C1" H 6815 2546 50  0000 L CNN
F 1 "0.1uF" H 6815 2455 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6738 2350 50  0001 C CNN
F 3 "~" H 6700 2500 50  0001 C CNN
	1    6700 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5B1EF5EE
P 8100 2500
F 0 "C2" H 8215 2546 50  0000 L CNN
F 1 "10nF" H 8215 2455 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 8138 2350 50  0001 C CNN
F 3 "~" H 8100 2500 50  0001 C CNN
	1    8100 2500
	1    0    0    -1  
$EndComp
Text Label 6500 2100 2    50   ~ 0
GPIO19
$Comp
L Device:R R1
U 1 1 5B1EF811
P 7150 2500
F 0 "R1" H 7220 2546 50  0000 L CNN
F 1 "4.7K" H 7220 2455 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 7080 2500 50  0001 C CNN
F 3 "~" H 7150 2500 50  0001 C CNN
	1    7150 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2350 7150 2100
Wire Wire Line
	7150 2650 7150 2900
Wire Wire Line
	7650 2900 7650 2400
Wire Wire Line
	7650 3000 7650 2900
Connection ~ 7650 2900
Wire Wire Line
	7150 2100 6500 2100
Connection ~ 7150 2100
Wire Wire Line
	8100 2350 8100 2100
Wire Wire Line
	8100 2100 7950 2100
Wire Wire Line
	8100 2650 8100 2900
Wire Wire Line
	8100 2900 7650 2900
Text Label 9200 2000 0    50   ~ 0
PWR3V3
$Comp
L Device:C C3
U 1 1 5B1F69BB
P 8550 2500
F 0 "C3" H 8665 2546 50  0000 L CNN
F 1 "10uF" H 8665 2455 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 8588 2350 50  0001 C CNN
F 3 "~" H 8550 2500 50  0001 C CNN
	1    8550 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 2000 8550 2000
Wire Wire Line
	8550 2000 8550 2350
Wire Wire Line
	8550 2650 8550 2900
Wire Wire Line
	8550 2900 8100 2900
Connection ~ 8100 2900
$Comp
L 4xxx:4066 U2
U 1 1 5B1F83B2
P 7850 4000
F 0 "U2" H 7850 3828 50  0000 C CNN
F 1 "4066" H 7850 3737 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 7850 4000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 7850 4000 50  0001 C CNN
	1    7850 4000
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4066 U2
U 2 1 5B1FEF3C
P 7850 4800
F 0 "U2" H 7850 4628 50  0000 C CNN
F 1 "4066" H 7850 4537 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 7850 4800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 7850 4800 50  0001 C CNN
	2    7850 4800
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4066 U2
U 5 1 5B1FF0A6
P 6650 4650
F 0 "U2" V 6400 4600 50  0000 L CNN
F 1 "4066" V 6900 4550 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6650 4650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 6650 4650 50  0001 C CNN
	5    6650 4650
	0    1    1    0   
$EndComp
Text Label 7850 4500 2    50   ~ 0
GPIO18
Text Label 7850 3700 2    50   ~ 0
GPIO18
Text Label 7550 4000 2    50   ~ 0
SCL
Text Label 7550 4800 2    50   ~ 0
SDA
$Comp
L Device:R R3
U 1 1 5B2014CB
P 8300 3850
F 0 "R3" H 8370 3896 50  0000 L CNN
F 1 "10K" H 8370 3805 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 8230 3850 50  0001 C CNN
F 3 "~" H 8300 3850 50  0001 C CNN
	1    8300 3850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 5B20781F
P 8300 4650
F 0 "R4" H 8370 4696 50  0000 L CNN
F 1 "10K" H 8370 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 8230 4650 50  0001 C CNN
F 3 "~" H 8300 4650 50  0001 C CNN
	1    8300 4650
	-1   0    0    1   
$EndComp
Text Label 8300 4500 2    50   ~ 0
PWR3V3
Wire Wire Line
	8150 4800 8300 4800
Wire Wire Line
	8150 4000 8300 4000
Text Label 8300 3700 2    50   ~ 0
PWR3V3
Text Notes 2350 1550 2    100  ~ 0
TERASIC
Text Notes 4350 1200 2    100  ~ 0
UEXT
Text Notes 4300 2250 2    100  ~ 0
DIO
Text Notes 4300 3300 2    100  ~ 0
JTAG
$Comp
L Device:R R2
U 1 1 5B213D8D
P 9000 2650
F 0 "R2" H 9070 2696 50  0000 L CNN
F 1 "1.1K" H 9070 2605 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 8930 2650 50  0001 C CNN
F 3 "~" H 9000 2650 50  0001 C CNN
	1    9000 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5B213EA3
P 9000 2250
F 0 "D1" H 8992 1995 50  0000 C CNN
F 1 "LED" H 8992 2086 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 9000 2250 50  0001 C CNN
F 3 "~" H 9000 2250 50  0001 C CNN
	1    9000 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9000 2800 9000 2900
Wire Wire Line
	9000 2900 8550 2900
Connection ~ 8550 2900
Connection ~ 8550 2000
Text Notes 3850 1500 2    50   ~ 0
3.3V
Text Notes 3850 1600 2    50   ~ 0
TXD
Text Notes 3850 1700 2    50   ~ 0
SCL
Text Notes 3850 1800 2    50   ~ 0
MISO
Text Notes 3850 1900 2    50   ~ 0
SCK
Text Notes 4450 1500 0    50   ~ 0
GND
Text Notes 4450 1600 0    50   ~ 0
RXD
Text Notes 4450 1700 0    50   ~ 0
SDA
Text Notes 4450 1800 0    50   ~ 0
MOSI
Text Notes 4450 1900 0    50   ~ 0
SSEL
Text Notes 4450 2550 0    50   ~ 0
GND
Text Notes 3850 2550 2    50   ~ 0
3.3V
Text Notes 3850 2650 2    50   ~ 0
D0
Text Notes 3850 2750 2    50   ~ 0
D2
Text Notes 3850 2850 2    50   ~ 0
D4
Text Notes 3850 2950 2    50   ~ 0
D6
Text Notes 4450 2650 0    50   ~ 0
D1
Text Notes 4450 2750 0    50   ~ 0
D3
Text Notes 4450 2850 0    50   ~ 0
D5
Text Notes 4450 2950 0    50   ~ 0
D7
Text Notes 4450 3600 0    50   ~ 0
GND
Text Notes 3850 3600 2    50   ~ 0
TCK
Text Notes 3850 3700 2    50   ~ 0
TDO
Text Notes 3850 3800 2    50   ~ 0
TMS
Text Notes 3850 4000 2    50   ~ 0
TDI
Text Notes 4450 4000 0    50   ~ 0
GND
Text Notes 4450 3700 0    50   ~ 0
VREF
Text Notes 3850 3900 2    50   ~ 0
VCC
Text Notes 4450 3800 0    50   ~ 0
NSRST
Text Notes 4450 3900 0    50   ~ 0
NTRST
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J5
U 1 1 5B245B99
P 2500 5200
F 0 "J5" H 2550 5617 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 2550 5526 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 2500 5200 50  0001 C CNN
F 3 "~" H 2500 5200 50  0001 C CNN
	1    2500 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 5000 2300 5000
Wire Wire Line
	1950 5100 2300 5100
Wire Wire Line
	2800 5100 3150 5100
Wire Wire Line
	1950 5200 2300 5200
Wire Wire Line
	2800 5200 3150 5200
Wire Wire Line
	1950 5300 2300 5300
Wire Wire Line
	2800 5300 3150 5300
Wire Wire Line
	2800 5400 3150 5400
Wire Wire Line
	1950 5400 2300 5400
Text Label 3150 5400 0    50   ~ 0
GPIO32
Text Label 3150 5300 0    50   ~ 0
GPIO30
Text Label 3150 5200 0    50   ~ 0
GPIO28
Text Label 3150 5100 0    50   ~ 0
GPIO26
Text Label 1950 5400 2    50   ~ 0
GPIO33
Text Label 1950 5300 2    50   ~ 0
GPIO31
Text Label 1950 5200 2    50   ~ 0
GPIO29
Text Label 1950 5100 2    50   ~ 0
GPIO27
Text Notes 2850 4700 2    100  ~ 0
UEXTin
Text Notes 2250 5000 2    50   ~ 0
3.3V
Text Notes 2250 5100 2    50   ~ 0
TXD
Text Notes 2250 5200 2    50   ~ 0
SCL
Text Notes 2250 5300 2    50   ~ 0
MISO
Text Notes 2250 5400 2    50   ~ 0
SCK
Text Notes 2850 5000 0    50   ~ 0
GND
Text Notes 2850 5100 0    50   ~ 0
RXD
Text Notes 2850 5200 0    50   ~ 0
SDA
Text Notes 2850 5300 0    50   ~ 0
MOSI
Text Notes 2850 5400 0    50   ~ 0
SSEL
Text Label 3200 1700 2    50   ~ 0
SCL
Text Label 5050 1700 0    50   ~ 0
SDA
Text Label 4750 3900 0    50   ~ 0
GPIO25
Text Label 4750 1700 0    50   ~ 0
GPIO4
Text Label 3550 1700 2    50   ~ 0
GPIO5
$Comp
L 4xxx:4066 U2
U 3 1 5B320F47
P 9100 4000
F 0 "U2" H 9100 3828 50  0000 C CNN
F 1 "4066" H 9100 3737 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 9100 4000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 9100 4000 50  0001 C CNN
	3    9100 4000
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4066 U2
U 4 1 5B320FC9
P 9100 4800
F 0 "U2" H 9100 4628 50  0000 C CNN
F 1 "4066" H 9100 4537 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 9100 4800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 9100 4800 50  0001 C CNN
	4    9100 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2100 7350 2100
Wire Wire Line
	7150 2900 7650 2900
Wire Wire Line
	6700 2650 6700 2900
Wire Wire Line
	6700 2900 7150 2900
Connection ~ 7150 2900
Wire Wire Line
	7350 2000 6700 2000
Wire Wire Line
	6700 2350 6700 2000
Connection ~ 6700 2000
Wire Wire Line
	6700 2000 6500 2000
$Comp
L Mechanical:Mounting_Hole MK2
U 1 1 5B33A0DF
P 4600 5050
F 0 "MK2" H 4700 5096 50  0000 L CNN
F 1 "Mounting_Hole" H 4700 5005 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4600 5050 50  0001 C CNN
F 3 "" H 4600 5050 50  0001 C CNN
	1    4600 5050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Mounting_Hole MK1
U 1 1 5B33C0BB
P 4600 4850
F 0 "MK1" H 4700 4896 50  0000 L CNN
F 1 "Mounting_Hole" H 4700 4805 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4600 4850 50  0001 C CNN
F 3 "" H 4600 4850 50  0001 C CNN
	1    4600 4850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Mounting_Hole MK4
U 1 1 5B33DE8E
P 4600 5450
F 0 "MK4" H 4700 5496 50  0000 L CNN
F 1 "Mounting_Hole" H 4700 5405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4600 5450 50  0001 C CNN
F 3 "" H 4600 5450 50  0001 C CNN
	1    4600 5450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Mounting_Hole MK3
U 1 1 5B33DE94
P 4600 5250
F 0 "MK3" H 4700 5296 50  0000 L CNN
F 1 "Mounting_Hole" H 4700 5205 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4600 5250 50  0001 C CNN
F 3 "" H 4600 5250 50  0001 C CNN
	1    4600 5250
	1    0    0    -1  
$EndComp
Text Notes 5450 4600 2    100  ~ 0
Mounting holes
Text Notes 8200 3500 2    100  ~ 0
I2C PullUp
Text Notes 9100 1650 2    100  ~ 0
3.3V Linear Regulator with Enable
$Comp
L power:GND #PWR0101
U 1 1 5B219E78
P 7650 3000
F 0 "#PWR0101" H 7650 2750 50  0001 C CNN
F 1 "GND" H 7655 2827 50  0000 C CNN
F 2 "" H 7650 3000 50  0001 C CNN
F 3 "" H 7650 3000 50  0001 C CNN
	1    7650 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 2500 9000 2400
Wire Wire Line
	9000 2000 9000 2100
Wire Wire Line
	8550 2000 9000 2000
Wire Wire Line
	9000 2000 9200 2000
Connection ~ 9000 2000
Wire Wire Line
	2300 2350 2700 2350
Wire Wire Line
	2700 2350 2700 3250
Wire Wire Line
	2300 3250 2700 3250
Connection ~ 2700 3250
Wire Wire Line
	2700 3250 2700 3850
$Comp
L power:GND #PWR?
U 1 1 5B25D03C
P 2700 3850
F 0 "#PWR?" H 2700 3600 50  0001 C CNN
F 1 "GND" H 2705 3677 50  0000 C CNN
F 2 "" H 2700 3850 50  0001 C CNN
F 3 "" H 2700 3850 50  0001 C CNN
	1    2700 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5B25D37F
P 1350 2350
F 0 "#PWR?" H 1350 2200 50  0001 C CNN
F 1 "+5V" H 1365 2523 50  0000 C CNN
F 2 "" H 1350 2350 50  0001 C CNN
F 3 "" H 1350 2350 50  0001 C CNN
	1    1350 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 2350 1800 2350
$Comp
L power:+5V #PWR?
U 1 1 5B25F6C9
P 6500 2000
F 0 "#PWR?" H 6500 1850 50  0001 C CNN
F 1 "+5V" H 6515 2173 50  0000 C CNN
F 2 "" H 6500 2000 50  0001 C CNN
F 3 "" H 6500 2000 50  0001 C CNN
	1    6500 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3250 1350 3250
$Comp
L power:+3V3 #PWR?
U 1 1 5B26E3EC
P 1350 3250
F 0 "#PWR?" H 1350 3100 50  0001 C CNN
F 1 "+3V3" H 1365 3423 50  0000 C CNN
F 2 "" H 1350 3250 50  0001 C CNN
F 3 "" H 1350 3250 50  0001 C CNN
	1    1350 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5B2727C8
P 7150 4000
F 0 "#PWR?" H 7150 3850 50  0001 C CNN
F 1 "+3V3" H 7165 4173 50  0000 C CNN
F 2 "" H 7150 4000 50  0001 C CNN
F 3 "" H 7150 4000 50  0001 C CNN
	1    7150 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5B2792ED
P 6150 4900
F 0 "#PWR?" H 6150 4650 50  0001 C CNN
F 1 "GND" H 6155 4727 50  0000 C CNN
F 2 "" H 6150 4900 50  0001 C CNN
F 3 "" H 6150 4900 50  0001 C CNN
	1    6150 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4650 6150 4900
Wire Wire Line
	7150 4650 7150 4200
NoConn ~ 1950 5000
Text Notes 1900 5000 2    50   ~ 0
NC
$Comp
L power:GND #PWR?
U 1 1 5B22FBB2
P 3550 5400
F 0 "#PWR?" H 3550 5150 50  0001 C CNN
F 1 "GND" H 3555 5227 50  0000 C CNN
F 2 "" H 3550 5400 50  0001 C CNN
F 3 "" H 3550 5400 50  0001 C CNN
	1    3550 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 5000 3550 5400
Wire Wire Line
	2800 5000 3550 5000
$Comp
L power:GND #PWR?
U 1 1 5B23252B
P 5100 4000
F 0 "#PWR?" H 5100 3750 50  0001 C CNN
F 1 "GND" H 5105 3827 50  0000 C CNN
F 2 "" H 5100 4000 50  0001 C CNN
F 3 "" H 5100 4000 50  0001 C CNN
	1    5100 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4000 5100 4000
Wire Wire Line
	5100 4000 5100 3600
Wire Wire Line
	4400 3600 5100 3600
Connection ~ 5100 4000
$Comp
L power:GND #PWR?
U 1 1 5B23931B
P 5100 2950
F 0 "#PWR?" H 5100 2700 50  0001 C CNN
F 1 "GND" H 5105 2777 50  0000 C CNN
F 2 "" H 5100 2950 50  0001 C CNN
F 3 "" H 5100 2950 50  0001 C CNN
	1    5100 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2950 5100 2550
Wire Wire Line
	4400 2550 5100 2550
$Comp
L power:GND #PWR?
U 1 1 5B23B81F
P 5250 1900
F 0 "#PWR?" H 5250 1650 50  0001 C CNN
F 1 "GND" H 5255 1727 50  0000 C CNN
F 2 "" H 5250 1900 50  0001 C CNN
F 3 "" H 5250 1900 50  0001 C CNN
	1    5250 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 1900 5250 1500
Wire Wire Line
	4400 1500 5250 1500
$Comp
L Device:C C4
U 1 1 5B23DE98
P 6650 4200
F 0 "C4" V 6800 4000 50  0000 L CNN
F 1 "0.1uF" V 6700 3900 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6688 4050 50  0001 C CNN
F 3 "~" H 6650 4200 50  0001 C CNN
	1    6650 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6800 4200 7150 4200
Connection ~ 7150 4200
Wire Wire Line
	7150 4200 7150 4000
Wire Wire Line
	6500 4200 6150 4200
Wire Wire Line
	6150 4200 6150 4650
Connection ~ 6150 4650
NoConn ~ 3550 3900
NoConn ~ 4750 3700
Text Notes 3500 3900 2    50   ~ 0
NC
Text Notes 4900 3700 2    50   ~ 0
NC
$Comp
L power:GND #PWR?
U 1 1 5B24C26B
P 9400 5050
F 0 "#PWR?" H 9400 4800 50  0001 C CNN
F 1 "GND" H 9405 4877 50  0000 C CNN
F 2 "" H 9400 5050 50  0001 C CNN
F 3 "" H 9400 5050 50  0001 C CNN
	1    9400 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 5050 9400 4800
Wire Wire Line
	9400 4800 9400 4500
Connection ~ 9400 4800
Wire Wire Line
	9400 4000 9400 3700
Wire Wire Line
	9400 3700 9100 3700
Connection ~ 9400 4000
Wire Wire Line
	8800 3700 9100 3700
Connection ~ 9100 3700
Wire Wire Line
	9100 4500 9400 4500
Connection ~ 9400 4500
Wire Wire Line
	9400 4500 9400 4000
Wire Wire Line
	9100 4500 8800 4500
Wire Wire Line
	8800 4500 8800 4800
Connection ~ 9100 4500
Wire Wire Line
	8800 3700 8800 4000
$EndSCHEMATC
