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
$Comp
L Device:R R6
U 1 1 60583FB3
P 1700 5200
F 0 "R6" H 1770 5246 50  0000 L CNN
F 1 "33K" H 1770 5155 50  0000 L CNN
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
F 1 "33K" H 2270 5155 50  0000 L CNN
F 2 "" V 2130 5200 50  0001 C CNN
F 3 "~" H 2200 5200 50  0001 C CNN
	1    2200 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 4750 1950 5550
Wire Wire Line
	2450 4750 2450 5550
Wire Wire Line
	2950 4750 2950 5550
Wire Wire Line
	3450 4750 3450 5550
Wire Wire Line
	4450 4750 4450 5550
Wire Wire Line
	4950 4750 4950 5550
Wire Wire Line
	5450 4750 5450 5550
Wire Wire Line
	5950 4750 5950 5550
Wire Wire Line
	6450 4750 6450 5550
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
$Comp
L power:GND #PWR0104
U 1 1 605F46FB
P 1450 6200
F 0 "#PWR0104" H 1450 5950 50  0001 C CNN
F 1 "GND" V 1455 6072 50  0000 R CNN
F 2 "" H 1450 6200 50  0001 C CNN
F 3 "" H 1450 6200 50  0001 C CNN
	1    1450 6200
	0    1    1    0   
$EndComp
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
Connection ~ 1700 6200
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
$Comp
L Device:R R8
U 1 1 6058CD3A
P 2700 5200
F 0 "R8" H 2770 5246 50  0000 L CNN
F 1 "33K" H 2770 5155 50  0000 L CNN
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
F 1 "33K" H 3270 5155 50  0000 L CNN
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
F 1 "33K" H 3770 5155 50  0000 L CNN
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
F 1 "33K" H 4270 5155 50  0000 L CNN
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
F 1 "33K" H 4770 5155 50  0000 L CNN
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
F 1 "33K" H 5270 5155 50  0000 L CNN
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
F 1 "33K" H 5770 5155 50  0000 L CNN
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
F 1 "33K" H 6270 5155 50  0000 L CNN
F 2 "" V 6130 5200 50  0001 C CNN
F 3 "~" H 6200 5200 50  0001 C CNN
	1    6200 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 4750 3950 5550
Wire Wire Line
	3700 5550 3950 5550
$Comp
L power:GND #PWR0101
U 1 1 604C259B
P 1450 6650
F 0 "#PWR0101" H 1450 6400 50  0001 C CNN
F 1 "GND" V 1455 6522 50  0000 R CNN
F 2 "" H 1450 6650 50  0001 C CNN
F 3 "" H 1450 6650 50  0001 C CNN
	1    1450 6650
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 4950 1700 4950
Wire Wire Line
	1450 6200 1700 6200
$Comp
L power:+5V #PWR0105
U 1 1 6065B2EA
P 1550 850
F 0 "#PWR0105" H 1550 700 50  0001 C CNN
F 1 "+5V" V 1565 978 50  0000 L CNN
F 2 "" H 1550 850 50  0001 C CNN
F 3 "" H 1550 850 50  0001 C CNN
	1    1550 850 
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 6065B711
P 1550 1050
F 0 "#PWR0106" H 1550 800 50  0001 C CNN
F 1 "GND" V 1555 922 50  0000 R CNN
F 2 "" H 1550 1050 50  0001 C CNN
F 3 "" H 1550 1050 50  0001 C CNN
	1    1550 1050
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 6065C0B5
P 1450 850
F 0 "#FLG0101" H 1450 925 50  0001 C CNN
F 1 "PWR_FLAG" H 1450 1023 50  0000 C CNN
F 2 "" H 1450 850 50  0001 C CNN
F 3 "~" H 1450 850 50  0001 C CNN
	1    1450 850 
	1    0    0    -1  
$EndComp
Connection ~ 1450 850 
Wire Wire Line
	1450 850  1550 850 
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 6065DAFE
P 1450 1050
F 0 "#FLG0102" H 1450 1125 50  0001 C CNN
F 1 "PWR_FLAG" H 1450 1223 50  0000 C CNN
F 2 "" H 1450 1050 50  0001 C CNN
F 3 "~" H 1450 1050 50  0001 C CNN
	1    1450 1050
	-1   0    0    1   
$EndComp
Connection ~ 1450 1050
Wire Wire Line
	1450 1050 1550 1050
Wire Wire Line
	1200 850  1450 850 
Wire Wire Line
	1200 1050 1450 1050
$Comp
L Connector:Barrel_Jack J0
U 1 1 606418E7
P 900 950
F 0 "J0" H 957 1275 50  0000 C CNN
F 1 "Barrel_Jack" H 957 1184 50  0000 C CNN
F 2 "" H 950 910 50  0001 C CNN
F 3 "~" H 950 910 50  0001 C CNN
	1    900  950 
	1    0    0    -1  
$EndComp
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
Connection ~ 1950 6650
Wire Wire Line
	1950 7500 2950 7500
Connection ~ 1950 7500
Wire Wire Line
	1500 7500 1950 7500
Wire Wire Line
	1450 6650 1950 6650
$EndSCHEMATC