EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Paper tape scanner"
Date "2021-03-12"
Rev "1"
Comp "Michał Szopiński"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Sensor_Optical:TEPT4400 Q1
U 1 1 604BD9C7
P 2100 5900
F 0 "Q1" H 2290 5946 50  0000 L CNN
F 1 "TEPT5600" H 2290 5855 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm_Clear" H 2580 5760 50  0001 C CNN
F 3 "https://www.vishay.com/docs/84768/tept5600.pdf" H 2100 5900 50  0001 C CNN
	1    2100 5900
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Optical:TEPT4400 Q2
U 1 1 604BDAF4
P 2600 5900
F 0 "Q2" H 2790 5946 50  0000 L CNN
F 1 "TEPT5600" H 2790 5855 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm_Clear" H 3080 5760 50  0001 C CNN
F 3 "https://www.vishay.com/docs/84768/tept5600.pdf" H 2600 5900 50  0001 C CNN
	1    2600 5900
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Optical:TEPT4400 Q3
U 1 1 604BDBC4
P 3100 5900
F 0 "Q3" H 3290 5946 50  0000 L CNN
F 1 "TEPT5600" H 3290 5855 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm_Clear" H 3580 5760 50  0001 C CNN
F 3 "https://www.vishay.com/docs/84768/tept5600.pdf" H 3100 5900 50  0001 C CNN
	1    3100 5900
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Optical:TEPT4400 Q4
U 1 1 604BE0D6
P 3600 5900
F 0 "Q4" H 3790 5946 50  0000 L CNN
F 1 "TEPT5600" H 3790 5855 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm_Clear" H 4080 5760 50  0001 C CNN
F 3 "https://www.vishay.com/docs/84768/tept5600.pdf" H 3600 5900 50  0001 C CNN
	1    3600 5900
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Optical:TEPT4400 Q5
U 1 1 604BE600
P 4100 5900
F 0 "Q5" H 4290 5946 50  0000 L CNN
F 1 "TEPT5600" H 4290 5855 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm_Clear" H 4580 5760 50  0001 C CNN
F 3 "https://www.vishay.com/docs/84768/tept5600.pdf" H 4100 5900 50  0001 C CNN
	1    4100 5900
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Optical:TEPT4400 Q6
U 1 1 604BEBC3
P 4600 5900
F 0 "Q6" H 4790 5946 50  0000 L CNN
F 1 "TEPT5600" H 4790 5855 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm_Clear" H 5080 5760 50  0001 C CNN
F 3 "https://www.vishay.com/docs/84768/tept5600.pdf" H 4600 5900 50  0001 C CNN
	1    4600 5900
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Optical:TEPT4400 Q7
U 1 1 604BEF07
P 5100 5900
F 0 "Q7" H 5290 5946 50  0000 L CNN
F 1 "TEPT5600" H 5290 5855 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm_Clear" H 5580 5760 50  0001 C CNN
F 3 "https://www.vishay.com/docs/84768/tept5600.pdf" H 5100 5900 50  0001 C CNN
	1    5100 5900
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Optical:TEPT4400 Q8
U 1 1 604BF107
P 5600 5900
F 0 "Q8" H 5790 5946 50  0000 L CNN
F 1 "TEPT5600" H 5790 5855 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm_Clear" H 6080 5760 50  0001 C CNN
F 3 "https://www.vishay.com/docs/84768/tept5600.pdf" H 5600 5900 50  0001 C CNN
	1    5600 5900
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Optical:TEPT4400 Q9
U 1 1 604BF21C
P 6100 5900
F 0 "Q9" H 6290 5946 50  0000 L CNN
F 1 "TEPT5600" H 6290 5855 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm_Clear" H 6580 5760 50  0001 C CNN
F 3 "https://www.vishay.com/docs/84768/tept5600.pdf" H 6100 5900 50  0001 C CNN
	1    6100 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 6200 6200 6100
Wire Wire Line
	5700 6100 5700 6200
Wire Wire Line
	5200 6100 5200 6200
Wire Wire Line
	4700 6100 4700 6200
Wire Wire Line
	4200 6100 4200 6200
Wire Wire Line
	3700 6100 3700 6200
Wire Wire Line
	3200 6100 3200 6200
Wire Wire Line
	2700 6100 2700 6200
Wire Wire Line
	2200 6100 2200 6200
$Comp
L Device:LED D0
U 1 1 604CE3E9
P 1950 6900
F 0 "D0" V 1897 6980 50  0000 L CNN
F 1 "LED" V 1988 6980 50  0000 L CNN
F 2 "" H 1950 6900 50  0001 C CNN
F 3 "~" H 1950 6900 50  0001 C CNN
	1    1950 6900
	0    1    1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 604CE7E2
P 2950 6900
F 0 "D1" V 2897 6980 50  0000 L CNN
F 1 "LED" V 2988 6980 50  0000 L CNN
F 2 "" H 2950 6900 50  0001 C CNN
F 3 "~" H 2950 6900 50  0001 C CNN
	1    2950 6900
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2
U 1 1 604CEB23
P 3950 6900
F 0 "D2" V 3897 6980 50  0000 L CNN
F 1 "LED" V 3988 6980 50  0000 L CNN
F 2 "" H 3950 6900 50  0001 C CNN
F 3 "~" H 3950 6900 50  0001 C CNN
	1    3950 6900
	0    1    1    0   
$EndComp
$Comp
L Device:LED D3
U 1 1 604CF316
P 4950 6900
F 0 "D3" V 4897 6980 50  0000 L CNN
F 1 "LED" V 4988 6980 50  0000 L CNN
F 2 "" H 4950 6900 50  0001 C CNN
F 3 "~" H 4950 6900 50  0001 C CNN
	1    4950 6900
	0    1    1    0   
$EndComp
$Comp
L Device:LED D4
U 1 1 604CFBC6
P 5950 6900
F 0 "D4" V 5897 6980 50  0000 L CNN
F 1 "LED" V 5988 6980 50  0000 L CNN
F 2 "" H 5950 6900 50  0001 C CNN
F 3 "~" H 5950 6900 50  0001 C CNN
	1    5950 6900
	0    1    1    0   
$EndComp
Wire Wire Line
	1950 6750 1950 6650
Wire Wire Line
	2950 6750 2950 6650
Wire Wire Line
	3950 6750 3950 6650
Wire Wire Line
	4950 6750 4950 6650
Wire Wire Line
	5950 6750 5950 6650
Wire Wire Line
	1700 6100 1700 6200
$Comp
L Device:R R0
U 1 1 60551FD1
P 1950 7200
F 0 "R0" H 2020 7246 50  0000 L CNN
F 1 "150R" H 2020 7155 50  0000 L CNN
F 2 "" V 1880 7200 50  0001 C CNN
F 3 "~" H 1950 7200 50  0001 C CNN
	1    1950 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 60556CEB
P 2950 7200
F 0 "R1" H 3020 7246 50  0000 L CNN
F 1 "150R" H 3020 7155 50  0000 L CNN
F 2 "" V 2880 7200 50  0001 C CNN
F 3 "~" H 2950 7200 50  0001 C CNN
	1    2950 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 60557299
P 3950 7200
F 0 "R2" H 4020 7246 50  0000 L CNN
F 1 "150R" H 4020 7155 50  0000 L CNN
F 2 "" V 3880 7200 50  0001 C CNN
F 3 "~" H 3950 7200 50  0001 C CNN
	1    3950 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 605578F8
P 4950 7200
F 0 "R3" H 5020 7246 50  0000 L CNN
F 1 "150R" H 5020 7155 50  0000 L CNN
F 2 "" V 4880 7200 50  0001 C CNN
F 3 "~" H 4950 7200 50  0001 C CNN
	1    4950 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 6055853A
P 5950 7200
F 0 "R4" H 6020 7246 50  0000 L CNN
F 1 "150R" H 6020 7155 50  0000 L CNN
F 2 "" V 5880 7200 50  0001 C CNN
F 3 "~" H 5950 7200 50  0001 C CNN
	1    5950 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 7350 1950 7500
Wire Wire Line
	2950 7350 2950 7500
Wire Wire Line
	3950 7350 3950 7500
Wire Wire Line
	4950 7350 4950 7500
Wire Wire Line
	5950 7350 5950 7500
$Comp
L Device:R R5
U 1 1 60562D39
P 1350 7500
F 0 "R5" V 1143 7500 50  0000 C CNN
F 1 "100R" V 1234 7500 50  0000 C CNN
F 2 "" V 1280 7500 50  0001 C CNN
F 3 "~" H 1350 7500 50  0001 C CNN
	1    1350 7500
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 5350 1700 5550
Wire Wire Line
	2200 5350 2200 5550
Wire Wire Line
	2700 5350 2700 5550
Wire Wire Line
	3200 5350 3200 5550
Wire Wire Line
	3700 5350 3700 5550
Wire Wire Line
	4200 5350 4200 5550
Wire Wire Line
	4700 5350 4700 5550
Wire Wire Line
	5200 5350 5200 5550
Wire Wire Line
	5700 5350 5700 5550
Wire Wire Line
	6200 5350 6200 5550
Wire Wire Line
	1700 5550 1950 5550
Connection ~ 1700 5550
Wire Wire Line
	1700 5550 1700 5700
Wire Wire Line
	2200 5550 2450 5550
Connection ~ 2200 5550
Wire Wire Line
	2200 5550 2200 5700
Wire Wire Line
	2700 5550 2950 5550
Connection ~ 2700 5550
Wire Wire Line
	2700 5550 2700 5700
Wire Wire Line
	3200 5550 3450 5550
Connection ~ 3200 5550
Wire Wire Line
	3200 5550 3200 5700
Connection ~ 3700 5550
Wire Wire Line
	3700 5550 3700 5700
Wire Wire Line
	4200 5550 4450 5550
Connection ~ 4200 5550
Wire Wire Line
	4200 5550 4200 5700
Wire Wire Line
	4700 5550 4950 5550
Connection ~ 4700 5550
Wire Wire Line
	4700 5550 4700 5700
Wire Wire Line
	5200 5550 5450 5550
Connection ~ 5200 5550
Wire Wire Line
	5200 5550 5200 5700
Wire Wire Line
	5700 5550 5950 5550
Connection ~ 5700 5550
Wire Wire Line
	5700 5550 5700 5700
Wire Wire Line
	6200 5550 6450 5550
Connection ~ 6200 5550
Wire Wire Line
	6200 5550 6200 5700
Wire Wire Line
	6200 4950 6200 5050
Wire Wire Line
	5700 5050 5700 4950
Connection ~ 5700 4950
Wire Wire Line
	5700 4950 6200 4950
Wire Wire Line
	5200 5050 5200 4950
Connection ~ 5200 4950
Wire Wire Line
	5200 4950 5700 4950
Wire Wire Line
	4700 5050 4700 4950
Connection ~ 4700 4950
Wire Wire Line
	4700 4950 5200 4950
Wire Wire Line
	4200 5050 4200 4950
Connection ~ 4200 4950
Wire Wire Line
	4200 4950 4700 4950
Wire Wire Line
	3700 5050 3700 4950
Connection ~ 3700 4950
Wire Wire Line
	3700 4950 4200 4950
Wire Wire Line
	3200 5050 3200 4950
Connection ~ 3200 4950
Wire Wire Line
	3200 4950 3700 4950
Wire Wire Line
	2700 5050 2700 4950
Connection ~ 2700 4950
Wire Wire Line
	2700 4950 3200 4950
Wire Wire Line
	2200 5050 2200 4950
Connection ~ 2200 4950
Wire Wire Line
	2200 4950 2700 4950
Wire Wire Line
	1700 5050 1700 4950
Connection ~ 1700 4950
Wire Wire Line
	1700 4950 2200 4950
Connection ~ 5700 6200
Wire Wire Line
	5700 6200 6200 6200
Connection ~ 5200 6200
Wire Wire Line
	5200 6200 5700 6200
Connection ~ 4700 6200
Wire Wire Line
	4700 6200 5200 6200
Connection ~ 4200 6200
Wire Wire Line
	4200 6200 4700 6200
Connection ~ 3700 6200
Wire Wire Line
	3700 6200 4200 6200
Connection ~ 3200 6200
Wire Wire Line
	3200 6200 3700 6200
Connection ~ 2700 6200
Wire Wire Line
	2700 6200 3200 6200
Connection ~ 2200 6200
Wire Wire Line
	2200 6200 2700 6200
Wire Wire Line
	1700 6200 2200 6200
$Comp
L power:+5V #PWR0102
U 1 1 60564F47
P 1200 7500
F 0 "#PWR0102" H 1200 7350 50  0001 C CNN
F 1 "+5V" V 1215 7628 50  0000 L CNN
F 2 "" H 1200 7500 50  0001 C CNN
F 3 "" H 1200 7500 50  0001 C CNN
	1    1200 7500
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 605D965C
P 1450 4950
F 0 "#PWR0103" H 1450 4800 50  0001 C CNN
F 1 "+5V" V 1465 5078 50  0000 L CNN
F 2 "" H 1450 4950 50  0001 C CNN
F 3 "" H 1450 4950 50  0001 C CNN
	1    1450 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3700 5550 3950 5550
Wire Wire Line
	1450 4950 1700 4950
Wire Wire Line
	4950 6650 5950 6650
Connection ~ 4950 6650
Wire Wire Line
	4950 7500 5950 7500
Connection ~ 4950 7500
Wire Wire Line
	3950 6650 4950 6650
Connection ~ 3950 6650
Wire Wire Line
	3950 7500 4950 7500
Connection ~ 3950 7500
Wire Wire Line
	2950 7500 3950 7500
Connection ~ 2950 7500
Wire Wire Line
	2950 6650 3950 6650
Connection ~ 2950 6650
Wire Wire Line
	1950 6650 2950 6650
Wire Wire Line
	1950 7500 2950 7500
Connection ~ 1950 7500
Wire Wire Line
	1500 7500 1950 7500
Wire Wire Line
	6450 4750 6450 5550
Wire Wire Line
	5950 4750 5950 5550
Wire Wire Line
	5450 4750 5450 5550
Wire Wire Line
	4950 4750 4950 5550
Wire Wire Line
	4450 4750 4450 5550
Wire Wire Line
	3950 4750 3950 5550
Wire Wire Line
	3450 4750 3450 5550
Wire Wire Line
	2950 4750 2950 5550
Wire Wire Line
	2450 4750 2450 5550
Wire Wire Line
	1950 4750 1950 5550
Text Label 1950 4750 1    50   ~ 0
PHOTO_0
Text Label 2450 4750 1    50   ~ 0
PHOTO_1
Text Label 2950 4750 1    50   ~ 0
PHOTO_2
Text Label 3450 4750 1    50   ~ 0
PHOTO_3
Text Label 3950 4750 1    50   ~ 0
PHOTO_4
Text Label 4450 4750 1    50   ~ 0
PHOTO_5
Text Label 4950 4750 1    50   ~ 0
PHOTO_6
Text Label 5450 4750 1    50   ~ 0
PHOTO_7
Text Label 5950 4750 1    50   ~ 0
PHOTO_CTRL
Text Label 6450 4750 1    50   ~ 0
PHOTO_SYNC
Text Label 9100 3650 2    50   ~ 0
PHOTO_0
Text Label 9100 1250 2    50   ~ 0
PHOTO_1
Text Label 9100 1350 2    50   ~ 0
PHOTO_2
Text Label 9100 1450 2    50   ~ 0
PHOTO_3
Text Label 9100 2950 2    50   ~ 0
PHOTO_4
Text Label 9100 2750 2    50   ~ 0
PHOTO_5
Text Label 9100 2650 2    50   ~ 0
PHOTO_6
Text Label 9100 2550 2    50   ~ 0
PHOTO_7
Text Label 9100 2350 2    50   ~ 0
PHOTO_CTRL
Text Label 9100 2250 2    50   ~ 0
PHOTO_SYNC
$Comp
L power:GND #PWR0107
U 1 1 607C97D1
P 9700 950
F 0 "#PWR0107" H 9700 700 50  0001 C CNN
F 1 "GND" H 9705 777 50  0000 C CNN
F 2 "" H 9700 950 50  0001 C CNN
F 3 "" H 9700 950 50  0001 C CNN
	1    9700 950 
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0108
U 1 1 607CA28C
P 10300 3650
F 0 "#PWR0108" H 10300 3500 50  0001 C CNN
F 1 "+5V" V 10315 3778 50  0000 L CNN
F 2 "" H 10300 3650 50  0001 C CNN
F 3 "" H 10300 3650 50  0001 C CNN
	1    10300 3650
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 607CAF72
P 9700 4400
F 0 "#PWR0109" H 9700 4250 50  0001 C CNN
F 1 "+5V" H 9715 4573 50  0000 C CNN
F 2 "" H 9700 4400 50  0001 C CNN
F 3 "" H 9700 4400 50  0001 C CNN
	1    9700 4400
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 607CBA93
P 9600 3950
F 0 "#PWR0110" H 9600 3800 50  0001 C CNN
F 1 "+5V" H 9615 4123 50  0000 C CNN
F 2 "" H 9600 3950 50  0001 C CNN
F 3 "" H 9600 3950 50  0001 C CNN
	1    9600 3950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R16
U 1 1 607D04E2
P 8150 2150
F 0 "R16" V 7943 2150 50  0000 C CNN
F 1 "10K" V 8034 2150 50  0000 C CNN
F 2 "" V 8080 2150 50  0001 C CNN
F 3 "~" H 8150 2150 50  0001 C CNN
	1    8150 2150
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 607D22DC
P 8000 2150
F 0 "#PWR0111" H 8000 2000 50  0001 C CNN
F 1 "+5V" V 8015 2278 50  0000 L CNN
F 2 "" H 8000 2150 50  0001 C CNN
F 3 "" H 8000 2150 50  0001 C CNN
	1    8000 2150
	0    -1   -1   0   
$EndComp
NoConn ~ 9100 1550
NoConn ~ 9100 1650
NoConn ~ 9100 1750
NoConn ~ 9100 2450
NoConn ~ 9100 3050
Wire Notes Line
	1550 5050 6650 5050
Wire Notes Line
	6650 5050 6650 5400
Wire Notes Line
	6650 5400 1550 5400
Wire Notes Line
	1550 5400 1550 5050
Text Notes 6750 5450 1    50   ~ 0
Fine-tuned
$Comp
L Device:R R6
U 1 1 60583FB3
P 1700 5200
F 0 "R6" H 1770 5246 50  0000 L CNN
F 1 "68K" H 1770 5155 50  0000 L CNN
F 2 "" V 1630 5200 50  0001 C CNN
F 3 "~" H 1700 5200 50  0001 C CNN
	1    1700 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 6058A786
P 2200 5200
F 0 "R7" H 2270 5246 50  0000 L CNN
F 1 "47K" H 2270 5155 50  0000 L CNN
F 2 "" V 2130 5200 50  0001 C CNN
F 3 "~" H 2200 5200 50  0001 C CNN
	1    2200 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 6058CD3A
P 2700 5200
F 0 "R8" H 2770 5246 50  0000 L CNN
F 1 "100K" H 2770 5155 50  0000 L CNN
F 2 "" V 2630 5200 50  0001 C CNN
F 3 "~" H 2700 5200 50  0001 C CNN
	1    2700 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 6058F2ED
P 3200 5200
F 0 "R9" H 3270 5246 50  0000 L CNN
F 1 "180K" H 3270 5155 50  0000 L CNN
F 2 "" V 3130 5200 50  0001 C CNN
F 3 "~" H 3200 5200 50  0001 C CNN
	1    3200 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 605918DA
P 3700 5200
F 0 "R10" H 3770 5246 50  0000 L CNN
F 1 "120K" H 3770 5155 50  0000 L CNN
F 2 "" V 3630 5200 50  0001 C CNN
F 3 "~" H 3700 5200 50  0001 C CNN
	1    3700 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 60593E64
P 4200 5200
F 0 "R11" H 4270 5246 50  0000 L CNN
F 1 "120K" H 4270 5155 50  0000 L CNN
F 2 "" V 4130 5200 50  0001 C CNN
F 3 "~" H 4200 5200 50  0001 C CNN
	1    4200 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 605963B9
P 4700 5200
F 0 "R12" H 4770 5246 50  0000 L CNN
F 1 "120K" H 4770 5155 50  0000 L CNN
F 2 "" V 4630 5200 50  0001 C CNN
F 3 "~" H 4700 5200 50  0001 C CNN
	1    4700 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 60598923
P 5200 5200
F 0 "R13" H 5270 5246 50  0000 L CNN
F 1 "100K" H 5270 5155 50  0000 L CNN
F 2 "" V 5130 5200 50  0001 C CNN
F 3 "~" H 5200 5200 50  0001 C CNN
	1    5200 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 6059AEC2
P 5700 5200
F 0 "R14" H 5770 5246 50  0000 L CNN
F 1 "100K" H 5770 5155 50  0000 L CNN
F 2 "" V 5630 5200 50  0001 C CNN
F 3 "~" H 5700 5200 50  0001 C CNN
	1    5700 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 6059D49F
P 6200 5200
F 0 "R15" H 6270 5246 50  0000 L CNN
F 1 "68K" H 6270 5155 50  0000 L CNN
F 2 "" V 6130 5200 50  0001 C CNN
F 3 "~" H 6200 5200 50  0001 C CNN
	1    6200 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 3950 9700 4150
Wire Wire Line
	9700 4150 9800 4150
Connection ~ 9700 4150
Wire Wire Line
	9700 4150 9700 4400
$Comp
L Device:C C0
U 1 1 60531D74
P 9950 4150
F 0 "C0" V 9698 4150 50  0000 C CNN
F 1 "100n" V 9789 4150 50  0000 C CNN
F 2 "" H 9988 4000 50  0001 C CNN
F 3 "~" H 9950 4150 50  0001 C CNN
	1    9950 4150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 6053249A
P 10100 4150
F 0 "#PWR0105" H 10100 3900 50  0001 C CNN
F 1 "GND" V 10105 4022 50  0000 R CNN
F 2 "" H 10100 4150 50  0001 C CNN
F 3 "" H 10100 4150 50  0001 C CNN
	1    10100 4150
	0    -1   -1   0   
$EndComp
$Comp
L Connector:USB_B J0
U 1 1 605CF6FE
P 3350 2150
F 0 "J0" H 3407 2617 50  0000 C CNN
F 1 "USB_B" H 3407 2526 50  0000 C CNN
F 2 "" H 3500 2100 50  0001 C CNN
F 3 " ~" H 3500 2100 50  0001 C CNN
	1    3350 2150
	1    0    0    -1  
$EndComp
NoConn ~ 5400 2750
NoConn ~ 5400 2950
$Comp
L power:GND #PWR0106
U 1 1 605F6BDE
P 5400 3250
F 0 "#PWR0106" H 5400 3000 50  0001 C CNN
F 1 "GND" V 5405 3122 50  0000 R CNN
F 2 "" H 5400 3250 50  0001 C CNN
F 3 "" H 5400 3250 50  0001 C CNN
	1    5400 3250
	0    1    1    0   
$EndComp
NoConn ~ 3250 2550
NoConn ~ 7000 2850
NoConn ~ 7000 2950
NoConn ~ 7000 3050
NoConn ~ 7000 3150
NoConn ~ 7000 3250
NoConn ~ 7000 2550
NoConn ~ 7000 2450
NoConn ~ 7000 2350
NoConn ~ 7000 2250
NoConn ~ 7000 2150
NoConn ~ 7000 2050
$Comp
L power:GND #PWR0112
U 1 1 6062A9F6
P 3350 2900
F 0 "#PWR0112" H 3350 2650 50  0001 C CNN
F 1 "GND" H 3355 2727 50  0000 C CNN
F 2 "" H 3350 2900 50  0001 C CNN
F 3 "" H 3350 2900 50  0001 C CNN
	1    3350 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 6063DFAE
P 5000 1950
F 0 "#PWR0114" H 5000 1800 50  0001 C CNN
F 1 "+5V" V 5015 2078 50  0000 L CNN
F 2 "" H 5000 1950 50  0001 C CNN
F 3 "" H 5000 1950 50  0001 C CNN
	1    5000 1950
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0115
U 1 1 6064034E
P 6100 1300
F 0 "#PWR0115" H 6100 1150 50  0001 C CNN
F 1 "+5V" H 6115 1473 50  0000 C CNN
F 2 "" H 6100 1300 50  0001 C CNN
F 3 "" H 6100 1300 50  0001 C CNN
	1    6100 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0116
U 1 1 606407DD
P 6300 1300
F 0 "#PWR0116" H 6300 1150 50  0001 C CNN
F 1 "+5V" H 6315 1473 50  0000 C CNN
F 2 "" H 6300 1300 50  0001 C CNN
F 3 "" H 6300 1300 50  0001 C CNN
	1    6300 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3550 6000 3650
Wire Wire Line
	6000 3650 6200 3650
Wire Wire Line
	6200 3650 6200 3550
Wire Wire Line
	6200 3650 6300 3650
Wire Wire Line
	6300 3650 6300 3550
Connection ~ 6200 3650
Wire Wire Line
	6400 3550 6400 3650
Wire Wire Line
	6400 3650 6300 3650
Connection ~ 6300 3650
Wire Wire Line
	6000 3650 5850 3650
Connection ~ 6000 3650
$Comp
L power:GND #PWR0117
U 1 1 60659DF5
P 5850 3650
F 0 "#PWR0117" H 5850 3400 50  0001 C CNN
F 1 "GND" V 5855 3522 50  0000 R CNN
F 2 "" H 5850 3650 50  0001 C CNN
F 3 "" H 5850 3650 50  0001 C CNN
	1    5850 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	9100 1850 9000 1950
Wire Wire Line
	9000 1850 9100 1950
$Comp
L MCU_Microchip_ATmega:ATmega328P-PU U0
U 1 1 607AED4A
P 9700 2450
F 0 "U0" H 9056 2404 50  0000 R CNN
F 1 "ATmega328P-PU" H 9056 2495 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 9700 2450 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 9700 2450 50  0001 C CNN
	1    9700 2450
	-1   0    0    1   
$EndComp
Text Label 9100 3550 2    50   ~ 0
READ_HEAD
Text Label 9100 3450 2    50   ~ 0
EMERGENCY
$Comp
L Transistor_BJT:MJE13007G Q10
U 1 1 606AAE77
P 2350 3550
F 0 "Q10" V 2679 3550 50  0000 C CNN
F 1 "MJE13007G" V 2588 3550 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2600 3475 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/MJE13007-D.PDF" H 2350 3550 50  0001 L CNN
	1    2350 3550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 606B3702
P 2550 3450
F 0 "#PWR0101" H 2550 3200 50  0001 C CNN
F 1 "GND" V 2555 3322 50  0000 R CNN
F 2 "" H 2550 3450 50  0001 C CNN
F 3 "" H 2550 3450 50  0001 C CNN
	1    2550 3450
	0    -1   -1   0   
$EndComp
Connection ~ 1950 6650
$Comp
L Sensor_Optical:TEPT4400 Q0
U 1 1 604B7B85
P 1600 5900
F 0 "Q0" H 1790 5946 50  0000 L CNN
F 1 "TEPT5600" H 1790 5855 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm_Clear" H 2080 5760 50  0001 C CNN
F 3 "https://www.vishay.com/docs/84768/tept5600.pdf" H 1600 5900 50  0001 C CNN
	1    1600 5900
	1    0    0    -1  
$EndComp
Connection ~ 1700 6200
Wire Wire Line
	950  6650 1950 6650
Wire Wire Line
	950  6200 1700 6200
Wire Wire Line
	950  6200 950  6650
$Comp
L Device:R R17
U 1 1 606CF734
P 2350 3900
F 0 "R17" H 2420 3946 50  0000 L CNN
F 1 "330R" H 2420 3855 50  0000 L CNN
F 2 "" V 2280 3900 50  0001 C CNN
F 3 "~" H 2350 3900 50  0001 C CNN
	1    2350 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 4050 2350 4150
Wire Wire Line
	2350 4150 2600 4150
Text Label 2600 4150 0    50   ~ 0
READ_HEAD
$Comp
L power:+5V #PWR0118
U 1 1 606F04F9
P 2550 2850
F 0 "#PWR0118" H 2550 2700 50  0001 C CNN
F 1 "+5V" V 2565 2978 50  0000 L CNN
F 2 "" H 2550 2850 50  0001 C CNN
F 3 "" H 2550 2850 50  0001 C CNN
	1    2550 2850
	0    1    1    0   
$EndComp
Connection ~ 950  6200
$Comp
L Device:C C2
U 1 1 6078F2A1
P 3750 2500
F 0 "C2" H 3865 2546 50  0000 L CNN
F 1 "10n" H 3865 2455 50  0000 L CNN
F 2 "" H 3788 2350 50  0001 C CNN
F 3 "~" H 3750 2500 50  0001 C CNN
	1    3750 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 6078FD35
P 4200 2500
F 0 "C3" H 4315 2546 50  0000 L CNN
F 1 "47p" H 4315 2455 50  0000 L CNN
F 2 "" H 4238 2350 50  0001 C CNN
F 3 "~" H 4200 2500 50  0001 C CNN
	1    4200 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 6079AE80
P 4650 2500
F 0 "C4" H 4765 2546 50  0000 L CNN
F 1 "47p" H 4765 2455 50  0000 L CNN
F 2 "" H 4688 2350 50  0001 C CNN
F 3 "~" H 4650 2500 50  0001 C CNN
	1    4650 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead FB0
U 1 1 607EF571
P 4050 1950
F 0 "FB0" V 3776 1950 50  0000 C CNN
F 1 "Ferrite_Bead" V 3867 1950 50  0000 C CNN
F 2 "" V 3980 1950 50  0001 C CNN
F 3 "~" H 4050 1950 50  0001 C CNN
	1    4050 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	3650 1950 3750 1950
Wire Wire Line
	3750 2350 3750 1950
Connection ~ 3750 1950
Wire Wire Line
	3750 1950 3900 1950
Wire Wire Line
	4200 2350 4200 2150
Wire Wire Line
	4650 2350 4650 2250
$Comp
L power:+5V #PWR0121
U 1 1 6083295D
P 5400 2550
F 0 "#PWR0121" H 5400 2400 50  0001 C CNN
F 1 "+5V" V 5415 2678 50  0000 L CNN
F 2 "" H 5400 2550 50  0001 C CNN
F 3 "" H 5400 2550 50  0001 C CNN
	1    5400 2550
	0    -1   -1   0   
$EndComp
$Comp
L Interface_USB:FT232RL U1
U 1 1 605C6AF0
P 6200 2550
F 0 "U1" H 6200 3731 50  0000 C CNN
F 1 "FT232RL" H 6200 3640 50  0000 C CNN
F 2 "Package_SO:SSOP-28_5.3x10.2mm_P0.65mm" H 7300 1650 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT232R.pdf" H 6200 2550 50  0001 C CNN
	1    6200 2550
	1    0    0    -1  
$EndComp
NoConn ~ 5400 1850
Wire Wire Line
	4900 1200 4900 1100
Wire Wire Line
	4400 1100 4400 1200
Wire Wire Line
	4900 1500 4900 1600
Wire Wire Line
	4400 1600 4400 1500
Wire Wire Line
	4900 1100 4650 1100
$Comp
L power:GND #PWR0122
U 1 1 608701A5
P 4650 1100
F 0 "#PWR0122" H 4650 850 50  0001 C CNN
F 1 "GND" H 4655 927 50  0000 C CNN
F 2 "" H 4650 1100 50  0001 C CNN
F 3 "" H 4650 1100 50  0001 C CNN
	1    4650 1100
	-1   0    0    1   
$EndComp
Connection ~ 4650 1100
Wire Wire Line
	4650 1100 4400 1100
Connection ~ 4200 2650
Wire Wire Line
	3750 2650 4200 2650
Connection ~ 4650 2250
Wire Wire Line
	3650 2250 4650 2250
Connection ~ 4200 2150
Wire Wire Line
	3650 2150 4200 2150
Wire Wire Line
	4200 2650 4650 2650
Wire Wire Line
	4200 2150 5400 2150
Wire Wire Line
	4650 2250 5400 2250
Wire Wire Line
	4400 1600 4650 1600
Wire Wire Line
	4200 1950 4650 1950
Wire Wire Line
	4650 1600 4650 1950
Connection ~ 4650 1600
Wire Wire Line
	4650 1600 4900 1600
Connection ~ 4650 1950
Wire Wire Line
	4650 1950 4900 1950
Wire Wire Line
	3350 2550 3350 2650
Wire Wire Line
	3750 2650 3350 2650
Connection ~ 3750 2650
Connection ~ 3350 2650
Wire Wire Line
	6100 1300 6100 1550
Wire Wire Line
	6300 1300 6300 1550
Wire Wire Line
	7000 1850 9000 1850
Wire Wire Line
	7000 1950 9000 1950
Wire Notes Line
	7150 750  3000 750 
Wire Notes Line
	3000 3800 7150 3800
Wire Notes Line
	3000 750  3000 3800
Wire Notes Line
	7150 750  7150 3800
$Comp
L Device:C C6
U 1 1 6084995B
P 4900 1350
F 0 "C6" H 5015 1396 50  0000 L CNN
F 1 "100n" H 5015 1305 50  0000 L CNN
F 2 "" H 4938 1200 50  0001 C CNN
F 3 "~" H 4900 1350 50  0001 C CNN
	1    4900 1350
	1    0    0    -1  
$EndComp
Text Notes 4650 3900 0    50   ~ 0
EM212 breakout board
Wire Wire Line
	9000 3150 8400 3150
Wire Wire Line
	9100 3250 9000 3150
Wire Wire Line
	9000 3350 9100 3350
Wire Wire Line
	8900 3250 9000 3350
Wire Wire Line
	8400 3250 8900 3250
Wire Wire Line
	8900 3350 8400 3350
Wire Wire Line
	9100 3150 8900 3350
Wire Wire Line
	8500 3450 8400 3450
$Comp
L power:GND #PWR0113
U 1 1 608278F7
P 7900 3750
F 0 "#PWR0113" H 7900 3500 50  0001 C CNN
F 1 "GND" H 7905 3577 50  0000 C CNN
F 2 "" H 7900 3750 50  0001 C CNN
F 3 "" H 7900 3750 50  0001 C CNN
	1    7900 3750
	1    0    0    -1  
$EndComp
NoConn ~ 7900 2850
Wire Wire Line
	8500 2150 9100 2150
Wire Wire Line
	8300 2150 8500 2150
Connection ~ 8500 2150
Wire Wire Line
	8500 3450 8500 2150
$Comp
L Device:CP C5
U 1 1 6084B0AF
P 4400 1350
F 0 "C5" H 4282 1304 50  0000 R CNN
F 1 "4.7u" H 4282 1395 50  0000 R CNN
F 2 "" H 4438 1200 50  0001 C CNN
F 3 "~" H 4400 1350 50  0001 C CNN
	1    4400 1350
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_Push SW0
U 1 1 60725EDE
P 8850 5850
F 0 "SW0" H 8850 6135 50  0000 C CNN
F 1 "SW_Push" H 8850 6044 50  0000 C CNN
F 2 "" H 8850 6050 50  0001 C CNN
F 3 "~" H 8850 6050 50  0001 C CNN
	1    8850 5850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0119
U 1 1 60727D38
P 8650 5850
F 0 "#PWR0119" H 8650 5700 50  0001 C CNN
F 1 "+5V" V 8665 5978 50  0000 L CNN
F 2 "" H 8650 5850 50  0001 C CNN
F 3 "" H 8650 5850 50  0001 C CNN
	1    8650 5850
	0    -1   -1   0   
$EndComp
Text Label 9850 5850 0    50   ~ 0
EMERGENCY
$Comp
L Device:R R18
U 1 1 60739369
P 9400 5450
F 0 "R18" H 9470 5496 50  0000 L CNN
F 1 "10K" H 9470 5405 50  0000 L CNN
F 2 "" V 9330 5450 50  0001 C CNN
F 3 "~" H 9400 5450 50  0001 C CNN
	1    9400 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 6073B5AB
P 9400 5300
F 0 "#PWR0120" H 9400 5050 50  0001 C CNN
F 1 "GND" H 9405 5127 50  0000 C CNN
F 2 "" H 9400 5300 50  0001 C CNN
F 3 "" H 9400 5300 50  0001 C CNN
	1    9400 5300
	-1   0    0    1   
$EndComp
Wire Wire Line
	9050 5850 9400 5850
Wire Wire Line
	9400 5600 9400 5850
Connection ~ 9400 5850
Wire Wire Line
	9400 5850 9850 5850
$Comp
L Connector:AVR-ISP-10 J2
U 1 1 6081F6F5
P 8000 3350
F 0 "J2" H 7670 3446 50  0000 R CNN
F 1 "AVR-ISP-10" H 7670 3355 50  0000 R CNN
F 2 "" V 7750 3400 50  0001 C CNN
F 3 " ~" H 6725 2800 50  0001 C CNN
	1    8000 3350
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 60A051E1
P 4900 1950
F 0 "#FLG0101" H 4900 2025 50  0001 C CNN
F 1 "PWR_FLAG" H 4900 2123 50  0000 C CNN
F 2 "" H 4900 1950 50  0001 C CNN
F 3 "~" H 4900 1950 50  0001 C CNN
	1    4900 1950
	1    0    0    -1  
$EndComp
Connection ~ 4900 1950
Wire Wire Line
	4900 1950 5000 1950
Wire Wire Line
	3350 2650 3350 2900
Wire Wire Line
	950  2850 950  3450
Wire Wire Line
	950  3450 1800 3450
Connection ~ 950  3450
Wire Wire Line
	950  3450 950  6200
$Comp
L Motor:Motor_DC M0
U 1 1 606DC4B7
P 1500 2850
F 0 "M0" V 1205 2800 50  0000 C CNN
F 1 "Motor_DC" V 1296 2800 50  0000 C CNN
F 2 "" H 1500 2760 50  0001 C CNN
F 3 "~" H 1500 2760 50  0001 C CNN
	1    1500 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	1200 2850 950  2850
Wire Wire Line
	1700 2850 1800 2850
$Comp
L Device:C C1
U 1 1 6062ABC6
P 1800 3150
F 0 "C1" H 1915 3196 50  0000 L CNN
F 1 "100n" H 1915 3105 50  0000 L CNN
F 2 "" H 1838 3000 50  0001 C CNN
F 3 "~" H 1800 3150 50  0001 C CNN
	1    1800 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3000 1800 2850
Wire Wire Line
	1800 3300 1800 3450
Connection ~ 1800 2850
Connection ~ 1800 3450
Wire Wire Line
	1800 2850 2550 2850
Wire Wire Line
	1800 3450 2150 3450
$EndSCHEMATC
