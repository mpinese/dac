EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 10
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
L Device:CP C24
U 1 1 5ED0E8A6
P 10150 1200
F 0 "C24" H 10265 1246 50  0000 L CNN
F 1 "47u" H 10265 1155 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 10188 1050 50  0001 C CNN
F 3 "https://katalog.we-online.de/pbs/datasheet/870025574002.pdf" H 10150 1200 50  0001 C CNN
F 4 "15" H 10150 1200 50  0001 C CNN "Vbias"
F 5 "LinregOutput" H 10150 1200 50  0001 C CNN "Function"
F 6 "732-6324-1-ND" H 10150 1200 50  0001 C CNN "DigiKey"
F 7 "Yes" H 10150 1200 50  0001 C CNN "Done"
	1    10150 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C25
U 1 1 5ED212CD
P 10150 2400
F 0 "C25" H 9950 2500 50  0000 L CNN
F 1 "47u" H 9950 2300 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 10188 2250 50  0001 C CNN
F 3 "https://katalog.we-online.de/pbs/datasheet/870025574002.pdf" H 10150 2400 50  0001 C CNN
F 4 "15" H 10150 2400 50  0001 C CNN "Vbias"
F 5 "LinregOutput" H 10150 2400 50  0001 C CNN "Function"
F 6 "732-6324-1-ND" H 10150 2400 50  0001 C CNN "DigiKey"
F 7 "Yes" H 10150 2400 50  0001 C CNN "Done"
	1    10150 2400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10450 2600 10450 2650
Connection ~ 10450 2600
$Comp
L Device:C_Small C23
U 1 1 5ED98552
P 9450 2500
F 0 "C23" H 9350 2800 50  0000 L CNN
F 1 "10n" H 9350 2700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9488 2350 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 9450 2500 50  0001 C CNN
F 4 "0" H 9450 2500 50  0001 C CNN "Vbias"
F 5 "LinregFF" H 9450 2500 50  0001 C CNN "Function"
F 6 "C14663" H 9450 2500 50  0001 C CNN "LCSC"
F 7 "Yes" H 9450 2500 50  0001 C CNN "Done"
	1    9450 2500
	1    0    0    1   
$EndComp
Wire Wire Line
	9450 2400 9450 2200
Connection ~ 9450 2400
Connection ~ 9450 2600
$Comp
L Device:R_Small R10
U 1 1 5ECCB358
P 10450 2300
F 0 "R10" H 10509 2346 50  0000 L CNN
F 1 "330k" H 10509 2255 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 10450 2300 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0402WGF3303TCE_C25778.pdf" H 10450 2300 50  0001 C CNN
F 4 "LinregSetpoint" H 10450 2300 50  0001 C CNN "Function"
F 5 "C25778" H 10450 2300 50  0001 C CNN "LCSC"
F 6 "Yes" H 10450 2300 50  0001 C CNN "Done"
	1    10450 2300
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR037
U 1 1 5ED21A56
P 10700 1850
F 0 "#PWR037" H 10700 1600 50  0001 C CNN
F 1 "GND" H 10705 1677 50  0000 C CNN
F 2 "" H 10700 1850 50  0001 C CNN
F 3 "" H 10700 1850 50  0001 C CNN
	1    10700 1850
	1    0    0    -1  
$EndComp
Text Notes 900  5350 0    50   ~ 0
PSRR calculations\n------------\n\nLinreg best PSRR:\nTPS7A47: >= 1 V dropout, C_NR = 1u, C_OUT = 50u.  PSRR > 60 dB up to 100 kHz\nTPA7A33: >= 0.5 V dropout, C_OUT >= 47 u, C_NR = 10n, C_FF = 10n. PSRR > 60 dB up to 40 kHz.\n\nAim for > 60 dB PSRR from either filtering or linreg action up to 100 MHz.  To achieve this we need\nEMI filtering of > 10 dB @ 40 kHz and above, > 20 dB @ 200 kHz and above, and > 30 dB @ 500 kHz and above.\n\nThe filters in the external PSU have been designed to yield this. Performance with the 1x47 uF decoupling cap\non this schematic and the 1 Ohm resistor, as voltage at the linreg input, is below.\n
$Comp
L power:+10V #PWR033
U 1 1 5ED366FD
P 10450 850
F 0 "#PWR033" H 10450 700 50  0001 C CNN
F 1 "+10V" H 10465 1023 50  0000 C CNN
F 2 "" H 10450 850 50  0001 C CNN
F 3 "" H 10450 850 50  0001 C CNN
	1    10450 850 
	1    0    0    -1  
$EndComp
$Comp
L power:-10V #PWR034
U 1 1 5ED37B5C
P 10450 2750
F 0 "#PWR034" H 10450 2850 50  0001 C CNN
F 1 "-10V" H 10465 2923 50  0000 C CNN
F 2 "" H 10450 2750 50  0001 C CNN
F 3 "" H 10450 2750 50  0001 C CNN
	1    10450 2750
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R9
U 1 1 5ED25C27
P 10450 2100
F 0 "R9" H 10509 2146 50  0000 L CNN
F 1 "33k" H 10509 2055 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 10450 2100 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0402WGF3302TCE_C25779.pdf" H 10450 2100 50  0001 C CNN
F 4 "LinregSetpoint" H 10450 2100 50  0001 C CNN "Function"
F 5 "C25779" H 10450 2100 50  0001 C CNN "LCSC"
F 6 "Yes" H 10450 2100 50  0001 C CNN "Done"
	1    10450 2100
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R11
U 1 1 5ED3CEA5
P 10450 2500
F 0 "R11" H 10509 2546 50  0000 L CNN
F 1 "120k" H 10509 2455 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 10450 2500 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0402WGF1203TCE_C25750.pdf" H 10450 2500 50  0001 C CNN
F 4 "LinregSetpoint" H 10450 2500 50  0001 C CNN "Function"
F 5 "C25750" H 10450 2500 50  0001 C CNN "LCSC"
F 6 "Yes" H 10450 2500 50  0001 C CNN "Done"
	1    10450 2500
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R8
U 1 1 5ED3D667
P 10450 1900
F 0 "R8" H 10509 1946 50  0000 L CNN
F 1 "27k" H 10509 1855 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 10450 1900 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0402WGF2702TCE_C25771.pdf" H 10450 1900 50  0001 C CNN
F 4 "LinregSetpoint" H 10450 1900 50  0001 C CNN "Function"
F 5 "C25771" H 10450 1900 50  0001 C CNN "LCSC"
F 6 "Yes" H 10450 1900 50  0001 C CNN "Done"
	1    10450 1900
	1    0    0    1   
$EndComp
Wire Wire Line
	10450 850  10450 950 
Text Label 4350 3400 2    50   ~ 0
+12V_SW
Text Label 3900 2700 0    50   ~ 0
0V
Text Label 4950 3400 0    50   ~ 0
-12V_SW
$Comp
L Device:C C19
U 1 1 5EDC4C70
P 8900 6100
F 0 "C19" H 9015 6146 50  0000 L CNN
F 1 "1u" H 9015 6055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8938 5950 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL21B105KBFNNNE_C28323.pdf" H 8900 6100 50  0001 C CNN
F 4 "C28323" H 8900 6100 50  0001 C CNN "LCSC"
F 5 "LinregInput" H 8900 6100 50  0001 C CNN "Function"
F 6 "17" H 8900 6100 50  0001 C CNN "Vbias"
F 7 "Yes" H 8900 6100 50  0001 C CNN "Done"
	1    8900 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C26
U 1 1 5EDC4C7A
P 10250 6100
F 0 "C26" H 10365 6146 50  0000 L CNN
F 1 "100u" H 10365 6055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 10288 5950 50  0001 C CNN
F 3 "http://www.illinoiscapacitor.com/pdf/seriesDocuments/RZM%20series.pdf" H 10250 6100 50  0001 C CNN
F 4 "3.3" H 10250 6100 50  0001 C CNN "Vbias"
F 5 "LinregOutput" H 10250 6100 50  0001 C CNN "Function"
F 6 "1572-1662-ND" H 10250 6100 50  0001 C CNN "DigiKey"
F 7 "Yes" H 10250 6100 50  0001 C CNN "Done"
	1    10250 6100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR035
U 1 1 5EDC816C
P 10550 5900
F 0 "#PWR035" H 10550 5750 50  0001 C CNN
F 1 "+3.3V" H 10565 6073 50  0000 C CNN
F 2 "" H 10550 5900 50  0001 C CNN
F 3 "" H 10550 5900 50  0001 C CNN
	1    10550 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR036
U 1 1 5EDD4CA1
P 10550 6250
F 0 "#PWR036" H 10550 6000 50  0001 C CNN
F 1 "GNDD" H 10554 6095 50  0000 C CNN
F 2 "" H 10550 6250 50  0001 C CNN
F 3 "" H 10550 6250 50  0001 C CNN
	1    10550 6250
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:TLV1117-33 U3
U 1 1 5EE2E3A7
P 9750 5950
F 0 "U3" H 9750 6192 50  0000 C CNN
F 1 "TLV1117-33" H 9750 6101 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 9750 5950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tlv1117.pdf" H 9750 5950 50  0001 C CNN
F 4 "296-28778-1-ND" H 9750 5950 50  0001 C CNN "DigiKey"
F 5 "Yes" H 9750 5950 50  0001 C CNN "Done"
	1    9750 5950
	1    0    0    -1  
$EndComp
Connection ~ 9750 6250
$Comp
L dac:EC2-5NU K2
U 1 1 5ED6AB66
P 4650 3200
F 0 "K2" H 4650 3665 50  0000 C CNN
F 1 "EC2-5NU" H 4650 3574 50  0000 C CNN
F 2 "mainboard:RELAY_EC2-5NU" H 4650 3200 50  0001 L BNN
F 3 "https://api.kemet.com/component-edge/download/datasheet/EC2-5NU.pdf" H 4650 3200 50  0001 L BNN
F 4 "399-11052-5-ND" H 4650 3200 50  0001 C CNN "DigiKey"
F 5 "Yes" H 4650 3200 50  0001 C CNN "Done"
	1    4650 3200
	1    0    0    -1  
$EndComp
Text HLabel 3650 1450 0    50   Input ~ 0
POWERON
Text HLabel 3650 1650 0    50   Output ~ 0
RELAYPWR
Wire Wire Line
	5000 2050 4950 2050
Wire Wire Line
	5000 3000 4950 3000
Wire Wire Line
	3650 2350 3900 2350
Wire Wire Line
	3650 3300 4350 3300
Wire Wire Line
	5150 3700 5150 3300
Wire Wire Line
	5150 3300 4950 3300
Wire Wire Line
	3650 3700 5150 3700
Wire Wire Line
	3650 1450 4050 1450
Wire Wire Line
	3900 2350 3900 1650
Connection ~ 3900 2350
Wire Wire Line
	3900 2350 4250 2350
Wire Wire Line
	3650 1650 3900 1650
Wire Wire Line
	4050 1450 4050 1550
Wire Wire Line
	4050 3000 4350 3000
Wire Wire Line
	4050 2050 4350 2050
Connection ~ 4050 2050
Wire Wire Line
	4050 2050 4050 3000
Text Label 5150 2450 0    50   ~ 0
+5V_SW
Wire Notes Line
	3000 4100 5500 4100
Wire Notes Line
	5500 850  3000 850 
Text Notes 3200 1250 0    50   ~ 0
Power switching\n----------\n\nPOWERON signal is supplied by the front-panel dial
Wire Notes Line
	5500 7500 5500 4300
Wire Notes Line
	800  4300 800  7500
Wire Notes Line
	2650 4100 800  4100
Wire Notes Line
	800  850  2650 850 
Wire Notes Line
	800  4300 5500 4300
Wire Notes Line
	5500 7500 800  7500
Text HLabel 3650 2350 0    50   Input ~ 0
+5V
Text HLabel 3650 2700 0    50   Input ~ 0
0V
Text HLabel 3650 3300 0    50   Input ~ 0
+12V
Text HLabel 3650 3700 0    50   Input ~ 0
-12V
NoConn ~ 4950 3200
NoConn ~ 4350 3200
NoConn ~ 4350 2250
NoConn ~ 4950 2250
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5EDD0FAC
P 9200 5950
F 0 "#FLG02" H 9200 6025 50  0001 C CNN
F 1 "PWR_FLAG" H 9200 6123 50  0000 C CNN
F 2 "" H 9200 5950 50  0001 C CNN
F 3 "~" H 9200 5950 50  0001 C CNN
	1    9200 5950
	1    0    0    -1  
$EndComp
Connection ~ 9200 5950
Wire Wire Line
	9200 5950 8900 5950
$Comp
L Device:Jumper_NC_Small JP6
U 1 1 5EE397FA
P 8250 6250
F 0 "JP6" H 8250 6371 50  0000 C CNN
F 1 "Jumper_NC_Small" H 8250 6371 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged2Bar_Pad1.0x1.5mm" H 8250 6250 50  0001 C CNN
F 3 "~" H 8250 6250 50  0001 C CNN
F 4 "Yes" H 8250 6250 50  0001 C CNN "Done"
	1    8250 6250
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 5EE75662
P 10450 950
F 0 "TP4" V 10404 1138 50  0000 L CNN
F 1 "TestPoint" V 10495 1138 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D3.0mm_Drill1.5mm" H 10650 950 50  0001 C CNN
F 3 "~" H 10650 950 50  0001 C CNN
F 4 "Yes" H 10450 950 50  0001 C CNN "Done"
	1    10450 950 
	0    1    1    0   
$EndComp
Connection ~ 10450 950 
Wire Wire Line
	10450 950  10450 1000
$Comp
L Connector:TestPoint TP5
U 1 1 5EE766AE
P 10450 2650
F 0 "TP5" V 10404 2838 50  0000 L CNN
F 1 "TestPoint" V 10495 2838 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D3.0mm_Drill1.5mm" H 10650 2650 50  0001 C CNN
F 3 "~" H 10650 2650 50  0001 C CNN
F 4 "Yes" H 10450 2650 50  0001 C CNN "Done"
	1    10450 2650
	0    1    1    0   
$EndComp
Connection ~ 10450 2650
Wire Wire Line
	10450 2650 10450 2750
$Comp
L Connector:TestPoint TP11
U 1 1 5EE776B0
P 10550 5950
F 0 "TP11" V 10504 6138 50  0000 L CNN
F 1 "TestPoint" V 10595 6138 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D3.0mm_Drill1.5mm" H 10750 5950 50  0001 C CNN
F 3 "~" H 10750 5950 50  0001 C CNN
F 4 "Yes" H 10550 5950 50  0001 C CNN "Done"
	1    10550 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 2100 5000 2050
Wire Wire Line
	3900 2700 3650 2700
Wire Wire Line
	5000 3050 5000 3000
$Comp
L power:GNDD #PWR026
U 1 1 5EDA6E04
P 5000 3050
F 0 "#PWR026" H 5000 2800 50  0001 C CNN
F 1 "GNDD" H 5004 2895 50  0001 C CNN
F 2 "" H 5000 3050 50  0001 C CNN
F 3 "" H 5000 3050 50  0001 C CNN
	1    5000 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR025
U 1 1 5EDA5ED5
P 5000 2100
F 0 "#PWR025" H 5000 1850 50  0001 C CNN
F 1 "GNDD" H 5004 1945 50  0001 C CNN
F 2 "" H 5000 2100 50  0001 C CNN
F 3 "" H 5000 2100 50  0001 C CNN
	1    5000 2100
	1    0    0    -1  
$EndComp
Connection ~ 10450 1800
Wire Wire Line
	10450 1800 10700 1800
Text Notes 950  4100 0    50   ~ 0
Power requirements:\n-------------\n\nBridge:\n25 mA @ 3.3 V (from 5V digital)\n\nASRC:\n150 mA @ 3.3 V (from 5V digital)\n\nDAC:\n45 mA @ 3.3 V (from 5V digital)\n37 mA @ 5.0 V (sourced from +10V)\n51 mA @ +/-10 V\n\nAmp:\n520 mA max @ +/-10 V\n\nMCU (incl. I2C):\n12 mA @ 3.3 V (from 5 V digital)\n\nClock:\n75 mA @ 3.3 V (from 5 V digital)\n\nSwitch:\n56 mA @ 5 V (digital)\n\nTOTAL PER RAIL\n5 V digital: 363 mA:\n  307 mA for 3.3 V rail\n  56 mA for relays\n+12 V: 323 mA\n  37 mA for 5 V analog rail\n  26 mA @ 10 V for I2V\n  260 mA @ 10 V for amplifier\n- 12 V: 286 mA\n  26 mA @ -10 V for I2V\n  260 mA @ -10 V for amplifier\n\nExternal PSU supplies 600 mA on 5 V,\n800 mA on +/- 12 V
Wire Notes Line
	800  850  800  4100
Wire Notes Line
	2650 850  2650 4100
Wire Notes Line
	3000 850  3000 4100
Wire Notes Line
	5500 850  5500 4100
$Comp
L dac:TPS7A49 U4
U 1 1 5EE0C12F
P 8850 1200
F 0 "U4" H 8650 1650 50  0000 C CNN
F 1 "TPS7A49" H 8650 1550 50  0000 C CNN
F 2 "Package_SO:MSOP-8-1EP_3x3mm_P0.65mm_EP1.68x1.88mm_ThermalVias" H 8800 1200 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/tps7a49.pdf" H 8800 1200 50  0001 C CNN
F 4 "296-27751-1-ND" H 8850 1200 50  0001 C CNN "DigiKey"
F 5 "Yes" H 8850 1200 50  0001 C CNN "Done"
	1    8850 1200
	1    0    0    -1  
$EndComp
$Comp
L dac:TPS7A30 U5
U 1 1 5EE0CF65
P 8850 2400
F 0 "U5" H 8850 2733 50  0000 C CNN
F 1 "TPS7A30" H 8850 2824 50  0000 C CNN
F 2 "Package_SO:MSOP-8-1EP_3x3mm_P0.65mm_EP1.68x1.88mm_ThermalVias" H 8800 2400 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/tps7a30.pdf" H 8800 2400 50  0001 C CNN
F 4 "296-27750-1-ND" H 8850 2400 50  0001 C CNN "DigiKey"
F 5 "Yes" H 8850 2400 50  0001 C CNN "Done"
	1    8850 2400
	1    0    0    1   
$EndComp
Wire Wire Line
	8450 1200 8250 1200
Wire Wire Line
	8250 1200 8250 1000
Wire Wire Line
	8250 1000 8450 1000
$Comp
L Device:C_Small C85
U 1 1 5EE260B2
P 9450 1100
F 0 "C85" H 9350 1400 50  0000 L CNN
F 1 "10n" H 9350 1300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9488 950 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 9450 1100 50  0001 C CNN
F 4 "0" H 9450 1100 50  0001 C CNN "Vbias"
F 5 "LinregFF" H 9450 1100 50  0001 C CNN "Function"
F 6 "C14663" H 9450 1100 50  0001 C CNN "LCSC"
F 7 "Yes" H 9450 1100 50  0001 C CNN "Done"
	1    9450 1100
	1    0    0    1   
$EndComp
Wire Wire Line
	9250 1200 9450 1200
Wire Wire Line
	9250 1000 9450 1000
$Comp
L Device:C_Small C30
U 1 1 5EE2D7DF
P 8950 1650
F 0 "C30" H 9050 1550 50  0000 L CNN
F 1 "10n" H 9050 1650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8988 1500 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 8950 1650 50  0001 C CNN
F 4 "0" H 8950 1650 50  0001 C CNN "Vbias"
F 5 "LinregFF" H 8950 1650 50  0001 C CNN "Function"
F 6 "C14663" H 8950 1650 50  0001 C CNN "LCSC"
F 7 "Yes" H 8950 1650 50  0001 C CNN "Done"
	1    8950 1650
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R42
U 1 1 5EE3AAE6
P 10450 1100
F 0 "R42" H 10509 1146 50  0000 L CNN
F 1 "120k" H 10509 1055 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 10450 1100 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0402WGF1203TCE_C25750.pdf" H 10450 1100 50  0001 C CNN
F 4 "LinregSetpoint" H 10450 1100 50  0001 C CNN "Function"
F 5 "C25750" H 10450 1100 50  0001 C CNN "LCSC"
F 6 "Yes" H 10450 1100 50  0001 C CNN "Done"
	1    10450 1100
	1    0    0    1   
$EndComp
Connection ~ 10450 1000
$Comp
L Device:R_Small R43
U 1 1 5EE3B67F
P 10450 1300
F 0 "R43" H 10509 1346 50  0000 L CNN
F 1 "330k" H 10509 1255 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 10450 1300 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0402WGF3303TCE_C25778.pdf" H 10450 1300 50  0001 C CNN
F 4 "LinregSetpoint" H 10450 1300 50  0001 C CNN "Function"
F 5 "C25778" H 10450 1300 50  0001 C CNN "LCSC"
F 6 "Yes" H 10450 1300 50  0001 C CNN "Done"
	1    10450 1300
	1    0    0    1   
$EndComp
Wire Wire Line
	9450 1200 9450 1400
Connection ~ 9450 1200
$Comp
L Device:R_Small R44
U 1 1 5EE3E84C
P 10450 1500
F 0 "R44" H 10509 1546 50  0000 L CNN
F 1 "33k" H 10509 1455 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 10450 1500 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0402WGF3302TCE_C25779.pdf" H 10450 1500 50  0001 C CNN
F 4 "LinregSetpoint" H 10450 1500 50  0001 C CNN "Function"
F 5 "C25779" H 10450 1500 50  0001 C CNN "LCSC"
F 6 "Yes" H 10450 1500 50  0001 C CNN "Done"
	1    10450 1500
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R45
U 1 1 5EE3F23D
P 10450 1700
F 0 "R45" H 10509 1746 50  0000 L CNN
F 1 "27k" H 10509 1655 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 10450 1700 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0402WGF2702TCE_C25771.pdf" H 10450 1700 50  0001 C CNN
F 4 "LinregSetpoint" H 10450 1700 50  0001 C CNN "Function"
F 5 "C25771" H 10450 1700 50  0001 C CNN "LCSC"
F 6 "Yes" H 10450 1700 50  0001 C CNN "Done"
	1    10450 1700
	1    0    0    1   
$EndComp
Wire Wire Line
	8950 1800 8950 1750
Wire Wire Line
	8750 1800 8750 1550
Connection ~ 8950 1800
Connection ~ 8750 1800
Wire Wire Line
	8750 2050 8750 1800
Wire Wire Line
	8250 2400 8250 2600
Wire Wire Line
	8250 2400 8450 2400
Wire Wire Line
	8450 2600 8250 2600
Wire Wire Line
	8750 1800 8950 1800
Connection ~ 9450 1000
$Comp
L Device:C_Small C32
U 1 1 5EE750E7
P 8950 1950
F 0 "C32" H 9050 1950 50  0000 L CNN
F 1 "10n" H 9050 2000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8988 1800 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 8950 1950 50  0001 C CNN
F 4 "0" H 8950 1950 50  0001 C CNN "Vbias"
F 5 "LinregFF" H 8950 1950 50  0001 C CNN "Function"
F 6 "C14663" H 8950 1950 50  0001 C CNN "LCSC"
F 7 "Yes" H 8950 1950 50  0001 C CNN "Done"
	1    8950 1950
	1    0    0    1   
$EndComp
Wire Wire Line
	8950 1850 8950 1800
$Comp
L Device:C C89
U 1 1 5EE060A4
P 9750 2400
F 0 "C89" H 9600 2500 50  0000 L CNN
F 1 "2.2u" H 9550 2300 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 9788 2250 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL31B225KBHNNNE_C50254.pdf" H 9750 2400 50  0001 C CNN
F 4 "C50254" H 9750 2400 50  0001 C CNN "LCSC"
F 5 "LinregOutput" H 9750 2400 50  0001 C CNN "Function"
F 6 "10" H 9750 2400 50  0001 C CNN "Vbias"
F 7 "Yes" H 9750 2400 50  0001 C CNN "Done"
	1    9750 2400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9450 1400 10450 1400
Connection ~ 10450 1400
Wire Wire Line
	8950 1800 9750 1800
Wire Wire Line
	9450 1000 9750 1000
Connection ~ 9750 1000
Connection ~ 9750 1800
Wire Wire Line
	9750 1800 10150 1800
Connection ~ 10150 1800
Wire Wire Line
	10150 1800 10450 1800
Wire Wire Line
	9750 1000 9750 1050
Wire Wire Line
	9750 1000 10150 1000
Wire Wire Line
	10150 1000 10150 1050
Connection ~ 10150 1000
Wire Wire Line
	10150 1000 10450 1000
$Comp
L Device:C C88
U 1 1 5EDF39E8
P 9750 1200
F 0 "C88" H 9865 1246 50  0000 L CNN
F 1 "2.2u" H 9865 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 9788 1050 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL31B225KBHNNNE_C50254.pdf" H 9750 1200 50  0001 C CNN
F 4 "C50254" H 9750 1200 50  0001 C CNN "LCSC"
F 5 "LinregOutput" H 9750 1200 50  0001 C CNN "Function"
F 6 "10" H 9750 1200 50  0001 C CNN "Vbias"
F 7 "Yes" H 9750 1200 50  0001 C CNN "Done"
	1    9750 1200
	1    0    0    1   
$EndComp
Wire Wire Line
	10150 1350 10150 1800
Wire Wire Line
	9750 1800 9750 1350
Wire Wire Line
	9750 2550 9750 2600
Wire Wire Line
	9750 2600 10150 2600
Wire Wire Line
	10150 2550 10150 2600
Connection ~ 10150 2600
Wire Wire Line
	10150 2600 10450 2600
Wire Wire Line
	10150 2250 10150 1800
Wire Wire Line
	9750 1800 9750 2250
Wire Wire Line
	9250 2400 9450 2400
Wire Wire Line
	9250 2600 9450 2600
Wire Wire Line
	9450 2600 9750 2600
Connection ~ 9750 2600
Wire Wire Line
	8050 2400 8050 2600
Wire Wire Line
	8050 1200 8050 1000
Wire Wire Line
	6950 1000 7050 1000
Text Label 6950 1800 2    50   ~ 0
0V
Text Label 6950 1000 2    50   ~ 0
+12V_SW
$Comp
L Device:R R5
U 1 1 5ED4C56F
P 7200 1000
F 0 "R5" V 7100 950 50  0000 C CNN
F 1 "1" V 7100 1100 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 7130 1000 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-1206W4F100KT5E_C17928.pdf" H 7200 1000 50  0001 C CNN
F 4 "C17928" V 7200 1000 50  0001 C CNN "LCSC"
F 5 "Yes" V 7200 1000 50  0001 C CNN "Done"
	1    7200 1000
	0    1    1    0   
$EndComp
$Comp
L Device:CP C14
U 1 1 5ED40436
P 7650 1350
F 0 "C14" H 7765 1396 50  0000 L CNN
F 1 "47u" H 7765 1305 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 7688 1200 50  0001 C CNN
F 3 "https://katalog.we-online.de/pbs/datasheet/870025574002.pdf" H 7650 1350 50  0001 C CNN
F 4 "15" H 7650 1350 50  0001 C CNN "Vbias"
F 5 "LinregOutput" H 7650 1350 50  0001 C CNN "Function"
F 6 "732-6324-1-ND" H 7650 1350 50  0001 C CNN "DigiKey"
F 7 "Yes" H 7650 1350 50  0001 C CNN "Done"
	1    7650 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C15
U 1 1 5ED3F081
P 7650 2250
F 0 "C15" H 7400 2350 50  0000 L CNN
F 1 "47u" H 7400 2250 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 7688 2100 50  0001 C CNN
F 3 "https://katalog.we-online.de/pbs/datasheet/870025574002.pdf" H 7650 2250 50  0001 C CNN
F 4 "15" H 7650 2250 50  0001 C CNN "Vbias"
F 5 "LinregOutput" H 7650 2250 50  0001 C CNN "Function"
F 6 "732-6324-1-ND" H 7650 2250 50  0001 C CNN "DigiKey"
F 7 "Yes" H 7650 2250 50  0001 C CNN "Done"
	1    7650 2250
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 5ED1F040
P 8050 2250
F 0 "C18" H 8165 2296 50  0000 L CNN
F 1 "1u" H 8165 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8088 2100 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL21B105KBFNNNE_C28323.pdf" H 8050 2250 50  0001 C CNN
F 4 "C28323" H 8050 2250 50  0001 C CNN "LCSC"
F 5 "LinregInput" H 8050 2250 50  0001 C CNN "Function"
F 6 "17" H 8050 2250 50  0001 C CNN "Vbias"
F 7 "Yes" H 8050 2250 50  0001 C CNN "Done"
	1    8050 2250
	1    0    0    1   
$EndComp
$Comp
L Device:C C17
U 1 1 5ED0E206
P 8050 1350
F 0 "C17" H 8165 1396 50  0000 L CNN
F 1 "1u" H 8165 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8088 1200 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL21B105KBFNNNE_C28323.pdf" H 8050 1350 50  0001 C CNN
F 4 "C28323" H 8050 1350 50  0001 C CNN "LCSC"
F 5 "LinregInput" H 8050 1350 50  0001 C CNN "Function"
F 6 "17" H 8050 1350 50  0001 C CNN "Vbias"
F 7 "Yes" H 8050 1350 50  0001 C CNN "Done"
	1    8050 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 1500 8050 1800
Connection ~ 8250 2600
Connection ~ 8250 1000
Connection ~ 8050 1000
Connection ~ 8050 2600
Connection ~ 8050 1800
Wire Wire Line
	8050 1800 8050 2100
$Comp
L Device:R R6
U 1 1 5ED5E5D1
P 7200 2600
F 0 "R6" V 7100 2550 50  0000 C CNN
F 1 "1" V 7100 2700 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 7130 2600 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-1206W4F100KT5E_C17928.pdf" H 7200 2600 50  0001 C CNN
F 4 "C17928" V 7200 2600 50  0001 C CNN "LCSC"
F 5 "Yes" V 7200 2600 50  0001 C CNN "Done"
	1    7200 2600
	0    1    1    0   
$EndComp
Text Label 6950 2600 2    50   ~ 0
-12V_SW
Wire Wire Line
	9450 2200 10450 2200
Connection ~ 10450 2200
$Comp
L Device:CP C92
U 1 1 5EF079E1
P 10150 3750
F 0 "C92" H 10265 3796 50  0000 L CNN
F 1 "47u" H 10265 3705 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 10188 3600 50  0001 C CNN
F 3 "https://katalog.we-online.de/pbs/datasheet/870025574002.pdf" H 10150 3750 50  0001 C CNN
F 4 "15" H 10150 3750 50  0001 C CNN "Vbias"
F 5 "LinregOutput" H 10150 3750 50  0001 C CNN "Function"
F 6 "732-6324-1-ND" H 10150 3750 50  0001 C CNN "DigiKey"
F 7 "Yes" H 10150 3750 50  0001 C CNN "Done"
	1    10150 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C93
U 1 1 5EF079EF
P 10150 4950
F 0 "C93" H 9950 5050 50  0000 L CNN
F 1 "47u" H 9950 4850 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 10188 4800 50  0001 C CNN
F 3 "https://katalog.we-online.de/pbs/datasheet/870025574002.pdf" H 10150 4950 50  0001 C CNN
F 4 "15" H 10150 4950 50  0001 C CNN "Vbias"
F 5 "LinregOutput" H 10150 4950 50  0001 C CNN "Function"
F 6 "732-6324-1-ND" H 10150 4950 50  0001 C CNN "DigiKey"
F 7 "Yes" H 10150 4950 50  0001 C CNN "Done"
	1    10150 4950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10450 5150 10450 5200
Connection ~ 10450 5150
$Comp
L Device:C_Small C87
U 1 1 5EF079FF
P 9450 5050
F 0 "C87" H 9350 5350 50  0000 L CNN
F 1 "10n" H 9350 5250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9488 4900 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 9450 5050 50  0001 C CNN
F 4 "0" H 9450 5050 50  0001 C CNN "Vbias"
F 5 "LinregFF" H 9450 5050 50  0001 C CNN "Function"
F 6 "C14663" H 9450 5050 50  0001 C CNN "LCSC"
F 7 "Yes" H 9450 5050 50  0001 C CNN "Done"
	1    9450 5050
	1    0    0    1   
$EndComp
Wire Wire Line
	9450 4950 9450 4750
Connection ~ 9450 4950
Connection ~ 9450 5150
$Comp
L Device:R_Small R52
U 1 1 5EF07A0F
P 10450 4850
F 0 "R52" H 10509 4896 50  0000 L CNN
F 1 "330k" H 10509 4805 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 10450 4850 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0402WGF3303TCE_C25778.pdf" H 10450 4850 50  0001 C CNN
F 4 "LinregSetpoint" H 10450 4850 50  0001 C CNN "Function"
F 5 "C25778" H 10450 4850 50  0001 C CNN "LCSC"
F 6 "Yes" H 10450 4850 50  0001 C CNN "Done"
	1    10450 4850
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R51
U 1 1 5EF07A3B
P 10450 4650
F 0 "R51" H 10509 4696 50  0000 L CNN
F 1 "33k" H 10509 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 10450 4650 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0402WGF3302TCE_C25779.pdf" H 10450 4650 50  0001 C CNN
F 4 "LinregSetpoint" H 10450 4650 50  0001 C CNN "Function"
F 5 "C25779" H 10450 4650 50  0001 C CNN "LCSC"
F 6 "Yes" H 10450 4650 50  0001 C CNN "Done"
	1    10450 4650
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R53
U 1 1 5EF07A48
P 10450 5050
F 0 "R53" H 10509 5096 50  0000 L CNN
F 1 "120k" H 10509 5005 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 10450 5050 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0402WGF1203TCE_C25750.pdf" H 10450 5050 50  0001 C CNN
F 4 "LinregSetpoint" H 10450 5050 50  0001 C CNN "Function"
F 5 "C25750" H 10450 5050 50  0001 C CNN "LCSC"
F 6 "Yes" H 10450 5050 50  0001 C CNN "Done"
	1    10450 5050
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R50
U 1 1 5EF07A55
P 10450 4450
F 0 "R50" H 10509 4496 50  0000 L CNN
F 1 "27k" H 10509 4405 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 10450 4450 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0402WGF2702TCE_C25771.pdf" H 10450 4450 50  0001 C CNN
F 4 "LinregSetpoint" H 10450 4450 50  0001 C CNN "Function"
F 5 "C25771" H 10450 4450 50  0001 C CNN "LCSC"
F 6 "Yes" H 10450 4450 50  0001 C CNN "Done"
	1    10450 4450
	1    0    0    1   
$EndComp
Wire Wire Line
	10450 3400 10450 3500
$Comp
L Connector:TestPoint TP13
U 1 1 5EF07A60
P 10450 3500
F 0 "TP13" V 10404 3688 50  0000 L CNN
F 1 "TestPoint" V 10495 3688 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D3.0mm_Drill1.5mm" H 10650 3500 50  0001 C CNN
F 3 "~" H 10650 3500 50  0001 C CNN
F 4 "Yes" H 10450 3500 50  0001 C CNN "Done"
	1    10450 3500
	0    1    1    0   
$EndComp
Connection ~ 10450 3500
Wire Wire Line
	10450 3500 10450 3550
$Comp
L Connector:TestPoint TP14
U 1 1 5EF07A6C
P 10450 5200
F 0 "TP14" V 10404 5388 50  0000 L CNN
F 1 "TestPoint" V 10495 5388 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D3.0mm_Drill1.5mm" H 10650 5200 50  0001 C CNN
F 3 "~" H 10650 5200 50  0001 C CNN
F 4 "Yes" H 10450 5200 50  0001 C CNN "Done"
	1    10450 5200
	0    1    1    0   
$EndComp
Connection ~ 10450 5200
Wire Wire Line
	10450 5200 10450 5300
Connection ~ 10450 4350
$Comp
L dac:TPS7A49 U19
U 1 1 5EF07A7A
P 8850 3750
F 0 "U19" H 8850 4175 50  0000 C CNN
F 1 "TPS7A49" H 8850 4084 50  0000 C CNN
F 2 "Package_SO:MSOP-8-1EP_3x3mm_P0.65mm_EP1.68x1.88mm_ThermalVias" H 8800 3750 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/tps7a49.pdf" H 8800 3750 50  0001 C CNN
F 4 "296-27751-1-ND" H 8850 3750 50  0001 C CNN "DigiKey"
F 5 "Yes" H 8850 3750 50  0001 C CNN "Done"
	1    8850 3750
	1    0    0    -1  
$EndComp
$Comp
L dac:TPS7A30 U20
U 1 1 5EF07A84
P 8850 4950
F 0 "U20" H 8850 5283 50  0000 C CNN
F 1 "TPS7A30" H 8850 5374 50  0000 C CNN
F 2 "Package_SO:MSOP-8-1EP_3x3mm_P0.65mm_EP1.68x1.88mm_ThermalVias" H 8800 4950 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/tps7a30.pdf" H 8800 4950 50  0001 C CNN
F 4 "296-27750-1-ND" H 8850 4950 50  0001 C CNN "DigiKey"
F 5 "Yes" H 8850 4950 50  0001 C CNN "Done"
	1    8850 4950
	1    0    0    1   
$EndComp
Wire Wire Line
	8450 3750 8250 3750
Wire Wire Line
	8250 3750 8250 3550
Wire Wire Line
	8250 3550 8450 3550
$Comp
L Device:C_Small C86
U 1 1 5EF07A95
P 9450 3650
F 0 "C86" H 9350 3950 50  0000 L CNN
F 1 "10n" H 9350 3850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9488 3500 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 9450 3650 50  0001 C CNN
F 4 "0" H 9450 3650 50  0001 C CNN "Vbias"
F 5 "LinregFF" H 9450 3650 50  0001 C CNN "Function"
F 6 "C14663" H 9450 3650 50  0001 C CNN "LCSC"
F 7 "Yes" H 9450 3650 50  0001 C CNN "Done"
	1    9450 3650
	1    0    0    1   
$EndComp
Wire Wire Line
	9250 3750 9450 3750
Wire Wire Line
	9250 3550 9450 3550
$Comp
L Device:C_Small C83
U 1 1 5EF07AA5
P 8950 4200
F 0 "C83" H 9050 4100 50  0000 L CNN
F 1 "10n" H 9050 4200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8988 4050 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 8950 4200 50  0001 C CNN
F 4 "0" H 8950 4200 50  0001 C CNN "Vbias"
F 5 "LinregFF" H 8950 4200 50  0001 C CNN "Function"
F 6 "C14663" H 8950 4200 50  0001 C CNN "LCSC"
F 7 "Yes" H 8950 4200 50  0001 C CNN "Done"
	1    8950 4200
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R46
U 1 1 5EF07AB2
P 10450 3650
F 0 "R46" H 10509 3696 50  0000 L CNN
F 1 "120k" H 10509 3605 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 10450 3650 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0402WGF1203TCE_C25750.pdf" H 10450 3650 50  0001 C CNN
F 4 "LinregSetpoint" H 10450 3650 50  0001 C CNN "Function"
F 5 "C25750" H 10450 3650 50  0001 C CNN "LCSC"
F 6 "Yes" H 10450 3650 50  0001 C CNN "Done"
	1    10450 3650
	1    0    0    1   
$EndComp
Connection ~ 10450 3550
$Comp
L Device:R_Small R47
U 1 1 5EF07AC0
P 10450 3850
F 0 "R47" H 10509 3896 50  0000 L CNN
F 1 "330k" H 10509 3805 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 10450 3850 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0402WGF3303TCE_C25778.pdf" H 10450 3850 50  0001 C CNN
F 4 "LinregSetpoint" H 10450 3850 50  0001 C CNN "Function"
F 5 "C25778" H 10450 3850 50  0001 C CNN "LCSC"
F 6 "Yes" H 10450 3850 50  0001 C CNN "Done"
	1    10450 3850
	1    0    0    1   
$EndComp
Wire Wire Line
	9450 3750 9450 3950
Connection ~ 9450 3750
$Comp
L Device:R_Small R48
U 1 1 5EF07ACF
P 10450 4050
F 0 "R48" H 10509 4096 50  0000 L CNN
F 1 "33k" H 10509 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 10450 4050 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0402WGF3302TCE_C25779.pdf" H 10450 4050 50  0001 C CNN
F 4 "LinregSetpoint" H 10450 4050 50  0001 C CNN "Function"
F 5 "C25779" H 10450 4050 50  0001 C CNN "LCSC"
F 6 "Yes" H 10450 4050 50  0001 C CNN "Done"
	1    10450 4050
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R49
U 1 1 5EF07ADC
P 10450 4250
F 0 "R49" H 10509 4296 50  0000 L CNN
F 1 "27k" H 10509 4205 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 10450 4250 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0402WGF2702TCE_C25771.pdf" H 10450 4250 50  0001 C CNN
F 4 "LinregSetpoint" H 10450 4250 50  0001 C CNN "Function"
F 5 "C25771" H 10450 4250 50  0001 C CNN "LCSC"
F 6 "Yes" H 10450 4250 50  0001 C CNN "Done"
	1    10450 4250
	1    0    0    1   
$EndComp
Wire Wire Line
	8950 4350 8950 4300
Wire Wire Line
	8750 4350 8750 4100
Connection ~ 8950 4350
Connection ~ 8750 4350
Wire Wire Line
	8750 4600 8750 4350
Wire Wire Line
	8250 4950 8250 5150
Wire Wire Line
	8250 4950 8450 4950
Wire Wire Line
	8450 5150 8250 5150
Wire Wire Line
	8750 4350 8950 4350
Connection ~ 9450 3550
$Comp
L Device:C_Small C84
U 1 1 5EF07AF4
P 8950 4500
F 0 "C84" H 9050 4500 50  0000 L CNN
F 1 "10n" H 9050 4550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8988 4350 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 8950 4500 50  0001 C CNN
F 4 "0" H 8950 4500 50  0001 C CNN "Vbias"
F 5 "LinregFF" H 8950 4500 50  0001 C CNN "Function"
F 6 "C14663" H 8950 4500 50  0001 C CNN "LCSC"
F 7 "Yes" H 8950 4500 50  0001 C CNN "Done"
	1    8950 4500
	1    0    0    1   
$EndComp
Wire Wire Line
	8950 4400 8950 4350
$Comp
L Device:C C91
U 1 1 5EF07B03
P 9750 4950
F 0 "C91" H 9600 5050 50  0000 L CNN
F 1 "2.2u" H 9550 4850 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 9788 4800 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL31B225KBHNNNE_C50254.pdf" H 9750 4950 50  0001 C CNN
F 4 "C50254" H 9750 4950 50  0001 C CNN "LCSC"
F 5 "LinregOutput" H 9750 4950 50  0001 C CNN "Function"
F 6 "10" H 9750 4950 50  0001 C CNN "Vbias"
F 7 "Yes" H 9750 4950 50  0001 C CNN "Done"
	1    9750 4950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9450 3950 10450 3950
Connection ~ 10450 3950
Wire Wire Line
	8950 4350 9750 4350
Wire Wire Line
	9450 3550 9750 3550
Connection ~ 9750 3550
Connection ~ 9750 4350
Wire Wire Line
	9750 4350 10150 4350
Connection ~ 10150 4350
Wire Wire Line
	10150 4350 10450 4350
Wire Wire Line
	9750 3550 9750 3600
Wire Wire Line
	9750 3550 10150 3550
Wire Wire Line
	10150 3550 10150 3600
Connection ~ 10150 3550
Wire Wire Line
	10150 3550 10450 3550
$Comp
L Device:C C90
U 1 1 5EF07B1F
P 9750 3750
F 0 "C90" H 9865 3796 50  0000 L CNN
F 1 "2.2u" H 9865 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 9788 3600 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL31B225KBHNNNE_C50254.pdf" H 9750 3750 50  0001 C CNN
F 4 "C50254" H 9750 3750 50  0001 C CNN "LCSC"
F 5 "LinregOutput" H 9750 3750 50  0001 C CNN "Function"
F 6 "10" H 9750 3750 50  0001 C CNN "Vbias"
F 7 "Yes" H 9750 3750 50  0001 C CNN "Done"
	1    9750 3750
	1    0    0    1   
$EndComp
Wire Wire Line
	10150 3900 10150 4350
Wire Wire Line
	9750 4350 9750 3900
Wire Wire Line
	9750 5100 9750 5150
Wire Wire Line
	9750 5150 10150 5150
Wire Wire Line
	10150 5100 10150 5150
Connection ~ 10150 5150
Wire Wire Line
	10150 5150 10450 5150
Wire Wire Line
	10150 4800 10150 4350
Wire Wire Line
	9750 4350 9750 4800
Wire Wire Line
	9250 4950 9450 4950
Wire Wire Line
	9250 5150 9450 5150
Wire Wire Line
	9450 5150 9750 5150
Connection ~ 9750 5150
$Comp
L Device:C C21
U 1 1 5EF07B3C
P 8050 4800
F 0 "C21" H 8165 4846 50  0000 L CNN
F 1 "1u" H 8165 4755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8088 4650 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL21B105KBFNNNE_C28323.pdf" H 8050 4800 50  0001 C CNN
F 4 "C28323" H 8050 4800 50  0001 C CNN "LCSC"
F 5 "LinregInput" H 8050 4800 50  0001 C CNN "Function"
F 6 "17" H 8050 4800 50  0001 C CNN "Vbias"
F 7 "Yes" H 8050 4800 50  0001 C CNN "Done"
	1    8050 4800
	1    0    0    1   
$EndComp
$Comp
L Device:C C20
U 1 1 5EF07B4A
P 8050 3900
F 0 "C20" H 8165 3946 50  0000 L CNN
F 1 "1u" H 8165 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8088 3750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL21B105KBFNNNE_C28323.pdf" H 8050 3900 50  0001 C CNN
F 4 "C28323" H 8050 3900 50  0001 C CNN "LCSC"
F 5 "LinregInput" H 8050 3900 50  0001 C CNN "Function"
F 6 "17" H 8050 3900 50  0001 C CNN "Vbias"
F 7 "Yes" H 8050 3900 50  0001 C CNN "Done"
	1    8050 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 4050 8050 4350
Wire Wire Line
	8050 5150 8250 5150
Connection ~ 8250 5150
Wire Wire Line
	8050 3550 8250 3550
Connection ~ 8250 3550
Connection ~ 8050 3550
Connection ~ 8050 5150
Connection ~ 8050 4350
Wire Wire Line
	8050 4350 8050 4650
Wire Wire Line
	8050 4350 8600 4350
Wire Wire Line
	9450 4750 10450 4750
Connection ~ 10450 4750
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5EF83E1C
P 7500 1000
F 0 "#FLG0101" H 7500 1075 50  0001 C CNN
F 1 "PWR_FLAG" H 7500 1173 50  0000 C CNN
F 2 "" H 7500 1000 50  0001 C CNN
F 3 "~" H 7500 1000 50  0001 C CNN
	1    7500 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 1000 7650 1000
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5EF84A2C
P 7500 2600
F 0 "#FLG0102" H 7500 2675 50  0001 C CNN
F 1 "PWR_FLAG" H 7500 2750 50  0000 C CNN
F 2 "" H 7500 2600 50  0001 C CNN
F 3 "~" H 7500 2600 50  0001 C CNN
	1    7500 2600
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5EFBBD92
P 9200 6250
F 0 "#FLG0103" H 9200 6325 50  0001 C CNN
F 1 "PWR_FLAG" H 9200 6423 50  0000 C CNN
F 2 "" H 9200 6250 50  0001 C CNN
F 3 "~" H 9200 6250 50  0001 C CNN
	1    9200 6250
	-1   0    0    1   
$EndComp
Wire Wire Line
	10050 5950 10250 5950
Wire Wire Line
	9750 6250 10250 6250
Connection ~ 10250 5950
Connection ~ 10250 6250
Wire Wire Line
	10250 5950 10550 5950
Wire Wire Line
	9200 5950 9450 5950
Wire Wire Line
	10250 6250 10550 6250
Wire Wire Line
	8900 6250 9200 6250
$Comp
L Device:CP C22
U 1 1 5EDFD1E9
P 7650 3900
F 0 "C22" H 7765 3946 50  0000 L CNN
F 1 "47u" H 7765 3855 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 7688 3750 50  0001 C CNN
F 3 "https://katalog.we-online.de/pbs/datasheet/870025574002.pdf" H 7650 3900 50  0001 C CNN
F 4 "15" H 7650 3900 50  0001 C CNN "Vbias"
F 5 "LinregOutput" H 7650 3900 50  0001 C CNN "Function"
F 6 "732-6324-1-ND" H 7650 3900 50  0001 C CNN "DigiKey"
F 7 "Yes" H 7650 3900 50  0001 C CNN "Done"
	1    7650 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C94
U 1 1 5EDFD96D
P 7650 4800
F 0 "C94" H 7765 4846 50  0000 L CNN
F 1 "47u" H 7765 4755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 7688 4650 50  0001 C CNN
F 3 "https://katalog.we-online.de/pbs/datasheet/870025574002.pdf" H 7650 4800 50  0001 C CNN
F 4 "15" H 7650 4800 50  0001 C CNN "Vbias"
F 5 "LinregOutput" H 7650 4800 50  0001 C CNN "Function"
F 6 "732-6324-1-ND" H 7650 4800 50  0001 C CNN "DigiKey"
F 7 "Yes" H 7650 4800 50  0001 C CNN "Done"
	1    7650 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 4650 7650 4350
Connection ~ 7650 4350
Wire Wire Line
	7650 4350 7650 4050
Wire Wire Line
	8600 1550 8600 1800
Connection ~ 8600 1800
Wire Wire Line
	8600 1800 8750 1800
Wire Wire Line
	8600 1800 8600 2050
Wire Wire Line
	8600 4100 8600 4350
Connection ~ 8600 4350
Wire Wire Line
	8600 4350 8750 4350
Wire Wire Line
	8600 4600 8600 4350
Text GLabel 10450 5300 2    50   Input ~ 0
-10V_AMP
Text GLabel 10450 3400 2    50   Input ~ 0
+10V_AMP
Text Label 8000 6250 2    50   ~ 0
0V
Text Label 8000 5950 2    50   ~ 0
+5V_SW
Wire Wire Line
	8000 6250 8150 6250
Wire Wire Line
	8400 5950 8500 5950
$Comp
L Device:R R7
U 1 1 5EDC4CCC
P 8250 5950
F 0 "R7" V 8150 5850 50  0000 C CNN
F 1 "1" V 8150 6000 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 8180 5950 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-1206W4F100KT5E_C17928.pdf" H 8250 5950 50  0001 C CNN
F 4 "C17928" V 8250 5950 50  0001 C CNN "LCSC"
F 5 "Yes" V 8250 5950 50  0001 C CNN "Done"
	1    8250 5950
	0    1    1    0   
$EndComp
$Comp
L Device:CP C13
U 1 1 5EDC4CC2
P 8500 6100
F 0 "C13" H 8615 6146 50  0000 L CNN
F 1 "47u" H 8615 6055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 8538 5950 50  0001 C CNN
F 3 "https://katalog.we-online.de/pbs/datasheet/870025574002.pdf" H 8500 6100 50  0001 C CNN
F 4 "15" H 8500 6100 50  0001 C CNN "Vbias"
F 5 "LinregOutput" H 8500 6100 50  0001 C CNN "Function"
F 6 "732-6324-1-ND" H 8500 6100 50  0001 C CNN "DigiKey"
F 7 "Yes" H 8500 6100 50  0001 C CNN "Done"
	1    8500 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3550 7650 3750
Wire Wire Line
	8050 3550 8050 3750
Wire Wire Line
	7650 3550 8050 3550
Wire Wire Line
	7650 5150 8050 5150
Wire Wire Line
	7650 4950 7650 5150
Wire Wire Line
	8050 4950 8050 5150
Wire Wire Line
	7650 1000 7650 1200
Wire Wire Line
	7650 1000 8050 1000
Connection ~ 7650 1000
Wire Wire Line
	7650 1500 7650 1800
Connection ~ 7650 1800
Wire Wire Line
	7650 2100 7650 1800
Wire Wire Line
	7650 2400 7650 2600
Connection ~ 7650 2600
Wire Wire Line
	7650 2600 8050 2600
Wire Wire Line
	7500 2600 7650 2600
Wire Wire Line
	7050 2600 6950 2600
$Comp
L Device:R R57
U 1 1 5EFB182A
P 7200 3550
F 0 "R57" V 7100 3500 50  0000 C CNN
F 1 "1" V 7100 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 7130 3550 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-1206W4F100KT5E_C17928.pdf" H 7200 3550 50  0001 C CNN
F 4 "C17928" V 7200 3550 50  0001 C CNN "LCSC"
F 5 "Yes" V 7200 3550 50  0001 C CNN "Done"
	1    7200 3550
	0    1    1    0   
$EndComp
$Comp
L Device:R R58
U 1 1 5EFBC586
P 7200 5150
F 0 "R58" V 7100 5100 50  0000 C CNN
F 1 "1" V 7100 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 7130 5150 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-1206W4F100KT5E_C17928.pdf" H 7200 5150 50  0001 C CNN
F 4 "C17928" V 7200 5150 50  0001 C CNN "LCSC"
F 5 "Yes" V 7200 5150 50  0001 C CNN "Done"
	1    7200 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	7650 1800 8050 1800
Connection ~ 7500 1000
Connection ~ 7500 2600
Wire Wire Line
	7050 4350 7500 4350
Wire Wire Line
	7650 4350 8050 4350
Wire Wire Line
	7350 3550 7500 3550
Connection ~ 7650 3550
Wire Wire Line
	7350 5150 7500 5150
Connection ~ 7650 5150
Text Label 6300 3550 2    50   ~ 0
+12V_SW
Wire Wire Line
	6300 3550 6450 3550
Text Label 6300 5150 2    50   ~ 0
-12V_SW
Wire Wire Line
	6300 5150 6450 5150
Text Label 6300 4350 2    50   ~ 0
0V
Wire Wire Line
	6300 4350 6450 4350
Wire Wire Line
	7350 1000 7500 1000
Wire Wire Line
	8050 1000 8250 1000
Wire Wire Line
	8050 2600 8250 2600
Wire Wire Line
	8050 1800 8600 1800
Wire Wire Line
	7350 2600 7500 2600
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 5F075FA8
P 7500 3550
F 0 "#FLG0104" H 7500 3625 50  0001 C CNN
F 1 "PWR_FLAG" H 7500 3723 50  0000 C CNN
F 2 "" H 7500 3550 50  0001 C CNN
F 3 "~" H 7500 3550 50  0001 C CNN
	1    7500 3550
	1    0    0    -1  
$EndComp
Connection ~ 7500 3550
Wire Wire Line
	7500 3550 7650 3550
$Comp
L power:PWR_FLAG #FLG0106
U 1 1 5F07695D
P 7500 5150
F 0 "#FLG0106" H 7500 5225 50  0001 C CNN
F 1 "PWR_FLAG" H 7500 5300 50  0000 C CNN
F 2 "" H 7500 5150 50  0001 C CNN
F 3 "~" H 7500 5150 50  0001 C CNN
	1    7500 5150
	-1   0    0    1   
$EndComp
Connection ~ 7500 5150
Wire Wire Line
	7500 5150 7650 5150
$Bitmap
Pos 2000 6500
Scale 1.000000
Data
89 50 4E 47 0D 0A 1A 0A 00 00 00 0D 49 48 44 52 00 00 02 48 00 00 02 42 08 02 00 00 00 B4 E7 AF 
9E 00 00 00 03 73 42 49 54 08 08 08 DB E1 4F E0 00 00 00 09 70 48 59 73 00 00 0E 74 00 00 0E 74 
01 6B 24 B3 D6 00 00 20 00 49 44 41 54 78 9C ED DD 3D 73 E2 CA DF E6 F1 9F B6 CE AB B8 63 E1 C0 
E5 6C 33 11 D8 29 4C E2 DA AA 75 B2 C1 64 22 84 64 32 87 CE 26 81 10 AA EE AA 33 55 FF 4D BC 89 
93 41 29 0E AC 57 E0 72 60 F4 5E B4 81 40 E8 A1 25 84 D0 63 EB FB 29 D7 39 46 12 52 37 30 5C 56 
AB D5 6D F8 BE 2F 00 00 E8 E2 7F B4 5D 00 00 00 AA 44 B0 01 00 B4 D2 DB 60 73 66 86 31 5E 79 B5 
EC 79 E6 5C BB 0F 6F 35 36 0C C3 A8 AB 88 29 F5 BD 1A 5D E1 CC 0C E3 FA F7 A5 C8 71 4E 47 A9 E2 
93 50 F6 E8 4D D5 17 D0 51 6F 83 AD 2E CE 6C BA B9 7E 27 BF 17 AE B5 DC FB BE FF 31 37 2B 28 14 
64 B2 F6 FD F5 A4 EE A3 44 DF FD 4A 3E 09 A5 8F DE 4C 7D 01 3D 11 6C 75 B9 BB 21 D2 00 A0 05 7A 
04 5B D0 6E E3 CC 8C 83 43 1B 8E B7 1A 1B E3 95 73 6C 16 8C B5 D6 25 9A 7A 9C 99 61 CC FE 7B 35 
36 A6 1B 91 CD 54 D9 B0 E7 CC 8C F1 6A 35 4B 1E 21 B1 73 2F B2 93 9C CD 14 3B 2C B6 FF 23 2F 5A 
AD EF 8C 17 26 FA FC 44 D3 D6 E9 D5 3A F7 B2 38 E7 EB 1E 7D 4E 4E 99 E3 BB 4D BD 5F C5 0B 96 5D 
AF 02 47 4F 1C 24 5A 9F E3 1B F7 3F FF D7 FF 4C 7D 12 B2 DF 44 65 5D B2 5E C9 02 47 1F AF BC 74 
53 64 DE CB 92 F1 4A 02 83 E5 F7 D4 D6 16 09 5A FB 0E 0F C2 87 FB A5 75 F8 7D BF B4 44 44 C4 DE 
9E B6 3A FC EE 6F ED D3 EF D1 87 89 E5 C9 43 9E 8E 19 3D 50 F2 41 6C 27 F9 9B 45 76 58 7C FF E9 
AA C4 9F 19 79 FE A9 2E D1 E7 A4 9F 1F 59 91 F5 B2 64 96 2D F2 66 E4 94 39 F9 4A A6 DF AF 82 05 
CB AE 57 B1 A3 C7 2A 99 AE 88 F2 13 72 E6 4D 54 D4 25 EB 95 2C 73 F4 FC 97 45 FD 4A 02 03 A6 4F 
B0 9D FE 41 87 5F 7C A9 7F E8 FB A5 75 7C 5C 32 D8 22 7B 4B 3C CC FA EE 3A B3 59 F6 0E B3 9F 98 
F8 66 4F C7 4E F2 40 09 91 97 21 79 A8 BC 97 25 AF 6C E7 5F 93 EC CD 4E D5 29 56 B0 CC 7A 15 3F 
7A 32 A2 55 71 52 EA 4D 3C ED 2D E7 95 BC F4 E8 67 5E 16 D5 D1 81 41 D3 A3 29 52 24 7A 4D CB BC 
B9 53 2E 0F D6 B8 AF 7F AF E8 3D 78 DA 9B F3 B6 11 EB E9 47 E4 42 DA E8 D6 92 CD 5B A2 2D E8 DC 
66 89 4B 71 85 F6 BF FF 72 C5 7E 8C F4 2C 98 3C DA 8A B2 4E 1E 6D D9 4C D3 AD 53 DE DF 57 37 7E 
DC D1 AD 25 EE D7 3E A3 CE E9 B2 79 DF 9F CA 8B 88 05 5F 93 C4 DE C2 F7 AB 60 C1 B2 EA 55 F4 E8 
93 75 D8 A7 C7 99 19 A3 85 AB AA EC 45 7B CE FA EC A9 5C 7E F4 73 2F CB 25 47 07 06 41 9F 60 CB 
60 DD 8E EA DB B9 BB 18 45 2E F5 64 7E 49 15 DC AC E8 13 BD EF CF 62 4F 9F AC FD FD D2 DA 4C CF 
5E 80 29 F3 85 98 F5 C2 96 AE 6C F1 82 E5 D4 AB D0 D1 4F 57 CB A6 B2 3D B6 57 9F 53 59 BD 4A 1D 
3D 8E 00 03 72 69 1F 6C E5 15 E8 86 A0 68 8D 53 75 D1 2E B8 59 D1 27 5E F2 B5 66 CE 3F 0E 4F DC 
DA B2 99 66 D4 A3 70 54 46 64 9D E1 95 AE EC 45 05 CB AA 57 81 A3 7B AB 9F 0B F7 D8 5E 57 BC 68 
15 D5 AB E4 D1 13 3B 29 F1 7E 01 03 A2 7D B0 C5 5A 1E 13 4D 4A 9F DF C7 55 AA 6F 8A D3 77 A7 F2 
76 B4 C9 A3 5D A0 F9 AE E8 66 17 3D 31 D5 C2 56 E4 8B 6E B2 DE 1E 76 68 FE 78 B2 22 75 97 A0 6D 
F3 74 06 96 FF B2 88 1C CE 18 62 7B 38 5B E6 22 CE 15 4C E9 54 AF 82 47 4F 34 E4 EE BF CE 9F 7B 
95 AD 97 E2 95 2C 71 F4 52 2F 0B 30 64 DA 07 9B B8 8B 9F 87 3F E7 9D D9 74 23 F6 73 90 51 A3 5B 
2B 0C 3D 6F F5 33 D6 B2 A4 F8 CA 56 98 FC 5A 5A D1 73 20 67 A6 3C B5 2B B8 D9 25 FB 37 E7 7F A2 
AB 9C 99 BA 61 2C 31 1C 89 F3 B6 39 7C 1B 9A F3 67 DB 5D 8C 4E 1D D3 4F AF 4B DE CB 92 28 DB E9 
85 0D 4E 6E 67 CE 15 95 0D E4 14 AC 48 BD 8A 1D 3D F6 67 C1 E1 9E E8 E8 3B AE FA BD 44 BD 32 5E 
C9 4B 8E 7E D9 CB 02 20 A4 EC 52 D2 03 A9 5E 91 8A 1E 68 41 27 B1 E5 E9 32 46 BC C3 D8 D6 3E 2D 
8F F7 72 13 65 CB 93 A2 8F 5D FC 12 49 B8 32 B9 65 B1 CD 8A EF 3F B1 CA 5A 2E 73 7A 29 CA 69 B3 
BD 7A 55 D6 8A C8 CB 72 AE 6C 91 75 39 65 CE A8 A9 A2 6B 7B AA 60 99 DB 24 8A 5F E0 E8 F1 97 6E 
1F EB 53 1A 7D F7 13 9F 84 CB DF 44 F5 07 AC D8 D1 53 2F 78 91 97 25 AF 4F 2F 30 20 86 AF F1 B4 
35 DE 6A 3C 5A DC 6D 19 9A 08 00 06 44 FF A6 48 00 C0 A0 10 6C 00 00 AD 68 DD 14 09 00 18 1E CE 
D8 00 00 5A 21 D8 00 00 5A 21 D8 00 00 5A 21 D8 00 00 5A 21 D8 00 00 5A 69 30 D8 BC D5 58 31 D5 
C8 EC CC 38 C3 00 00 5C A2 B1 60 53 0D 68 E8 CC 8C E9 E7 71 22 E2 BB C5 88 6C 03 00 5C AB 91 60 
73 66 86 31 DD 24 97 7A AB 97 8D B5 FC 73 18 CB 75 B2 DE DA EE E2 77 D6 8C 61 00 00 14 52 7F B0 
39 33 63 BA 09 47 7B 3D 49 CD 0B 9C 3D D9 32 00 00 45 FD 53 FB 11 26 6B DF 5F 8B 88 28 22 2B 36 
A7 14 D3 02 03 00 AE 57 7F B0 65 D9 7F B9 22 4F C9 A5 9F DF 9E 4C 4C 11 11 C3 30 9A 2F 14 00 A0 
47 94 A3 42 76 B7 BB 7F 62 7E 9D F4 92 4B ED 76 BB EB 37 53 AE 4D 2F 4C 2C 89 3E 54 FE 5E B0 6C 
F9 AE AF 60 4D B5 2B 5E B6 1C 5D A8 9D 9F F1 96 75 A1 76 59 6B F9 70 E6 FF AE 4D ED FC 0E 7F 38 
B3 56 E5 57 B0 C8 5B 99 15 1F ED 05 DB E8 D6 52 2C 8D 5E 74 03 00 E0 62 ED 9E B1 B9 5F FB D3 03 
EF FB B3 BD 92 00 00 34 D1 5E B0 99 3F 9E 2C F9 FC 3E DD B9 B6 FF 72 C5 7E 64 B2 6B 00 C0 35 5A 
3C 63 33 E7 CF B6 BB F8 79 B8 29 DB 99 4D 37 D6 F2 17 B9 06 00 B8 4A AB 4D 91 93 F5 7E 29 8B 91 
61 18 86 31 FD 5C EE 3F E6 5C 60 03 00 5C A7 C1 EE FE 93 75 BA 0F 8B 39 FF F0 E7 CD 15 01 00 A0 
BD EE 76 F7 07 00 A0 04 82 0D 00 A0 15 82 0D 00 A0 15 82 0D 00 A0 15 82 0D 00 A0 15 82 0D 00 A0 
15 82 0D 00 A0 15 82 0D 00 A0 15 82 0D 00 A0 15 82 0D 00 A0 15 82 0D 00 A0 15 82 0D 00 A0 15 82 
0D 00 A0 15 82 0D 00 A0 15 82 0D 00 A0 95 06 E7 63 03 00 D4 C3 10 43 EE 45 44 7C 49 CD 7B 39 3C 
9C B1 01 00 B4 42 B0 01 00 B4 42 B0 01 00 B4 42 B0 01 00 B4 42 B0 01 00 B4 42 B0 01 00 B4 42 B0 
01 00 B4 42 B0 01 00 B4 42 B0 01 00 B4 42 B0 01 00 B4 42 B0 01 00 B4 42 B0 01 00 B4 42 B0 01 00 
B4 42 B0 01 00 B4 42 B0 01 00 B4 42 B0 01 40 BF 19 62 B4 5D 84 6E 21 D8 00 00 5A 21 D8 00 00 5A 
21 D8 00 00 5A 21 D8 00 00 5A 69 3B D8 9C 99 71 30 5E 79 2D 97 05 00 A0 81 56 83 CD 99 19 D3 CF 
E5 DE F7 7D DF DF DE 2D 46 64 1B 00 E0 5A 2D 06 9B B7 7A D9 58 CB 3F 73 53 44 44 26 EB AD ED 2E 
7E 3B ED 95 07 15 7B B8 7F 68 E0 28 74 74 06 90 D0 5E B0 79 7F 5F 5D B9 BB 31 C3 05 A3 5B 4B 36 
6F 24 5B AF DD 3F DC 07 BF 04 79 63 88 11 FC 3C DC 3F 84 BF 97 FB C9 DA 83 44 B2 8D 90 03 20 22 
FF B4 7A 74 EB 76 74 7A 60 DE DC 65 6E 68 88 2F FE 95 DF 5A F7 72 7F FD 66 CA B5 E9 85 89 25 D1 
87 CA DF 0B 96 2D DF F5 15 BC BE 76 22 22 86 18 7E D1 B7 CA 37 FC E2 1B E7 08 23 ED E1 FE C1 17 
DF 10 C3 17 FF FA DD 02 E8 23 C3 F7 5B FA F7 7F B8 C0 F6 31 37 D5 4B 0C E3 F4 7D C7 97 94 DE 12 
D9 56 55 DA ED DE 77 D7 EF 04 E8 BE 68 B3 FF A0 3E F6 0F 0F 0F EA 08 F3 DB B2 B5 45 AC 43 CF 91 
AC 25 21 E1 67 78 3F 71 BB DD 4E F9 39 12 5F 8A FC 64 ED 21 BD 30 B1 24 EB 61 74 79 56 D9 8A 2B 
B8 87 FC CD AE AF A0 F2 F7 EB 6B 57 7C 27 39 9B 51 BB F4 92 F0 61 CE 47 BD 0B 1F CE AC 55 F9 15 
2C F2 56 66 45 58 7B D7 D8 46 B7 96 62 69 F4 A2 5B 84 2F 86 18 05 BF C2 B2 7E DE 77 EF D7 6F A6 
5C 9B 5E 98 58 12 7D A8 FC BD 60 D9 EA AE E0 F5 B5 AB 92 11 FF 11 51 B6 45 FB E2 07 FF F5 73 0F 
CF E5 37 60 38 DA BD 8F CD FD DA 9F 1E 78 DF 9F ED 95 04 D5 78 DF BD 8B 9C 89 F3 D8 4F 61 87 6E 
29 D9 D9 26 91 90 53 EE 21 E8 7E 72 49 6D 00 F4 52 7B C1 66 FE 78 B2 E4 F3 FB 74 E7 DA FE CB 15 
FB 71 D2 5A 81 50 91 8B CE DB FC E3 7F 8B A7 5D E2 34 2E 2E B8 C0 90 73 F6 46 B6 01 DA 6B F1 8C 
CD 9C 3F DB EE E2 E7 E1 A6 6C 67 36 DD 58 CB 5F E4 DA F0 A4 33 28 9A 76 F9 32 E2 4D 8E 8D 93 CA 
26 4A B2 0D D0 5B AB 4D 91 93 F5 7E 29 8B 91 61 18 46 B2 87 24 06 CE 8F FC 12 36 66 66 39 97 53 
64 1B 86 83 CF B6 B4 7D 8D 4D CC F9 C7 B1 1B 0B A9 86 73 72 4E E0 B2 4F DD 8E 4F 55 64 1B 5F 01 
80 96 DA 1E 04 19 B8 48 FE A5 B8 DC 9C DA BD EF D2 F1 D6 CC B8 5F 00 9A 44 B0 A1 B7 54 D9 16 8E 
E9 95 FD 24 9A 25 01 CD 11 6C E8 33 E5 A9 1B 97 DC 80 61 23 D8 D0 7F E9 78 2B 70 C9 2D 11 6F 64 
1B A0 0D 82 0D BA B8 FA D4 8D 6C 03 F4 40 B0 41 23 97 67 5B 62 C4 58 B2 0D D0 00 C1 06 AD 28 6E 
77 BB F0 BC 8D 7E 92 40 DF 11 6C D0 0E 6D 92 C0 B0 11 6C D0 D1 E5 F3 0C 90 6D 80 36 08 36 68 2A 
DD 4F F2 FC 33 C8 36 40 07 04 1B F4 15 CF B6 B3 F7 6E 0B D9 06 68 81 60 83 D6 2E 3F 6F 4B A0 2F 
09 D0 3B 04 1B 10 93 B8 01 00 40 EF 10 6C D0 1D 17 DB 80 81 21 D8 30 00 64 1B 30 24 04 1B 86 81 
6C 03 06 83 60 03 32 91 6D 40 1F 11 6C 18 8A E4 68 5B A5 42 8A 4E 92 40 F7 11 6C 18 92 CB 1B 24 
D3 F3 6E 73 DE 06 74 1C C1 86 81 B9 FC AE 6D 00 FD 42 B0 61 78 22 D9 A6 98 0D 40 FD 0C 4E DA 80 
DE 20 D8 30 3C 91 54 2A 7E C6 C6 EC 36 40 5F 10 6C 18 9E B2 E3 6C 71 DE 06 F4 02 C1 86 41 2A 9B 
6D CC B8 0D 74 1F C1 86 A1 BA 7C CE B6 E3 F3 38 6F 03 3A 8D 60 C3 80 55 94 6D 5C 6F 03 3A 85 60 
C3 80 19 19 BF 97 D9 13 E7 6D 40 57 10 6C 18 B0 2B 66 6B 4B CF 6E 43 B6 01 1D 41 B0 61 D0 0A DE 
C7 A6 E4 A7 9A 32 C9 36 A0 0B 08 36 20 E2 C2 60 4A 67 1B 80 D6 11 6C 18 BC EB 06 D9 A2 93 24 D0 
35 04 1B 50 66 90 AD 28 6E 6E 03 3A 85 60 03 4A 0E B2 15 C5 79 1B D0 1D 04 1B 70 55 F7 C8 C8 3E 
C8 36 A0 13 08 36 40 44 CA DF AC 1D DF 07 D9 06 B4 8F 60 03 54 CA 46 12 D9 06 B4 AE C1 60 F3 56 
63 63 E6 24 16 3A 33 E3 60 BC F2 9A 2B 0B A0 50 45 83 A4 90 6D 40 DB 1A 0B 36 67 36 5A B8 A9 65 
C6 F4 73 B9 F7 7D DF F7 B7 77 8B 11 D9 86 B6 F9 19 BF 5F BC 1B B2 0D 68 4D 23 C1 E6 CC 0C 63 BA 
49 2E F5 56 2F 1B 6B F9 67 6E 8A 88 C8 64 BD B5 DD C5 EF E4 19 1D D0 53 64 1B D0 96 FA 83 CD 99 
19 D3 8D B5 DC FB 5B 3B B6 DC FB FB EA CA DD 8D 19 2E 18 DD 5A B2 79 23 D9 D0 15 57 27 11 D9 86 
56 30 DD 44 FD C1 36 59 FB BE FF 31 37 55 EB AC DB D1 E9 81 79 73 57 7B 61 80 8B 90 6D 40 0F 19 
BE DF D4 60 77 CE CC 98 CA D6 5F 4F 4E 0F 3F 97 FB 48 E4 C5 97 18 46 DE 57 C0 6E B7 AB B3 AC 18 
B4 C4 3D DA D7 0C 94 1C 48 FC 05 9D 9E 19 00 B8 46 FA 14 6D 20 9F B1 87 87 07 75 84 F9 8D D9 DA 
22 F6 36 F6 D0 3A F4 1C C9 5A 12 71 7D 51 77 BB DD F5 9B 29 D7 A6 17 26 96 44 1F 2A 7F 2F 58 B6 
7C D7 57 B0 A6 DA 15 2F 5B 8E A6 6B 27 87 9F AC CA 5E 54 3B F1 25 F1 53 BC D8 C5 37 E3 C3 99 5E 
32 90 DA E5 7C C0 3A FB 4F 4F B9 3C E7 9F 95 72 55 56 2E B4 77 1F DB E8 D6 52 2C 8D 5E 74 03 5A 
72 F5 08 5B 09 41 46 C6 8F 40 9B 24 50 97 8A 83 CD 5B 8D 8D 0B 6E 4C 73 BF F6 91 E7 7E 7F 56 5B 
18 A0 A4 8A 6E 68 4B ED 35 99 6D C4 1B 50 87 8A 83 CD 9C 7F 84 27 83 19 1D 46 C2 4D 7F 3C 59 F2 
F9 7D 0A BF FD 97 2B F6 E3 A4 DA 02 01 E5 D4 73 E9 99 B9 49 51 B9 F0 23 34 90 EB 6A 45 B4 38 A4 
96 39 7F B6 DD C5 CF C3 79 9D 33 9B 6E AC E5 2F 72 0D 9D 41 B6 01 FD D4 EA 58 91 93 F5 7E 29 8B 
91 61 18 46 B2 87 24 D0 29 95 46 4F 3A DB B8 F1 08 A8 D0 3F CD 1D 6A B2 4E 77 CB 34 E7 1F FE BC 
B9 22 00 97 F1 2B 8E B4 C8 8E FD C4 89 9A 21 46 3A F0 00 94 C0 E8 FE 40 3B 94 6D 92 34 4B 02 D7 
23 D8 80 62 6A 48 9C F4 6D 00 C2 25 37 E0 6A 04 1B 90 E7 FA 61 47 CE 22 DB 80 6A 11 6C 40 61 B5 
C5 4D BA A3 36 CD 92 40 69 04 1B 70 4E 23 5D 3A 68 96 04 AA 42 B0 01 17 A8 64 84 AD 1C F4 28 01 
AE 47 B0 01 05 34 D8 0F 5F D9 E9 9F 6C 03 8A 23 D8 80 CE 21 DB 80 6B 10 6C C0 85 1A C9 17 E5 25 
37 06 28 01 8A 20 D8 80 62 DA 18 15 84 4B 6E 40 09 04 1B 70 B9 06 93 85 66 49 E0 52 04 1B 50 58 
4B 43 39 72 27 00 70 11 82 0D 28 A3 EE 7E FF 69 64 1B 50 10 C1 06 5C A0 81 11 B6 72 EC DE 77 4C 
C3 8D A8 F0 DD 67 6A 88 28 82 0D E8 3D B2 0D 88 22 D8 80 B2 5A 4A 13 2E B9 01 F9 08 36 E0 42 DD 
68 F2 E1 2E 37 20 0B C1 06 5C A1 D5 D3 24 CE DB 00 25 82 0D B8 5C 37 4E DA 84 6C 03 54 08 36 E0 
3A 6D E7 08 D9 06 24 10 6C 40 19 ED F6 FB 4F 48 77 27 21 DB 30 64 04 1B A0 89 C4 34 DC 64 1B 06 
8B 60 03 F4 C1 79 DB C0 85 1F 80 81 BF F5 04 1B 70 AD E6 87 D7 CA 91 C8 36 EE 01 C0 00 11 6C 40 
15 BA F4 F7 31 E7 6D 18 38 82 0D 28 2B D1 1B B1 C3 F1 41 B6 61 50 08 36 E0 0A 9D B9 A1 2D 81 7E 
92 43 10 B6 33 33 02 72 02 C1 06 5C 87 AF 14 A0 63 08 36 40 5B 9C B4 61 98 08 36 40 67 DC DC 86 
01 22 D8 80 EA 74 32 35 B8 01 00 43 43 B0 01 D7 EA D4 F0 5A 00 08 36 A0 52 7D 38 69 A3 41 52 63 
0C 3E 22 04 1B 50 8D CE F7 8D 24 DB 30 1C 04 1B 50 B5 AE 46 06 D9 86 81 20 D8 80 8A 74 FE A4 0D 
18 88 06 82 CD 5B 8D 8D D0 78 E5 C5 56 3A B3 AC 35 00 2A C7 49 1B 86 A0 EE 60 F3 56 E3 D1 C2 B5 
96 7B DF F7 FD FD D2 72 17 23 63 E6 1C 56 3A 33 63 FA 19 AC F2 B7 77 8B 11 D9 06 5D 74 38 2F 12 
77 B6 D1 FB 1F FA A9 39 D8 BC BF AF AE D8 DB 8F B9 29 22 62 CE 3F F6 4B 4B 36 6F 8E 88 88 B7 7A 
D9 58 CB 3F C1 2A 99 AC B7 B6 BB F8 ED E4 EC 0C E8 BA 9E B4 46 72 DE 06 BD D5 1C 6C E6 FC C3 F7 
D7 93 C8 82 9B 3B 91 CF 6F EF 90 79 77 37 66 B8 6A 74 1B 66 1E D0 7F DD 0E 8B 68 B6 31 84 2E 34 
D3 74 E7 11 E7 6D 23 A7 38 B3 6E 47 A7 55 E6 CD 5D C3 85 01 AA D7 93 8C 88 9E A5 71 C6 06 CD 18 
BE DF E0 3F 44 67 66 4C 37 D6 72 FF 31 37 8F 17 D8 0E AD 94 C7 B5 A7 25 86 91 F7 8F 6D B7 DB D5 
5D 58 A0 9C E8 84 DA 5D 1E 94 24 71 75 2D 71 ED 0D DD 17 BE 83 59 D7 4D B5 7F 4F 1F 1E 1E D4 11 
E6 37 66 6B 8B 88 D8 DB C8 C3 43 A7 92 CC 25 11 D7 17 75 B7 DB 5D BF 99 72 6D 7A 61 62 49 F4 A1 
F2 F7 82 65 CB 77 7D 05 6B AA 5D F1 B2 E5 E8 42 ED FC 8C B7 4C B1 67 39 FE 14 D3 D6 87 53 7C 89 
FE 0C F0 C3 D9 EB DA 85 6F 5C 62 6D 74 79 67 FF E9 29 97 E7 FC B3 52 AE CA CA 85 A6 9A 22 8F E7 
6A A7 0B 6E A3 5B 4B B1 5D F4 A2 1B 00 00 17 AB 38 D8 A2 F7 AC 85 9D F7 BD D5 F8 D4 02 19 E3 7E 
ED 23 CF FD FE AC B6 30 00 F2 31 F0 BF 96 C2 16 C8 C1 5E 3D AD 38 D8 CC F9 47 78 32 18 C4 58 70 
23 9B BD F5 93 A9 66 FE 78 B2 82 FE 91 07 FB 2F 57 EC C7 89 00 1A E9 FC 17 8B F6 97 61 74 15 86 
16 9D 5A D3 EA BE 8F 6D F5 73 E1 5A CB FD 5A 91 57 E6 FC D9 76 17 3F 0F E7 75 CE 6C BA B1 96 BF 
C8 35 68 A1 B7 5F 35 83 FD 1B 1F 3A A9 37 D8 BC BF AF AE 88 BB 18 19 31 C7 46 CA C9 7A BF 94 C3 
CA 44 0F 49 40 1B 9D 4F 0A EE D7 86 66 FE A9 75 EF E6 FC C3 9F 5F B5 01 D0 57 7E 0F 22 2D E4 8B 
4F D3 16 B4 C1 E8 FE 40 FD FA 93 70 C2 19 9B 16 C2 BF 4E 86 D9 21 88 60 03 6A D3 DB 33 1F B2 0D 
BD 46 B0 01 10 A1 EB 3F 34 42 B0 01 8D E8 C3 29 10 5D FF A1 07 82 0D A8 53 DF 5A 23 E9 39 D2 0B 
45 7A FA 84 AB 06 D8 B0 4C B0 01 4D 19 DC D7 0B D0 0E 82 0D A8 59 6F 4F 81 06 F8 97 3E F4 40 B0 
01 C8 44 B6 A1 8F 08 36 00 31 74 8F 44 DF 11 6C 40 83 7A 72 FE 43 17 12 F4 1A C1 06 D4 AF 87 31 
41 D7 7F F4 17 C1 06 34 AB 27 27 6D D0 C0 60 7B FC 13 6C 40 23 7A 78 D2 16 1A DA D7 62 C7 85 6F 
07 67 D5 59 08 36 A0 71 3D 8C 09 B2 0D 3D 42 B0 01 4D E9 DB 49 1B F3 B4 69 20 3C AB 1B D4 DB 47 
B0 01 C8 44 F7 48 F4 11 C1 06 20 0F 17 72 B4 31 9C 93 36 82 0D 68 C3 50 BE 61 D0 BE 01 9E 76 13 
6C 40 83 7A F8 0D 13 1D 79 64 38 7F F2 A3 D7 08 36 A0 25 3D C9 88 44 53 24 D9 86 EE 23 D8 80 F6 
F4 24 23 06 D8 96 85 5E 23 D8 80 66 25 32 82 6C 03 AA 46 B0 01 8D F3 33 7E EF 09 5A 23 7B 67 68 
63 6B 11 6C 00 0A E1 A4 0D 7D 41 B0 01 AD 1A C4 1F D0 E8 90 21 9C B4 11 6C 40 1B 7A 7E F2 33 84 
2F 47 CD 0C EA 84 9B 60 03 DA D6 9F 8C 18 D4 97 23 FA 8B 60 03 5A D2 F3 8C E0 A4 AD 15 E1 CB 5E 
E2 8F 8C E1 74 21 21 D8 80 F6 DD 3F DC B7 5D 84 A2 38 69 43 F7 11 6C 40 7B 7A 9E 11 DA FF E1 8F 
9E 22 D8 00 5C 86 93 36 74 1C C1 06 00 83 A3 F7 D9 36 C1 06 74 83 CE DF 33 E8 8A 81 9C 6D 13 6C 
40 AB 7A FE 3D A3 F7 1F FE 5D 13 4E 21 54 49 3E B5 FB DE 85 47 AF A3 18 AA 60 73 66 86 CA CC A9 
FC E8 00 22 FA 93 11 03 F9 C3 5F 4B 5D 78 EF 82 30 7B B8 7F 08 7E A9 3C DB A2 C1 76 0C B4 B7 47 
5F 61 7F FB 42 C0 01 35 68 FF 7B E6 2A 9C B4 F5 57 F3 EF 9D 21 86 F2 A0 D5 96 24 0C 36 67 16 06 
DA 7A A2 DA D2 9C 7F 04 AB 1F DF 2E CC 36 6F 35 3E 9E F5 8D 57 5E 7C DD E9 EC 30 B5 0A 18 A0 FE 
64 44 17 FE F0 47 39 DD 7C EF 2A CC B6 30 D8 26 EB 8C 40 4B 29 BE A5 88 88 B7 1A 8F 16 77 DB 20 
13 B7 77 8B 51 24 C0 9C 99 31 FD 5C EE 55 AB 80 21 79 DF BD B7 5D 84 AB 70 D2 86 22 12 9F 93 C4 
E4 EC 15 AA BB F3 88 F3 7B E1 5A CB 5F 87 20 9C FC 5A 5A EE E2 77 70 BE E7 AD 5E 36 D6 F2 CF DC 
0C 56 AD B7 76 B8 0A 40 0F 74 F3 0F 7F 5C A4 B1 3F 4A 12 07 0A 3E 3C 89 8F 50 D8 3B E6 4A 75 07 
DB 64 ED FB 1F 87 EC 8A F3 FE BE BA 72 77 73 5A 35 BA B5 64 F3 46 B2 01 40 93 1A C8 36 65 AA A5 
7F AF 4A 2C D8 22 17 C3 66 4E BC 77 64 25 3D 46 BC D5 CF E8 F9 9B 88 75 3B 3A AD 35 6F EE 2A 38 
06 D0 77 B4 EA 41 E5 9A E1 8F D3 12 3B 69 B7 31 B9 F2 6C 33 7C FF B0 C7 E3 C5 B0 F5 24 B8 F8 B5 
11 B1 96 FB E0 6C 2B BA AE 9C C3 1E 4F BB 3C 5E 60 8B 9C CE C5 97 18 46 DE 0B BD DB ED CA 16 05 
E8 A8 70 28 E4 1E 5D 72 8B B6 1D D5 77 C9 04 12 79 A9 2B 7C 9D 13 4D 7F 75 BC 83 E9 D6 45 E5 51 
CA 7D 90 1E 1E 1E C2 08 8B 09 7B F3 2F 2D B1 0E 1D 39 82 47 91 87 C9 D5 A5 45 F6 BB B5 25 B1 C7 
F4 92 88 48 51 4B DA ED 76 D7 6F A6 5C 9B 5E 98 58 12 7D A8 FC BD 60 D9 F2 5D 5F C1 9A 6A 57 BC 
6C 39 BA 50 3B 3F E3 2D AB AC 76 12 F9 C9 D9 2C 7F 27 E7 16 56 FE E1 14 5F 82 9F 4B CB 76 D1 66 
FC D3 4B BF CE 95 7C 38 C3 DD 66 BD 89 57 D6 2E 67 FF F9 15 2C F2 56 66 E5 42 D8 14 B9 FF 8A 5E 
F1 4A 35 0B 9A 37 77 E2 7E ED 0B C6 68 26 73 FE 6C 8B FB FA D7 0B 2E A9 A5 45 2F BA 01 03 D3 F3 
AE 18 F4 8D D4 40 D6 7D 66 A5 F7 16 7D D8 58 6F A3 8A 3B 8F 44 AE D2 65 DC 98 36 BA B5 4E 09 19 
8B 4A EF FB B3 DA C2 00 3D D6 9F 8C A0 6F 64 AF 05 2D 04 89 85 D7 67 5B 3A 20 9B FC 9C 54 1C 6C 
E1 5D DC 7E D0 19 D2 5B 8D 13 1D 4F F6 5F AE D8 8F 13 11 F3 C7 93 25 9F DF 5E 7A 0D 30 5C 3D CF 
08 4E DA 7A AA DA 6C 4B 3F B7 E1 BF 7E 6A EE EE 6F CE 9F 6D D9 BC 84 E7 6E C1 BD 6B 41 B7 48 73 
FE 6C BB 8B 9F 87 75 CE 6C BA 89 76 98 04 D0 1B 9C B4 69 40 99 6D 86 18 17 DD 5B A6 6C C9 2C D8 
19 24 2C C0 F5 7F 1E D5 3E BA FF 64 ED 6F EF 16 A3 43 F3 E4 E8 EB 39 72 5B DB 64 BD 5F CA 61 5D 
A2 87 24 00 A0 59 59 7F A0 14 B9 F0 16 8E 68 5C 70 9F B5 FA 27 FA 60 33 35 36 D1 C7 8B 91 B1 88 
3E B6 CB 1D 63 B2 F6 FD B5 7A 95 39 FF F0 E7 E5 F6 0A E8 CE E8 7D CB 24 7A 27 C8 A1 FC 71 8A 0B 
B6 5B B6 78 1E 1F 1D 2B F2 AC F2 B7 B1 01 28 AA E7 61 C6 65 36 0D E4 67 52 70 02 17 FD B9 74 0F 
59 C2 46 CB 2B 3F 45 4C 34 0A 74 58 7F 32 82 CB 6C 9A 09 6F A9 2C F7 DC CA CB 73 91 E8 B4 35 67 
31 13 1B D0 08 32 02 9D B1 7B DF 15 4F B8 D2 59 58 2D 55 53 E4 D6 96 C4 10 20 87 31 41 68 8A 04 
1A D7 C3 93 36 5A 23 2B 57 ED 40 91 E5 C4 46 C6 89 FF C8 31 FF 2A 39 4A F0 CB 35 23 FD A7 9B 22 
BD D5 CB 46 EC 6D AC 87 62 D0 7D F1 27 D3 A5 01 4D 69 FF AF 5E A0 A8 2E 9C A5 45 A5 83 4D 7D 9F 
74 45 43 6A 01 00 50 AF 74 B0 8D 6E E3 03 82 04 9C B7 4D 7C 92 19 00 00 BA 28 1D 6C C1 80 20 A3 
68 47 11 6F 35 9E 46 26 BB 06 D0 A8 1E 5E B1 E2 32 1B 5A F4 8F 62 D9 64 ED FB 8F B3 E8 7C 68 D6 
72 EF 93 6A 40 B3 FC FE 45 9A 2F 3E 91 86 D6 A9 82 4D 24 77 B4 10 00 8D 63 14 92 01 0B FF 56 D8 
BD EF E4 BE DD B2 34 21 FC F3 C8 10 A3 5C B7 14 6E D0 06 3A AC 87 61 46 A7 7F B4 2E 7A 83 76 C1 
FB AF 8B 6F 09 A0 3A C4 04 50 4C F4 06 ED C7 B7 BC 01 46 C2 39 44 DF 1E 19 34 12 68 4C 0F 4F DA 
42 9C B4 A1 9C 2B CF FB A3 4D 91 C7 C1 47 8E 01 17 37 FA 7A 66 28 64 00 E7 75 ED 76 5D 0C 4D 56 
AF 48 3A 8E 00 00 7A 89 CE 23 40 6F DC 3F 0C A0 4B 1C E2 BA 30 4A 64 2B AE 99 C2 86 60 03 3A 6F 
58 5F 68 C0 B5 08 36 A0 57 FA D6 1B 83 FE 23 68 1E C1 06 F4 41 DF 4E DA 86 D6 6E 86 4E 51 06 5B 
D8 B3 9F 89 46 81 EE E1 14 08 C8 A5 08 36 67 36 5A B8 F6 D6 4F A3 A3 3F D0 9E BE 9D 02 31 04 09 
DA 92 0E 36 E7 6D 23 D6 F2 17 19 06 00 68 51 E9 BF 8D D4 D7 D8 EE 6E 18 CA 1F 40 65 1E EE 1F DA 
2E 02 06 44 3D D1 E8 E6 8D AB 69 00 AE 45 17 12 B4 42 3D D1 A8 6C A6 74 14 01 BA 8B 8B 56 18 86 
F0 6F A3 8B 4E FA 15 D7 D8 66 D3 8D 88 6C A6 F4 8A 04 BA E5 7D F7 DE 76 11 80 1E 48 8F 15 C9 48 
91 40 1F 30 F5 28 90 81 1B B4 81 5E 21 CC 86 64 B0 03 45 46 95 E8 1B 99 11 6C C9 5B B4 C7 2B AF 
92 12 02 18 16 EE 66 43 F3 54 C1 E6 CC 8C D1 42 96 FB F0 C6 EC FD 52 16 23 AE B0 01 00 7A 20 1D 
6C DE EA 65 63 2D F7 1F F3 D3 AD 6C E6 FC 63 BF B4 36 2F 9C B6 01 5D C2 29 10 A0 92 0E B6 FD 97 
AB B8 41 DB BC B9 13 F7 6B DF 4C A1 00 E4 E8 DB D5 16 5A 23 D1 30 F5 0D DA 9F DF C9 73 33 EF FB 
53 AC DB 51 33 85 02 50 10 49 A1 AF F0 CE AD 21 F7 1C 29 47 7D 83 B6 BB 18 45 BB 8B 78 AB F1 68 
E1 DA CF 73 06 DA 02 3A 81 2F 3A 0C C9 A5 27 FD AA CE 23 93 F5 A1 BB C8 51 D0 95 84 B1 FD 01 94 
B3 7B DF 05 BF D0 1A 89 06 A4 6F D0 16 11 11 73 FE E1 CF 9B 2D 09 80 4B F8 C7 76 48 EE D4 06 E2 
1A BD 41 DB 99 A5 EE 88 73 66 DC 2A 07 00 C8 77 D1 49 7F 83 C1 76 18 84 32 B6 C4 98 7E 1E EE 97 
DB DE C5 AF EB 01 00 50 46 18 6C E1 D9 D4 E9 1C AA D2 41 90 D3 B1 16 DC 30 F7 E7 D0 23 65 B2 DE 
DA EE E2 37 37 81 03 00 83 69 E5 39 3B D2 7F 18 6C 93 B5 EF 7F CC CD E0 97 0C E5 BB 8F 04 21 B6 
B4 A3 8B FE BE C6 6F 98 63 22 38 A0 24 3A 64 60 00 8A 67 BC 6A DA 1A E5 E5 2E 67 56 FE 8C CD 5B 
FD 5C C8 F2 CF FC 26 B9 22 76 67 9C 79 73 57 6E F7 C0 40 F5 F3 4F 79 3A 46 A2 6E 86 EF 27 FE 71 
38 33 E3 E5 36 36 A2 96 C8 E1 56 B6 BB 6D 99 93 36 6F 35 1E BD 3E ED 3F E6 E6 E1 9A 5A B0 EF D8 
83 E3 91 23 4B 0C 23 EF D3 BF DB ED 2E 2E 08 A0 9D FB 87 FB F0 F7 EE CF D6 16 B6 20 85 1D 01 90 
85 D7 4A 29 F1 B2 3C 3C 3C A4 22 4C 44 44 C2 76 C6 AD AD 58 1B 65 45 86 45 2E 6E BF B4 C2 67 6E 
ED C8 5E 62 0F 32 96 44 44 8B 5A CE 6E B7 BB 7E 33 E5 DA F4 C2 C4 92 E8 43 E5 EF 05 CB 96 EF FA 
0A D6 54 BB E2 65 CB D1 85 DA F9 19 6F 59 CB B5 93 C3 4F F7 3F 9C E2 4B F0 93 BF 59 F1 55 9D AA 
DD 35 9B A5 57 29 5F AB FE 7D 38 73 57 E5 BF 7D CA DA 25 5E 96 AC 5C 38 35 45 1E AF AD 6D ED 8C 
74 49 9E C4 15 71 6C 84 54 3C 73 74 6B 29 9E 90 1E A5 12 00 80 0B A4 AF B1 4D D6 A5 22 2C 10 9D 
C7 6D BC F2 BC BF AF AE B8 E1 18 26 D3 8D 04 8F 8E 17 EB 62 C3 2A 7B DF 9F 25 8F 0A 0C D9 B1 25 
26 DA 2C D9 4D 8C 86 8C 2B 15 FC 08 29 EF 63 CB EA F1 7F BE F3 88 39 FF 88 9E E1 45 1F FA 91 B6 
C6 F5 44 C4 FC F1 14 1F 6D 79 FF E5 8A FD C8 B8 5D 00 80 6B 28 82 CD 99 4D 37 D6 72 1F 5C 1E B3 
B7 BE 1F FC 26 F6 B6 DA D1 22 83 D1 96 7F 1E 7A 60 06 47 FD 45 AE 01 68 19 27 94 7D A7 E8 EE FF 
B6 11 EB E9 87 19 F4 BF 0F 4E A9 CC F9 9F 3A 26 1A 9D AC 4F 83 2D 27 7A 48 02 D0 5A 67 C3 23 28 
58 67 8B 87 22 AD 91 EA 41 90 0F 5D 38 46 B7 96 FB B5 17 31 83 86 C3 C5 E1 F7 D2 26 EB 64 C7 4C 
06 5B 06 AA D4 F9 01 91 7D F1 BB 9C 19 D1 B2 19 62 30 EA 47 4F E5 4E 34 7A 3A 65 03 D0 61 7C FD 
D6 83 B3 B7 9E 52 4C 34 FA E3 C9 3A 0E DA 38 79 B4 DD D7 BF 9E 04 03 60 31 83 36 80 81 49 64 5B 
33 21 C7 40 91 F9 4E 37 AD 67 BC 3C 8A A6 48 73 FE B1 FD 32 A6 B3 47 7F 3D 99 AC B7 6F C6 C8 58 
88 88 BD F5 B9 04 06 74 15 D3 B3 D5 2C 9A 6D 41 83 2A A9 D3 59 EA 6B 6C 91 8B 61 93 B5 EF AF 9B 
2B 0F 00 B4 2F FF 5A 60 78 1A 17 6C B6 93 5D 73 25 43 01 CA 41 90 EB 98 B6 06 40 53 B8 24 94 2B 
91 58 59 01 16 9C 90 E5 9F 96 05 CF 7D B8 7F E0 3A 5C A7 28 47 1E 49 D9 DA 22 76 A9 11 90 01 34 
A4 FB 83 20 27 34 1F 06 86 18 D1 28 32 C4 08 06 D5 2D 92 6D C1 80 9C F9 3B AF BC C0 28 47 DD 14 
99 34 59 6F ED C3 55 B7 9A CB 03 40 73 AD F4 F8 37 C4 90 DC 11 C7 F2 8B 14 46 5A 78 75 4D B9 7D 
B0 90 6B 6F 0D 08 DF 02 E5 C5 4E E5 90 5A 0A 93 47 9B 59 40 01 F4 4E 78 96 56 5C 7E 32 25 4E E3 
94 47 BC E8 70 59 4F 67 C2 9A D2 8A 06 1B 23 14 03 E8 9D 70 FA AE 84 DD FB EE 30 D7 8F 2A 3C 0A 
26 53 7E B6 D1 32 D9 A2 82 C1 E6 FC 5E 30 42 31 D0 1F 7C A9 9E BB 72 96 F5 50 B9 24 5F 10 93 C5 
0B 80 4A F8 E2 8B A1 7E B3 D2 D7 D8 9C 99 31 DD A4 37 B4 96 7B 2E B0 01 1D E7 F7 23 D2 F2 2F 90 
54 42 19 2A 59 C7 8A 5E 33 2B 5D 9E E0 89 E9 2E 97 5C 72 6B 5E 3A D8 B8 71 0D D0 C2 80 EF D4 4E 
A7 9A 2F FE FB FB 7B 4E FF 91 AA EE B9 4E F7 2B 21 DB 9A A7 6C 8A 8C 4E 17 CA 7D 6C 40 AF 0C FE 
2B 54 99 6A 45 9E 58 55 FC A4 6F 0C A0 4D B2 61 CA F9 D8 46 0B 37 98 87 2D 81 B6 48 00 9D 96 E8 
2D 92 75 F5 AB 01 E5 B2 8D 51 22 2B 91 31 1F 1B 33 7E 02 FD 15 7E 25 F6 E1 3C A1 C2 B3 99 8E 9F 
18 65 75 D1 44 E5 D4 BD 22 0F F3 B1 01 40 3D 2A 3F 23 29 DD 02 59 1F DA 24 DB A2 9E 8F 8D 5B B1 
01 F4 48 07 53 2D 14 2D 49 77 4A A5 37 C5 7C 6C F3 67 5B 36 53 3A 8A 00 E8 A9 4E E5 47 62 56 EE 
16 4B 32 1C AA D1 FD A7 1B 11 D9 4C E9 15 09 A0 07 12 69 D1 A9 54 93 B2 BD 48 70 0D EE 63 03 74 
74 BC 53 FB FE E1 BE 63 DF F3 15 4B E4 C4 EE 7D 97 3F D8 71 2B 12 37 B7 71 67 5B DD 8A 8E 15 09 
00 5D 93 E8 67 D8 E5 B4 E8 72 D9 F4 93 15 6C C7 E9 46 C7 2B 4F C4 99 05 FF 07 80 0E 89 0E 61 DC 
FD E4 60 B4 FE C6 A8 82 CD 99 19 C6 CB ED DE DF 2F AD 60 C1 64 BD BD 5B 8C C8 36 A0 4F 7A 75 37 
5B 39 D1 33 36 AE 5D 21 94 0E 36 6F F5 B2 B1 96 7F E6 B1 3B D9 26 BF 96 96 BB F8 4D E7 11 00 1D 
D1 F1 3E 23 F9 72 E6 29 C5 F5 D2 C1 B6 FF 72 15 37 68 9B 37 77 CD 14 08 40 F5 3A F9 85 19 46 D1 
F5 5F E8 7D 49 B5 86 47 AD 1C 2C F5 0D DA 9F DF C9 56 47 E7 6D 23 D6 ED A8 99 42 01 A8 84 BE 5F 
8F 1A 9C DC 68 50 85 CE 52 DF A0 ED 2E 7E 46 2F A8 79 AB F1 74 23 F6 F3 9C 81 B6 00 B4 AE D7 8D 
90 FD 2A 6D 4F A5 EF 63 0B EE 64 73 66 86 B1 10 11 71 47 C6 42 C4 5A EE 7D 62 0D 40 17 54 32 2F 
68 17 70 43 5B 4D 54 C1 26 C2 6D DA 00 50 93 F4 64 A4 C2 84 35 95 52 0D A9 A5 BC 69 CD 99 31 A4 
16 D0 63 1A 5D D0 E1 EA 14 F2 15 1D 79 C4 FB FE AC B5 1C 00 EA F0 BE 7B 6F BB 08 79 AE EC 18 C9 
2D CF 50 3A 35 45 3A 33 63 BA 39 3E 18 05 17 D8 62 AC E5 1F 66 1F 05 D0 2E CD 4E D7 B8 CC 56 87 
D3 19 DB 64 ED FB BE EF FB 5B 5B AC E5 DE 4F FB A0 F7 08 D0 47 9A 0E 41 A2 4D 1E 18 62 84 43 A8 
68 53 A9 76 15 1E 04 99 6B 6C 00 50 11 02 AC 56 5C 63 03 D0 1B 3A 75 1D D4 A0 0A 9D C5 35 36 60 
00 8E D3 B3 89 21 B2 6B B7 28 38 49 F7 FB E7 92 5B 25 1A B8 C6 76 9C 01 47 39 11 F7 69 25 93 07 
00 43 54 E1 88 91 1A 20 D5 2A 91 6E 8A 9C AC AB ED 26 E2 7D 7F 26 92 72 7D 3C F1 73 66 C6 F4 F3 
B0 8A 89 71 00 0C 1B A9 56 95 E2 33 68 7B AB 71 A9 CE 23 EA D9 02 24 39 3F CE 64 BD B5 99 18 07 
C0 B0 F8 E2 07 79 46 AA 55 E8 7C B0 79 AB B1 61 18 86 31 5A B8 65 0E E0 7D 7F 8A FD A8 B8 38 E7 
FD 7D 8D 27 DE E8 D6 92 CD 1B C9 06 40 49 A7 9E 23 09 DC 69 5E AD EC 60 3B 5E FD 1A 2D 5C 39 B4 
25 AE 4B 74 1E D9 7F B9 D6 E7 8B A1 BE 92 16 9B 08 87 29 DF 80 1A 1D B3 E0 FE E1 BE D5 72 00 B5 
33 7C 3F F1 B7 4F AC 77 A4 88 58 CB FD 15 D7 DC 9C 99 31 DD 44 76 E1 CC 8C 97 DB FD C7 DC 3C 5E 
60 8B EC 3B BE C4 30 F2 AE 24 EF 76 BB B2 45 02 06 2A 8C B4 AE 8D B3 15 DE 9E 9C 7F E2 52 70 33 
0C C7 C3 C3 43 2A C2 44 44 24 EC D2 B1 B5 23 4B ED 6D B8 4C DD 45 B2 B4 AD 7D D8 7B 7A DF B9 47 
8B 16 B5 9C DD 6E 77 FD 66 CA B5 E9 85 89 25 D1 87 CA DF 0B 96 2D DF F5 15 AC A9 76 C5 CB 96 A3 
0B B5 F3 33 DE B2 2E D4 2E 6B 6D 6C A1 55 1A EA 57 00 00 1B 50 49 44 41 54 1C 7F 32 36 68 EB C3 
29 BE 04 3F 39 9B 85 DB 48 A4 02 FC D3 53 3E EC DA 87 33 6B 55 7E 05 8B BC 95 59 B9 10 36 45 3A 
6F 9B 63 9C F9 E5 1A 1D 8B 09 AF A4 8D 6E 2D C5 6A 65 37 13 00 55 D0 62 6C 2D FD 2E B0 A1 72 61 
B0 4D D6 5B 7B 33 55 DD 6A 76 89 63 4F 93 FC 1B D3 C2 4B 6B EE D7 3E F2 5C 06 37 01 00 5C 2D D2 
79 24 72 87 B6 1C 22 2E 76 B1 AD 08 73 FE 11 9E 0C 7E CC CD 20 E8 62 29 19 F6 FE 37 7F 3C 59 F2 
F9 ED C5 D6 28 FB 4F 02 00 50 98 A2 57 64 34 E0 44 C4 5D 8C CA 0F 0B 62 CE 9F ED 58 1F 7E E7 6D 
63 2D 7F 4D 8E EB DC C5 CF C3 9E 9D D9 34 5C 03 A0 26 FD 6C 8D 64 50 12 5C 24 E7 3E B6 68 C0 B9 
8B 51 C9 06 CA C9 DA DF 4A D8 C4 69 BC 3D 46 C6 35 99 AC F7 4B 59 8C 82 93 C3 CF AB 7A 5F 02 18 
00 2E B0 A1 88 02 23 8F 24 CE E0 2E 77 DC 81 A2 57 4A A4 E9 92 54 03 00 54 E0 9F F3 9B 1C 4D D6 
EB FA CA 01 00 40 25 8A 8F 15 09 00 B5 08 1B 18 C3 5B B0 81 6B 10 6C C0 B0 9C 86 1D A1 43 06 34 
45 B0 01 00 B4 42 B0 01 00 B4 42 B0 01 C3 D3 CF BB D9 80 82 08 36 00 9D A6 F1 34 6C A8 09 C1 06 
00 D0 0A C1 06 0C 12 F3 8E 42 5F 04 1B 80 F6 85 CD 8C 0C 0B 89 EB 11 6C 00 00 AD 10 6C 00 00 AD 
10 6C 00 BA 2B 6C 99 DC BD EF 5A 2D 08 FA 84 60 03 00 68 85 60 03 86 8A DB B4 A1 29 82 0D 00 A0 
15 82 0D 00 A0 15 82 0D 18 30 5A 23 A1 23 82 0D 00 A0 15 82 0D 40 27 A4 07 1F 61 F8 63 94 43 B0 
01 00 B4 42 B0 01 00 B4 42 B0 01 00 B4 42 B0 01 83 F6 BE 7B 3F FC 46 C7 48 E8 82 60 03 00 68 85 
60 03 00 68 85 60 03 06 8F D9 B4 A1 17 82 0D 00 A0 15 82 0D 00 A0 15 82 0D 00 83 46 42 2B 04 1B 
00 40 2B 04 1B 00 40 2B 04 1B 00 40 2B 04 1B 00 40 2B 04 1B 00 40 2B 04 1B 00 11 A1 63 24 F4 D1 
48 B0 79 AB B1 71 34 73 62 AB 9C D9 71 C5 78 E5 35 51 16 00 80 DE EA 0F 36 67 66 FC 94 3F 7E 60 
6B 6F A6 A7 6C 73 66 C6 F4 73 B9 0F D6 DC 2D 46 64 1B 00 E0 5A 75 07 9B B7 7A D9 58 4F 3F CC C3 
C3 C9 AF A5 25 9B 37 27 5C B5 FC 33 0F D6 4D D6 5B DB 5D FC 76 B2 76 04 A0 6E 4C 61 03 3D D4 1C 
6C DE DF 57 37 92 6B 22 E6 FC C3 F7 D7 93 C3 2A B9 BB 39 AD 1A DD 86 99 07 00 40 49 35 07 DB FE 
CB 95 BB 1B 33 EB 4A 9A 75 3B 3A 3D 30 6F EE EA 2D 0C 80 FE 30 8E A7 8D FE A9 5B 0B 50 88 E1 FB 
35 7E 68 BC D5 78 B4 70 45 EC 6D 70 96 16 2C B8 DB FA EB C9 F1 02 DB C7 3C 3C 67 8B 2F 31 8C BC 
D6 90 DD 6E 57 5F B1 81 21 0B 27 AF 39 B5 4C 36 E5 E1 FE 21 F8 65 F7 BE 8B FE DE 70 31 D0 17 0F 
0F 0F EA 08 F3 EB B4 5F 5A 22 D6 A1 7B C8 B1 FB 88 88 BD 3D FC 92 5E 15 5F 12 71 7D 51 77 BB DD 
F5 9B 29 D7 A6 17 26 96 44 1F 2A 7F 2F 58 B6 7C D7 57 B0 A6 DA 15 2F 5B 8E 2E D4 CE CF 78 CB BA 
50 BB AC B5 65 DE 3E 39 FE 5C 52 B6 7C 05 77 22 BE 04 3F 89 DF B3 F6 C0 3F 3D E5 C3 AE 7D 38 B3 
56 E5 57 B0 C8 5B 99 95 0B 0D 74 F7 8F 5E 47 8B 5C 49 1B DD 5A 67 37 06 00 E0 42 15 07 5B F4 8E 
B5 F1 CA CB B8 6C 16 5E 5A 73 BF F6 91 E7 7E 7F 56 5B 18 00 C0 00 55 1C 6C E6 FC 23 3C 19 FC 98 
9B 32 79 B4 13 3D 1D 0F DD 49 44 CC 1F 4F 96 7C 7E 7B B1 35 F6 E3 A4 DA 02 01 00 06 A6 EE A6 C8 
C9 AF A5 B5 79 09 BB 42 06 F7 AE FD 9A 88 88 98 F3 67 DB 5D FC 3C AC 73 66 D3 70 0D 00 00 65 FD 
53 F7 01 CC F9 87 7F 33 0B BB 38 5A D1 7E 90 93 F5 7E 39 1E 8D 8C 45 6A 0D 80 D6 F8 C7 1B B4 0D 
A1 A7 3D FA A8 F6 60 13 11 99 AC 7D 7F AD 5C 63 CE 3F FC 79 13 45 00 00 0C 04 A3 FB 03 00 B4 42 
B0 01 48 61 0A 1B F4 19 C1 06 A0 2B C2 41 46 0C 12 15 57 20 D8 00 00 5A 21 D8 00 E4 09 87 8E 04 
FA 82 60 03 A0 D0 FC 08 C8 40 55 08 36 00 80 56 08 36 00 80 56 08 36 00 DD C5 2C A3 28 81 60 03 
00 68 85 60 03 00 68 85 60 03 90 81 F1 47 D0 4F 04 1B 00 40 2B 04 1B 00 40 2B 04 1B 80 6C B4 46 
A2 87 08 36 00 80 56 08 36 00 80 56 08 36 00 C5 D0 1A 89 9E 20 D8 00 E4 61 34 64 F4 0E C1 06 00 
D0 0A C1 06 00 D0 0A C1 06 00 D0 0A C1 06 00 D0 0A C1 06 00 D0 0A C1 06 E0 1C C6 1F 41 AF 10 6C 
00 00 AD 10 6C 00 00 AD 10 6C 00 0A A0 35 12 FD 41 B0 01 00 B4 42 B0 01 00 B4 42 B0 01 B8 10 AD 
91 E8 36 82 0D 40 31 FE F9 4D 80 2E 20 D8 00 00 5A 21 D8 00 00 5A 21 D8 00 00 5A 21 D8 00 74 88 
CF A5 3C 5C AD E6 60 73 66 86 CA CC 49 6F 30 5E 79 F5 96 05 00 30 04 35 07 DB 64 ED C7 6C 6D 11 
B1 B7 EB 89 88 88 38 33 63 FA B9 DC 07 6B EE 16 23 B2 0D E8 09 7A FC A3 C3 1A 6D 8A F4 56 2F 9B 
53 AC 79 AB 97 8D B5 FC 33 37 45 44 64 B2 DE DA EE E2 B7 93 F7 7C 00 ED A2 99 10 7D F0 4F 73 87 
F2 56 3F 17 AE B5 FC 33 39 3C FC FB EA CA DD B3 19 AE 1F DD 5A B2 78 73 D6 93 C9 E5 FB 36 0C FE 
80 44 05 7C 9F 6F 6E A0 F7 9A 0B 36 E7 F7 C2 15 7B 3B 37 23 CB AC DB D1 E9 81 79 73 77 CD FE F9 
4A C2 95 F8 F3 08 D0 83 D1 54 1E 1C AE A7 7D 84 C1 96 5A 90 58 92 FF 2D B3 DB ED A2 0F 1F 1E 1E 
08 36 5C C9 30 8C C4 E7 0A 4A F7 0F F7 C1 2F EF BB F7 3A F6 FF 70 FF 10 FE BE 7B DF D5 71 08 E8 
21 F3 9B DF 6F C6 D6 16 B1 0E FD 44 8A 2F 89 C8 2F 6A 73 15 81 BE 44 E4 DF 7F FF F3 EF BF FF 89 
2E DC ED 76 CA 87 D1 E5 89 6D 4A 28 B8 87 FC CD 94 6B D3 0B B3 6A 94 F5 BB 62 B7 72 FC 29 EC A2 
0A 8A 2F E1 4F FE 1E 6A A9 DD E5 AE 7F FB AE AF 9D DF E1 0F 67 D6 AA FC 0A 16 79 2B B3 BE F9 1B 
EA 3C E2 BC 6D C4 7A FA 11 6D 86 1C DD 5A 8A 0D EF 6E 4C C5 52 00 00 0A AA 38 D8 BC D5 D8 50 DC 
98 A6 C8 35 11 11 71 BF F6 91 E7 7E 7F 56 5B 18 00 B5 60 D2 51 74 5B C5 C1 66 CE 3F C2 93 C1 D3 
D5 33 EF FB 33 7D 2E 66 FE 78 B2 E4 F3 FB 74 E7 DA FE CB 15 FB B1 44 97 48 00 00 42 8D 34 45 EE 
BF DC 78 07 48 11 11 31 E7 CF B6 BB F8 79 38 AF 73 66 D3 8D B5 FC A5 67 AE 05 E3 AB A8 EF 3F 77 
66 B3 4A 6E DE CB D8 8F 7A EC 17 C5 A6 89 0D 13 5B 78 AB B1 E2 59 CE AC D2 11 63 AE 7C 29 AA 7A 
25 01 F4 5C 13 C1 A6 3C 61 13 11 99 AC F7 4B 59 8C 0C C3 30 92 3D 24 75 E2 AD 5E 36 96 6D 5B AA 
FB CF 9D D9 74 53 C5 31 72 F7 93 EC 91 B3 B5 37 D3 58 20 39 33 C3 98 CA 36 67 8B 06 5C F9 52 54 
F5 4A 02 E8 BD 26 82 CD 9C 7F F8 FE 5A 79 2E 16 69 BA D4 34 D5 8E 77 A2 3F FE 7A B2 64 F3 D6 89 
53 8A C9 7A 6B 8B FB FA F7 98 5B CE 5B 64 40 98 C3 16 FB A5 32 88 01 A0 F3 18 DD BF 6E DE DF 57 
57 EC C7 89 F9 23 99 6C DE 6A 6C 4C 37 22 9B A9 BA 41 4F D9 13 27 DE 26 E8 CC 0C 63 FC FC 9C BF 
1F 85 D1 AD 75 EA B9 A3 EC B5 93 F3 D7 48 61 91 D6 CD 68 4F A2 59 AC 51 D3 99 19 C6 EC BF E3 2F 
85 B7 1A 1B E3 95 73 AA FF 65 4F BF AA D0 00 7A 4F CF 60 33 C4 68 FE 47 5D 14 E7 F7 C2 0D AE 1D 
06 C9 F6 72 FA DE 35 E7 1F FE D6 16 B1 B7 8A F3 55 6F 35 1E 2D E4 D0 86 B8 5F CA 71 88 68 73 FE 
67 69 1D F6 72 18 6D F3 E5 25 67 3F 6A B1 AB 9E E6 FC D9 96 CD 54 75 E1 ED 0A CE CC 98 6E EC 43 
F3 E6 F6 6E 31 CA DB FF 7F A5 5F 0A 77 31 5D DC 6D 0F 0D A3 EE 62 94 57 3A C5 D3 01 0C 97 9E C1 
D6 1D D1 1B 1D CC F9 73 AC 05 30 F7 79 BF 17 EE 69 84 68 73 FE 71 1A 22 3A E8 74 F3 DB 11 E7 F7 
42 C2 4D 2E 2A D4 6C BA 11 FB F9 F4 CC C9 DA DF 2F AD CD 34 A7 6F C9 85 82 CC DD 1F 4F F9 26 EB 
AD 1D 0B F5 02 4E 4F 9F AC F7 61 98 A3 23 E8 F1 8F 0E 23 D8 EA E4 AD 5E 62 37 F0 4D 1E 6D 29 74 
E5 2A 7D E3 DF E8 F6 D4 90 39 59 6F ED CD D4 98 6E A2 E1 94 C3 3D 74 D0 39 9A 7E 2E F7 C9 66 C6 
D3 D5 CE 30 E2 AE 68 D4 0B AE 2B DE 24 CA 1F BB 6D F1 AC E8 D3 CD 9B BB A2 7F 12 00 18 3C 3D 83 
ED 34 E4 4F 83 3F E9 62 78 7F 5F DD 78 AC 4C 37 22 45 BB 90 C4 E3 68 B4 70 23 EB 26 8F B6 48 E1 
BB FE 52 E3 94 E5 36 D7 1D 22 EE 6C FB DF 65 2E 1E E2 3A 7D 7F 08 00 14 A2 67 B0 75 43 D0 6D 64 
1B CF 94 AD 5D 34 D9 14 C3 66 1E CF B2 BC D5 CB C6 B6 ED CD B4 8A E0 51 DF A2 16 64 67 78 03 7D 
76 2E 15 1C 04 8D 71 65 34 46 6B 24 3A 86 60 AB CD A9 DB 48 D4 E4 D7 D2 3A 7F B5 69 F2 68 67 37 
DC 79 AB 9F 0B 59 FE 5A FF AA E6 C2 53 BA BB E6 C9 29 B5 A2 4D A1 47 CE DB 26 E3 C4 2A 35 AC 4C 
E2 26 FD D3 AA CC C0 8B B5 3C 26 9A 66 0B 3C 1D F5 63 3A 0D 74 95 16 C1 E6 AD DA 2E 81 42 D6 F8 
98 E6 8F 27 2B FE AD 1D 0B 80 83 C9 AF A5 B5 99 9E AE 72 39 B3 F0 A2 97 F3 7B E1 DA CF 73 F3 D4 
8B 24 67 3F 45 1C 7B 45 26 6E D9 8E 8F 04 73 D8 28 D6 D1 3E D1 05 25 B9 CF 48 53 66 74 DB D1 ED 
A9 FE DE EA 67 AC 89 35 5A 85 F8 A8 34 E1 91 8A 3E 1D C0 60 69 11 6C E6 BC ED 12 A4 78 AB 97 AC 
6F FD A0 73 E4 21 90 82 EE 24 A3 74 47 0D 73 FE 71 1A 96 C5 08 7A CE 7F CC CD F8 D0 63 41 FC CD 
9C 9C FD 14 32 59 1F AE A9 C5 FB 97 C4 2F C5 4D D6 FE 7E F9 39 8D 6F 92 7D A7 DB 64 1D 8C 5F 92 
DA F6 D0 C5 73 64 18 86 31 FA 7A DE DA C7 27 24 AA 60 2F 9F 5E 47 A7 CA 1F 8F 54 F4 E9 00 06 AB 
B9 19 B4 87 C5 9C 7F F8 99 71 3B 59 FB FE 5A F1 7B 91 7D 4C D6 D1 69 F5 4E 9B 64 ED 27 BE 7D 8E 
9C 82 E4 97 A8 C4 2E E3 2B 8E 05 3C 2D 0D 4E C1 6F B2 8E 76 EE E9 68 8C 7F BC C0 66 D0 32 89 0E 
D1 E2 8C 0D 00 80 23 82 0D 00 A0 15 9A 22 D1 3D 17 36 79 02 40 14 67 6C 00 BA 45 39 DC 01 50 1C 
C1 06 00 D0 0A C1 D6 84 EA 66 D0 4E 4C DA 52 21 E5 9E C3 85 F5 1D F7 D2 22 55 B3 63 E6 DA 06 34 
46 B0 D5 AF CA 19 B4 27 EB AB 67 49 2B A5 95 E3 D6 74 50 E6 DA AE 07 03 6B A1 33 08 B6 DA 75 6F 
06 6D A0 3A 5C 0E 43 F7 10 6C 75 2B 3B 83 76 74 FE EC 53 8B 5C B2 75 2E 36 49 F5 6A 16 0E BB 35 
33 8C 99 73 5A 99 F1 94 E2 0D 7D D1 E3 66 ED DC 99 1D CA 70 5A A6 9C 04 3C B7 E4 17 1E 94 B9 B6 
01 A4 E8 D9 DD DF F8 7F 2D 1C D4 FF DF AA A5 87 19 43 27 22 F2 E3 C9 5A 2C 5E 56 BF 26 A7 E9 43 
FD 9B 99 31 95 6D AA C1 CD 5B 8D 47 8B BB AD FF 11 2C 77 66 C6 D4 48 6F 76 9C A4 7A 3D 39 3E 10 
B1 C2 B5 9B E9 CB 72 EF FB A6 78 AB F1 68 3A BE DD 07 23 72 19 53 D9 FA FE E4 70 90 E3 F2 4B 29 
77 2E E2 2E 5E 9F F6 BE 6F 9E 2A 21 CB BD 3F 37 83 07 A3 B1 1C B6 CB 2F F9 05 07 15 11 71 17 53 
D7 0E 5E 2B 67 66 4C 47 B3 9B EC 06 CC FF CA 7E CD 01 E8 82 33 B6 7A 95 9C 41 7B FF E5 46 67 5B 
9B AC FD F4 D5 A6 60 38 CA 6D 6C 92 EA A8 70 02 EE 60 D8 E5 AF 7D 50 9C D3 C8 C6 91 E5 17 53 ED 
5C 44 A2 C3 3E 67 4F 02 7E AE E4 17 1F 94 B9 B6 DB C5 6C DA E8 18 82 AD 4E A5 67 D0 9E 3C DA B2 
99 E6 B7 14 26 C2 EF 38 FB 68 E8 34 E5 CC 69 32 B5 C9 3A 1C D9 D8 99 25 26 2F BD 88 6A E7 F1 E5 
39 93 80 9F 2B 79 F9 83 32 D7 B6 2E 72 E6 EF 05 CE D2 B3 29 52 DD 2A D8 B8 60 06 6D 59 8C 8C 45 
74 F1 E6 CD 59 4F CE B4 83 4D D6 FE FE 76 3C 9A 1A 87 FE 7B 76 AA E9 CC FB FE 14 B9 70 56 EA 43 
F3 A0 7B D8 E5 7E F9 32 5A 9C 79 C2 55 DC 64 D5 45 EE CA 96 3C 1B 73 6D 03 88 E1 8C AD 3E 57 CE 
A0 6D CE 3F 4E CF 89 CE CD 76 58 9D 39 A7 75 4E 89 56 3F 17 EE B1 44 0D 5C 63 52 4F 02 5E A6 E4 
E8 0B 5A 23 D1 01 04 5B 6D AE 99 41 3B F1 9C F5 56 31 A1 76 6A 4E EB F3 B3 49 27 DA 00 F7 5F A5 
9B 22 CF CB 99 04 BC 44 C9 F3 30 D7 76 07 D0 64 88 2E D1 22 D8 F4 9B 41 DB 89 77 7F 77 DE 36 E9 
06 B7 C4 9C D6 CE EC FC 25 B3 58 A2 1C EE 53 AE 6D D6 E9 EC 49 C0 4B 94 3C 17 73 6D 03 88 D2 22 
D8 F4 9B 41 7B B2 F6 B7 77 A7 09 AD A7 9F 4B 55 A7 FC F8 24 D5 B2 DD DA F1 8E 14 8A 43 FF 59 5A 
C7 27 BC DC EE FD AD 1D 49 85 AA 65 4D 02 5E A6 E4 B9 98 6B 1B 40 94 9E 9D 47 DA 77 FD 0C DA EA 
15 C9 09 B1 63 5B 39 B3 8C CD 4E 0F 93 E5 3A 3D 5D 39 D5 76 B8 30 BA 36 6B E7 8A 3D E4 BC 0C 19 
25 57 1E 3D FB A0 41 34 31 D7 36 80 08 2D CE D8 86 C9 5B 8D 13 23 6B 4C 37 E9 6B 7A 5D D4 DF 92 
03 E8 03 CE D8 7A CB 9C 7F 6C BF 8C F0 86 00 11 3B 1C A9 A4 E3 FA 5B 72 00 7D 40 B0 F5 59 7F DB 
D4 AA 2A 39 73 6D 77 90 41 27 49 B4 8C A6 48 00 55 20 CC D0 19 04 1B 00 40 2B 04 5B 13 AA 9B 41 
BB 72 CC 91 0D 68 C1 90 FB 87 7B 46 7E 09 10 6C F5 AB 72 06 ED FA 30 47 36 AA C3 D7 2B 5A 45 B0 
D5 8E 19 B4 31 14 5C 66 43 37 34 11 6C D1 69 94 93 0D 44 A7 29 91 75 1D 07 A2 EC 0C DA 59 53 5D 
1F 6E 02 8B BF 70 91 97 B8 C0 D4 D2 4A CC 91 0D 40 13 B5 07 5B 38 8D 72 30 4C 7D 6C 92 31 67 66 
4C 3F 8F AB EE 16 A3 EA BE 87 8C 36 7E 94 4E 43 21 07 C9 16 19 FE D8 9C 7F F8 5B 5B C4 DE FA 7E 
6A C0 AC E3 54 D7 BE EF FB FB F8 A0 8B 22 B2 99 BE DC EE 0F AB DC C5 C8 18 7D 3D 9F B6 0C 5F 60 
77 31 5D DC 6D 0F AF BC BB 18 5D 74 D9 29 7A 88 C8 D1 DD C5 6B B0 78 3D 49 BC B9 FB A5 44 DE C2 
E3 1C D9 C7 37 77 51 A8 6D 30 F3 A0 C5 2B F2 5F 79 AF 2A 80 21 A8 3B D8 82 F3 95 E3 98 89 93 F5 
D6 0E CF 5A BC D5 CB E6 34 C3 F2 64 1D 4E B0 AC 93 92 33 68 9F 9B EA 3A 3E 97 B4 84 9B 26 4E 0B 
AF 99 5A 9A 39 B2 01 F4 54 7B D7 D8 82 4B 4F 91 81 6F 53 93 99 F4 5F E9 19 B4 CF 4D 75 9D 18 30 
38 6B FC E0 6B A6 96 66 8E 6C 00 3D 55 77 B0 C5 DB DF 82 59 45 4E 5F 78 B1 A9 58 AA 9C 7F D2 6F 
E3 27 25 98 41 DB 3D 8D D2 6F 4C 37 52 70 9E D1 D3 B5 AB A9 6C F7 4B AB CC AB D0 C0 D4 D2 D1 CA 
19 61 00 57 3D F7 19 73 64 03 B8 40 ED 43 6A 99 F3 0F FF 66 66 8C 8C 85 48 30 A5 F2 E1 44 64 FF 
E5 8A 3C 25 37 FF FC F6 64 62 8A 88 18 46 F2 B2 55 74 C9 6E B7 AB AB C4 95 39 CE A0 1D EB CF EE 
CC 8C E9 E6 CD 59 4F 72 3B B9 1F A7 BA 3E 3C D5 5B BD D4 59 D0 2B 58 CA F9 74 44 FA 3D 47 F6 FB 
FB 7B 91 87 D1 E5 89 6D AE 3F 68 B9 CD 94 6B D3 0B 73 2A A8 FC BD 78 ED EE E5 BE E0 41 B3 E4 6C 
D6 7A ED 72 B4 5E BB C4 2B DF B5 0F 67 D6 AA FC 0A 16 7C 2B 15 FC 9A 6D 6D 09 2E E4 1F BA 04 04 
E1 76 58 71 F8 35 B2 69 7C 49 44 7E 51 1B A8 C8 C5 32 AA 13 7D 0D FC B0 9B 83 E2 B9 91 C5 D1 17 
71 BF B4 A2 EB B2 1E C6 0F 93 5D 9C F0 48 D1 43 2A 0E 9F DA 26 BB F0 E9 52 29 8A 93 DE 43 C6 CE 
F3 2A 12 AF D3 E9 A0 D9 05 CB 25 22 FF FE FB 9F 7F FF FD 4F 74 E1 6E B7 53 3E 8C 2E 4F 6C 53 42 
C1 3D E4 6F A6 5C 9B 5E 98 55 A3 AC DF 2F AE 9D 1C 7F CE 95 2D 2D 67 B3 AE D4 AE 70 D9 2E DA EC 
FA DA 45 5F F6 AE 7D 38 B3 56 E5 57 B0 C8 5B 99 F5 CD 5F 73 53 64 A2 13 81 39 FF B3 3C DE A7 3C 
BA 55 35 AF 95 9A 6D 52 BF 19 B4 2B 9A EA 3A 63 6A E9 AA 30 47 36 80 2E AA 38 D8 92 77 35 ED BF 
5C C5 85 B4 F0 3B 27 D6 D3 AF FC 85 19 FD 66 D0 AE 68 AA EB 8C A9 A5 2B C3 1C D9 00 3A A8 E2 6B 
6C C9 59 44 BC 5B 4B 36 5F 7B 11 45 27 BE 1F 4F D6 E2 35 BC A4 76 E8 49 F7 AC C9 B4 5C 57 CF A0 
9D 3D D5 75 7C 85 99 F1 F0 CC D4 D2 B1 B2 C4 7F 11 E6 C8 46 35 98 BF 06 2D A9 B9 29 32 D1 24 E5 
AD C6 A7 B9 92 CD F9 B3 1D 6F 62 62 16 65 5D 30 47 F6 90 11 66 68 5B ED BD 22 27 6B 7F 2B A7 D9 
92 63 BD E8 26 EB FD 72 3C 3A 75 98 64 A0 08 5D 30 47 36 80 F6 34 31 83 76 4E BB 10 13 20 D7 A5 
F5 57 96 39 B2 01 B4 84 D1 FD 01 D4 86 F9 6B 9A C1 EB 1C D7 C4 19 5B 33 D2 37 74 03 68 87 CF 57 
2D DA A4 49 B0 F9 C7 EE 70 7F FE FC DF 76 4B 02 00 68 17 4D 91 00 00 AD 68 72 C6 16 FA F9 F3 FF 
64 AD 7A 7F 7F BF BF BF 3F BB 87 FC CD 94 6B D3 0B 13 4B A2 0F 95 BF 17 2C DB 35 25 2F B2 59 4D 
B5 2B 5E B6 72 C5 2E B8 59 F1 DA 95 2E 24 80 2E E0 8C 0D 00 A0 15 82 0D 00 A0 15 82 0D 00 A0 15 
82 0D 40 9D E8 F7 8F C6 11 6C 00 6A C0 88 91 68 0F C1 06 00 D0 0A C1 06 00 D0 0A C1 06 A0 66 5C 
66 43 B3 08 36 00 F5 E0 32 1B 5A 42 B0 01 00 B4 42 B0 01 80 46 68 F8 25 D8 00 34 E0 FE E1 DA A1 
50 81 E2 08 36 00 B5 E1 32 1B DA 40 B0 01 00 B4 42 B0 01 00 B4 42 B0 01 00 B4 42 B0 01 00 B4 42 
B0 01 00 B4 42 B0 01 00 B4 42 B0 01 00 B4 42 B0 01 A8 53 78 2B 1B 23 62 A0 29 04 1B 00 40 2B 04 
1B 00 40 2B 04 1B 00 40 2B 04 1B 80 A6 70 99 0D 8D 20 D8 00 D4 8C A1 90 D1 2C 82 0D 00 A0 15 82 
0D 00 A0 15 82 0D 40 83 B8 CC 86 FA 11 6C 00 6A F7 BE 7B 6F BB 08 18 10 82 0D 00 A0 95 26 82 CD 
5B 8D 8D 83 F1 CA 8B AF 73 66 99 AB 86 E4 E1 E1 A1 ED 22 D4 4B EF 0A 52 BB FE D2 BB 76 32 80 0A 
2A D5 1E 6C CE CC 18 2D 64 B9 F7 7D DF F7 F7 4F AF 23 63 E6 44 D6 4D 3F 0F AB B6 77 8B D1 A0 B3 
0D 00 50 89 BA 83 CD 79 DB 88 B5 FC 33 37 45 44 C4 9C FF 59 5A 9B 97 20 BF BC D5 CB E6 B4 6A B2 
DE DA EE E2 B7 93 BD 2B 00 00 CE AB 39 D8 9C B7 8D 58 4F 3F CC 70 81 79 73 27 EE EB 5F 4F C4 FB 
FB EA CA DD CD 69 D5 E8 D6 92 CD 1B C9 06 00 B8 46 2B 9D 47 DC AF 7D F0 8B 75 3B 3A 2D 35 6F EE 
DA 28 0C 80 DA DD 3F DC 9F 1E D0 E3 1F 35 FB A7 DE DD 8F 6E 2D D9 7C ED 45 8E 27 66 DE F7 E7 E1 
B7 FD 97 2B F2 94 7C C2 E7 B7 27 13 53 44 C4 30 92 1F FF F4 12 9D E8 5D 3B D1 BD 82 D4 EE 2C 3F 
3A B2 96 21 46 67 F2 4D 83 F7 CE 8F 8F 5A 96 E8 30 A2 41 05 2F 55 73 B0 99 F3 67 7B 31 9D 8E 6F 
F7 1F 73 53 C4 5B FD 5C B8 05 9F EA FB B1 B7 CA 30 8C C4 12 9D E8 5D 3B D1 BD 82 D4 AE F0 BE 8E 
BF F8 C9 EF E2 B6 68 F2 DE C5 93 2B 5A 23 4D 2A 98 21 2B B3 6B 0E 36 91 C9 DA DF 8A 31 1D 19 0B 
11 11 7B EB 6F DF 8C 97 DB 91 88 DC 5A F2 99 DA 3C 7A D1 0D 80 5E 7C 11 83 31 91 6B C0 4B 1A 57 
F1 35 B6 C8 2D 6B A7 1B D3 26 6B FF 68 3D F1 BE 3F 4F E9 15 5E 6C 13 89 B6 52 02 D0 15 5F C1 A8 
5F C5 C1 66 CE 3F C2 10 FB 98 2B 4E BE BC BF AF 6E D0 65 C4 FC F1 64 C9 E7 F7 E9 CE B5 FD 97 2B 
F6 E3 A4 DA 02 01 00 06 A6 F6 FB D8 66 86 71 BA 25 DB 99 8D 16 72 BC 75 CD 9C 3F DB EE E2 E7 E1 
BC CE 99 4D 37 D6 F2 57 66 AE 69 DC 4C 2C BA D7 4E 74 AF 20 B5 EB 2F BD 6B 27 BA 57 30 AB 76 0D 
5C 57 74 66 C6 74 73 F8 DD 5A EE 63 27 72 DE 6A 3C 3A 74 27 49 AE 02 00 A0 04 9D 3B CC 00 00 06 
A8 C3 A3 FB 7B AB 71 64 5C C9 83 5E 0F 9A 7C 69 8D 7A 57 59 65 05 F3 37 EF 51 05 2F AC 5D C8 99 
F5 A1 7E 97 D5 EE F4 D1 3C 28 F3 C2 34 E8 D2 F7 2E DA 0B AE E3 55 0B 14 AF 60 EA AD EB 41 2D 2F 
FF 62 11 BF A3 B6 B6 88 88 BD 4D 2E B3 8E 83 26 47 7E EF 87 0B 6B D4 BF CA AA 2A 98 6D BF B4 4E 
1B F7 A0 82 97 D5 2E F9 BC 8E 57 EE D2 DA ED 97 56 E7 AB 14 71 61 ED B6 76 A4 72 5B BB D4 DB DE 
AC B2 1F CE F0 B9 9D AE 60 89 2F 16 AB 93 C1 16 54 24 59 99 E4 3F A6 AD DD F1 F7 23 E2 E2 1A F5 
AD B2 EA 0A 9E 79 42 A4 82 B1 98 EB 9C 8B 6B 97 7A 66 97 53 A0 44 ED BA FE 71 8C B8 B8 76 C9 7F 
7A DD FE 68 5E F3 E1 F4 7D 0D 6B 77 A8 50 F7 9A 22 9D 99 31 DD 58 CB 7D A4 4A 22 D2 E7 41 93 4B 
D4 A8 5F 95 CD AA A0 88 64 DC DA 18 DC DC D8 8F CE 42 65 6A 17 AE 7D D9 58 CB A5 E2 79 9D 51 AA 
76 DE F7 67 3F EE CC 29 51 3B EF EF AB 1B 1F B7 7D FE E1 FB EB 8E 56 F6 8A 0F 67 B0 C5 CF 85 9B 
D7 19 BD 5D 57 D4 AE 7B C1 36 59 FB 99 5F 79 FD 1C 34 B9 64 8D FA 53 D9 EC 0A 7A AB 71 64 36 BE 
A5 64 CC B9 D7 E9 7F 5F A5 6B E7 AD 7E 2E 64 F9 67 7E D3 5C 59 2F 57 AA 76 FB 2F D7 FA 7C 39 F3 
A5 D9 05 25 6A B7 FF 72 E5 EE C6 EC C9 F5 ED EB FE E9 39 BF 17 AE D8 CF 9D FD FB B2 4C ED CC 1F 
4F 96 6C 5E BA 17 6C 59 F6 5F AA 51 26 A3 77 78 F7 4D 4E 8D 34 A9 AC F3 7B E1 46 67 E3 FB 48 CF 
B9 E7 CC 0C C3 18 45 37 EB 8D FC DA 1D 63 AD 67 95 0A E5 D4 CE 79 DB 88 2B 4F 61 6B DD F3 57 EF 
E6 08 CE AC 9D F7 FD 29 B2 99 1A 6F 8F C7 A6 AD F8 E4 C8 7D 51 E0 9F DE 61 B2 CC 6E FE 39 99 2F 
AF 76 E6 FC C3 DF DE F5 27 D8 D0 3B A9 D9 F8 14 2D AA 87 F1 D6 F6 4F AF A3 6E FF 6D 9C 92 5B BB 
BE C7 5A 6E ED 92 7F 48 4F 1E FB 36 47 F0 99 4F A6 B5 DC 87 6D 8F E6 FC D9 EE EE 55 80 2C 45 FE 
E9 A5 B7 E9 8B DC DA 39 33 C3 98 76 B0 29 32 CB E8 D6 52 2C ED F3 A0 C9 39 35 D2 A7 B2 EE 62 14 
E9 53 3C CA 9A DC C1 9C 3F DB 87 19 68 FB 24 A3 76 BD 8F B5 40 C1 F7 AE E3 57 80 B3 E4 D4 2E FE 
0F AD 97 B5 93 B3 6F 5F 7F 73 4D 44 72 FE E9 BD 6C C4 DE AE FB 13 6C 22 3A 0E 9A 9C 53 23 3D 2A 
AB E8 0E A8 BE 10 3F BA B5 E2 55 EE 03 75 ED BC BF AF 6E E4 1F DE 74 73 F8 67 D8 B7 06 AD C2 EF 
9D 48 E2 92 70 1F A8 6B 97 71 31 BB 77 B5 93 73 6F 5F CF 73 2D AB 76 FB 2F 57 AC DB 51 8F CE D8 
F4 1B 34 39 A7 46 7A 54 76 F2 68 67 65 95 B7 1A 27 BE E8 7B 57 C3 EC DA 45 87 02 F7 23 77 36 74 
B5 6B 9D CA C5 EF 5D AF 9A 13 72 6A 37 79 4C B6 3C F6 AE 76 92 5B C1 80 F7 FD D9 CF 26 20 91 DC 
DA 85 7F 1F 27 53 AF 3B D2 F7 CA F4 EF 9E E5 B8 8B 6A D4 C7 CA A6 2A 18 DC 2C 19 BF D9 F5 F0 30 
5E A7 3E DC F1 7B 49 ED 92 CF EB 7A DD 2E 7F EF 22 DB C6 6E 68 EE A6 4B 6A 17 FF 2C F6 E1 93 E9 
5F FE E1 EC C7 87 F2 E8 D2 0F A7 D8 BD 0A B6 43 7D 02 FD 79 57 42 17 D6 A8 7F 95 3D 53 41 49 AC 
8D DE 9D D2 E1 7B 44 8F 2E AC 5D EC 79 DD 7F 03 79 EF 92 DB F7 EA DF DE 85 15 EC FA 7D D9 09 97 
7F 38 19 04 19 00 A0 95 FE 5C 63 03 00 A0 00 82 0D 00 A0 15 82 0D 00 A0 15 82 0D 00 A0 15 82 0D 
00 A0 15 82 0D 00 A0 15 82 0D 00 A0 15 82 0D 00 A0 15 82 0D 50 38 4D 34 19 D7 B7 81 8C 0B F2 56 
E3 A0 6A E9 81 20 45 82 57 E3 CC A4 42 CE AC 67 D3 0E 41 67 04 1B 90 41 35 98 52 9F 06 32 2E CC 
5B FD 5C DC 6D AF AB DA 64 BD BD 5B FC 24 DA D0 09 04 1B 30 70 CE EF 85 5B C1 C4 0A 93 5F 4B E9 
D7 7C A3 D0 16 C1 06 94 E0 CC 8C F1 6A 35 8B 36 4F 7A AB 71 D8 62 99 68 95 8B AC 1A AF 9C D5 F8 
B0 DE 99 C5 9A FD 62 0F 33 F6 16 6C 73 6A 28 8D B6 1A 46 9F 12 AC 48 1C 20 6C 70 8C 57 E5 6D 73 
C9 84 41 B1 A3 C4 8A 67 FE 78 B2 36 2F 9C B4 A1 7D 04 1B 50 8E BB 78 BD DD 1F 9B 27 BD D5 78 B4 
90 43 DB E5 7E 29 8B 51 98 46 CE CC 18 2D EE 0E A3 8F 6F EF 16 D3 EC A9 A8 8F 72 F6 26 22 9B E9 
CB ED 71 82 95 CD F4 B0 26 F6 14 7F 6B 6F A6 E3 95 17 9F 5C CC FB FB AA 38 33 BB 30 D7 62 B3 CD 
05 83 C4 3F 1F A7 0A 37 6F EE 7A 38 0D 3A 74 54 C5 A4 02 80 6E CE CD 35 93 33 7B 5E B8 C0 DE FA 
8A 09 42 22 53 49 A5 E7 35 0B 1E 66 EF 4D 31 8D 5D C6 53 52 CF CC 98 59 2C F1 C4 F8 64 20 51 E9 
A7 A6 E7 3E E9 D9 6C 28 D0 16 67 6C 40 06 77 31 CA ED 12 79 9A 80 D8 79 DB 88 F5 F4 23 32 1F F1 
E8 D6 0A CE 95 52 33 83 9B 3F 9E B2 B2 E3 FC DE 12 C7 35 6F EE 82 5F 32 27 44 3E 9D B3 79 7F 5F 
DD F8 5E 15 15 09 A4 A2 29 3A FB DA 91 B7 FA B9 70 AD E5 AF E8 B9 9E 79 73 27 B1 99 DF 81 56 10 
6C 40 86 D4 39 4A 6E BF C1 78 0C 8E 0E ED 8D DE F7 67 A9 63 AB F7 96 5F DC DB 91 62 69 98 6C FB 
2F 55 AE 95 2D DF 21 D6 FE CC 55 41 09 B4 8C 60 03 2A A1 68 08 5C 4F 4A 9F C3 A8 F7 96 CB FD DA 
AB 16 4F 1E 6D F9 FC F6 9C B7 8D EA 7C 2D 3C E7 BB 08 B1 86 6E 23 D8 80 AB 4D 1E ED BC 5C 89 AD 
F2 FE BE 46 4F BF 4E A1 17 9E 3C E5 EC 2D 4B 5E 7E 8E 6E 2D F7 F5 E7 8B 32 D7 92 65 28 24 3B D6 
32 5B 44 81 46 11 6C C0 F5 26 BF 22 1D 14 E5 30 70 49 F0 30 BE CA 5B FD 3C 35 2B 8E 6E AD B0 17 
61 74 45 CE DE F2 0A E0 9E 6E 90 8E 0E 20 62 FE 78 B2 5C 37 EB FA DA C5 29 9A 77 B6 B6 FF 72 33 
5A 44 81 26 11 6C 40 05 CC F9 C7 7E 29 E1 85 B1 E9 C6 DE FA 1F C1 77 BF 39 FF F0 B7 77 87 55 A3 
C5 DD 32 EC 78 68 CE 3F B6 F6 E1 6A DA E8 EB F9 D4 45 23 67 6F C5 0A 30 5A DC 6D C3 B6 4B F3 C7 
93 25 99 E7 6B F1 5B 02 CE 0A 4E 38 93 FD 6A 82 0C F5 BE 3F B3 8F 03 34 C7 F0 7D BF ED 32 00 43 
E2 AD C6 A3 D7 A7 FD 99 A0 AA F8 88 3F E5 4F E6 01 9D 99 31 95 ED F5 A3 85 55 B5 1F E0 5A 9C B1 
01 9A F3 FE BE 4A DE 79 D4 E4 D7 D2 BA E0 9C 2D 8B F3 B6 49 F4 FE 07 5A 42 B0 01 FA F2 56 63 C3 
18 BD 3E E5 F7 5F 34 E7 7F 96 9F D3 EB 26 2E 70 66 D3 4F BA 49 A2 23 68 8A 04 00 68 85 33 36 00 
80 56 08 36 00 80 56 08 36 00 80 56 08 36 00 80 56 08 36 00 80 56 08 36 00 80 56 08 36 00 80 56 
08 36 00 80 56 08 36 00 80 56 08 36 00 80 56 08 36 00 80 56 08 36 00 80 56 08 36 00 80 56 08 36 
00 80 56 FE 3F 21 7E FB A1 83 2D BC E4 00 00 00 00 49 45 4E 44 AE 42 60 82 
EndData
$EndBitmap
$Bitmap
Pos 4200 6500
Scale 1.000000
Data
89 50 4E 47 0D 0A 1A 0A 00 00 00 0D 49 48 44 52 00 00 02 50 00 00 02 42 08 02 00 00 00 80 9E 6E 
82 00 00 00 03 73 42 49 54 08 08 08 DB E1 4F E0 00 00 00 09 70 48 59 73 00 00 0E 74 00 00 0E 74 
01 6B 24 B3 D6 00 00 20 00 49 44 41 54 78 9C ED DD AD 72 E3 4A BF EF F1 BF 4E AD 6B 78 C0 C6 76 
40 2A E0 60 19 64 A8 35 24 64 99 1C 30 4C 06 0B D8 64 58 60 D8 22 36 58 C0 AA 3A 55 CF 54 ED 4D 
3C 24 64 2C 1A 83 F8 0A 52 01 23 81 0D 0E DA 37 A1 03 E4 17 BD 5B 96 F5 D2 56 7F 3F 15 90 C8 B2 
D4 76 2C FD DC AD 56 B7 11 04 81 00 00 D0 77 FF AB EB 02 00 00 D0 06 02 0F 00 A0 85 1E 06 9E 3B 
35 8C D1 D2 EF 64 1F EE 74 EA 36 BA E3 FD BE AF DA 4B 1B 85 04 00 E5 F4 30 F0 BA E3 4E 2D A7 F9 
BD 8C 57 41 B0 1A 57 7E 7A 3B 85 04 00 E5 10 78 00 00 2D 68 19 78 EE D4 38 48 B4 4B 46 1E 49 36 
1B FA CB D1 E9 49 BF 53 DB F4 97 23 C3 72 44 1C 2B DC A8 3B 35 46 CB E5 34 BA A5 9C 8D 87 4D 94 
A7 07 4F 0F 45 76 19 59 9E 6C D2 8C AE 15 79 39 59 9B 4D 16 32 F1 D2 93 05 CE D9 72 4E C1 FC E5 
C8 18 2D DD E8 DB 94 DA 43 C9 72 16 BD FC C2 82 01 40 81 A0 77 36 B6 88 B9 F0 8A 1E 16 7B 93 F3 
C7 E1 77 6F 61 46 B7 92 7E 52 D6 3E A2 1B D8 D8 F1 55 F2 37 1E 6E 6E FF E7 E9 21 6F 61 9E 9E 11 
2D 41 74 4B F1 4D C5 FE C8 D9 6C FC E9 C9 F7 25 52 E0 DC 2D E7 15 CC 5B 98 22 A7 B7 29 F6 96 15 
BC ED 97 BE FC 82 97 0C 00 45 74 0B 3C 6F 61 C6 1F 3C AD BD B1 53 E7 FB FD 09 37 71 F2 4D 87 43 
64 71 F4 9C 1E CF BB 9C 8D 27 D6 3C 3E 94 17 4C 45 7B 89 3E 98 B3 D9 C2 C0 4B 04 74 F6 96 F3 36 
90 CA 9E C8 7B 5D FC B6 5F FC F2 73 5E 32 00 14 D1 AC 49 D3 FF B5 DE C9 C3 DD E0 B4 64 78 6F CA 
EE D3 13 91 F1 2A 78 9F 85 8F B8 53 63 38 DF 1D D7 F1 3E 77 62 3F 45 FA 89 8C 9F EC 32 7B 8B EC 
28 7F E3 89 35 07 77 0F A7 7D 38 56 71 7F 4C F7 D5 11 73 F2 35 F1 72 9C D7 C3 73 32 36 5B B2 C0 
05 5B 2E 2C 58 F4 BD 1D DC 3D C8 6E FD CB 2F 7E DB 73 CA 99 B7 97 73 2F 19 00 F2 68 16 78 69 91 
24 38 5D 19 B2 64 73 68 A0 13 11 FF F7 C7 F5 FB C9 DB 78 BE F1 2A F0 16 A6 63 E5 5C 53 3C D8 CD 
87 91 2B 5D A9 28 BD 42 DE 96 0B 0A 66 DE 0F CB 6D FB 7C 00 17 EC A5 B9 97 0C A0 CF B4 0F BC 63 
9A F9 CB 6F F3 DD A1 69 2C D6 ED BF 5C ED A8 78 2F B9 1B 2F 34 98 BD EF 6B E2 1B 5B 1C 2B B3 7F 
46 46 EB ED 15 37 2D 94 DC 72 99 82 15 2A F5 25 22 6F 2F CD BD 64 00 7D A6 59 E0 0D BE 4E 4C F9 
F8 1D 39 3D 7B 9F BB B0 5E 92 68 B7 F4 3E 4F F5 86 54 A3 D9 C5 75 BE 82 8D 97 33 5E 6D EC 48 1B 
E0 61 E9 53 C6 C2 5A 94 DE 72 BC 60 61 0B E6 DE A9 F5 B1 E0 6D 2F 59 9C E3 5E 9A 7B C9 00 FA 4E 
B3 C0 93 C1 EC D9 DE CD 87 A7 2E FE 96 23 F6 F3 6C 90 48 B5 FD DD D9 FB 73 F4 60 F6 63 61 9E 6A 
18 EE B4 A0 15 2D 76 5A 3F 2A D8 78 9E C4 60 2E EE AB 93 91 10 E3 EF D1 82 ED 7B FE 9F AF 6F 9D 
D9 75 F1 96 0B 0B B6 9B 7F 3B BE 4B C7 B7 B6 E8 6D CF 93 BB 97 8A 2F 19 00 7A DA 4B 33 25 D5 AF 
2F 63 79 E4 CA 9A B9 F0 92 5D 31 63 8F 2E B2 7B 82 46 6E 58 48 F6 1D CC DF 78 62 CD C8 9F B1 57 
12 BB 8D 21 67 CB 12 79 24 77 B3 39 77 55 64 74 76 CC D9 72 4E C1 C2 0E 96 8B D3 73 92 5D 27 B3 
DF F6 4B 5F 7E 61 C1 00 20 9F 11 30 3D 10 6A E1 2F 47 C3 F9 C3 86 CB 69 00 14 A5 5B 93 26 00 40 
53 04 1E 00 40 0B 34 69 02 00 B4 40 0D 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 
02 0F 00 A0 85 26 03 CF 5F 8E 0A A6 0D 2F 33 1E 54 C6 16 00 00 A8 A2 B9 C0 4B 8F 38 E9 2F 47 C3 
F9 EE 34 25 E8 6E 3E 2C 8C B3 C2 31 2B 01 00 B8 44 33 81 E7 4E 0D C3 72 12 0B FD 5F EB 9D D8 9B 
F7 C3 70 C2 EF DE 22 7F E6 CE CC 2D 00 00 50 55 03 81 E7 4E 0D CB 39 0E 90 7C 32 98 BD C7 E7 2D 
1B DC 3D 64 0F DC 9F B7 05 00 00 AA FA A3 FE 4D 8E 57 41 B0 12 11 39 77 F1 CD 7D 75 44 EC BB F4 
1C 31 A5 B7 00 00 40 49 0D 04 5E 49 EE D4 72 C4 5C 7C BF 74 6C 7D C3 30 1A 29 0F 00 A0 2F 32 47 
CD EC E8 B6 04 77 6A 58 CE E9 82 DE 25 12 F3 1B A5 97 A8 E3 ED ED AD EB 22 E4 A2 6C D5 50 B6 6A 
28 5B 35 94 AD 9A BC F8 E8 22 F0 8E 97 E8 98 39 0D 00 D0 96 B6 03 CF 5F 8E C2 B4 AB 50 B7 03 00 
A0 B2 56 AF E1 85 37 E2 D9 4C 8A 0D 00 68 5D 8B 35 3C 7F F9 6D BE 33 17 1E 69 07 00 68 5F 7B 81 
E7 FF 5A EF 44 76 F3 A1 11 13 8E 2F E6 2F 47 06 83 88 01 00 9A D3 64 93 E6 78 15 ED 2C 33 98 BD 
07 B3 BC 55 73 1E 8C 6F 01 00 80 CA 98 2D 01 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 
05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 
0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 
A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 
02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 
00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 
05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 
0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 
A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 
02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 
00 A0 85 3F BA 2E 00 00 68 6D 22 46 EE 63 8F F2 28 41 8B 65 E9 39 02 0F 00 BA 51 14 75 59 EB AC 
09 BF EB D0 A4 09 00 1D 28 93 76 D7 3F 05 51 D4 F0 00 A0 6D 99 D1 15 AD C0 E5 65 DB 7E F9 CF 58 
55 6F FD 67 9D 65 EB 31 02 0F 00 5A 95 0E B3 74 5B 65 B8 64 BB DD FE F3 F8 45 24 99 70 C9 0D FE 
CC 58 48 0A A6 11 78 00 D0 9E 32 69 17 53 18 75 45 3B 8A A4 20 E1 17 22 F0 00 A0 33 C5 69 F7 CF 
FF 3C D6 B2 97 44 15 50 DB FC 53 20 F0 FC E5 68 F8 F9 1C AC C6 F1 45 F3 DD FE 0F 73 E1 BD CF 06 
9D 14 0D 00 6A 94 A8 DE 15 A4 5D 66 2B A5 1C B2 AA A8 F7 4A 89 1A A1 B6 95 BF CE 03 CF 9D 0E E7 
3B B1 23 4B C2 B4 DB C7 9C BF 1C 0D E7 43 E3 73 13 0B 44 00 B8 71 97 A6 5D 34 99 8E CF CD 48 BE 
3F 23 4B B2 C2 6F 3D 91 C9 3A 77 5F FD CE BF 4E 03 CF 9D 1A 96 93 5C E8 FF 5A EF C4 DE EC 2B 75 
83 D9 BB 27 A3 E1 FC D5 5D 8D 49 3C 00 B7 AB E4 4D 05 E9 B4 2B 08 A1 30 F9 92 15 47 23 98 04 86 
C8 29 FC D6 46 BC 57 67 3C F3 8A F7 1E 2B 80 21 37 7D 2B 60 77 81 E7 4E 0D CB 31 17 DE FB DD DF 
86 15 59 3E 98 BD 07 B3 E8 8A 83 BB 07 91 8F DF BE 8C 69 D7 04 D0 0B 79 D5 BB 8B D2 2E BD B5 89 
18 61 B6 25 12 2E E3 29 93 F3 9B CD 66 1C C3 F2 F1 9F C2 76 57 05 75 17 78 E3 55 10 AC 44 44 DC 
33 2B BA AF 8E 88 7D 97 99 76 86 04 12 64 7C 6D BA E5 EF 20 00 FA A7 D4 A0 2A A9 FC F8 EB 5F 5B 
91 72 FD 56 0C 91 B6 86 62 A9 1E 96 6D D9 E7 42 EA CD 30 82 A0 EB 70 70 A7 86 25 B9 D7 E8 8E 15 
C1 43 BF 15 C3 38 7D 6E 82 FC FF EE F6 6D 5B 6F 31 01 A0 B2 FD ED 74 22 22 F2 D7 F6 2D 7B 9D 78 
9F CC BF FE 55 EA 24 F6 F8 E5 82 9E 9C 93 C0 38 5B F9 EB 8F D4 0B ED BC D3 4A A1 F0 22 DF F1 82 
9E 88 88 C4 12 BA 60 CC D5 E3 87 A0 BB 7F EE 76 BB 7D 7C AC A7 57 71 ED 28 5B 35 94 AD 1A CA F6 
4F E4 F7 CC DD 65 75 1E 79 3C 53 B6 82 4A 63 CE 79 6F 1D 56 13 52 B5 9F 92 D7 17 6F 3D 2C 15 0E 
BC 54 DD 2E 2D 7A DD 35 B7 96 1D FE 1F 6F FB DF 04 E0 86 9D 1D 00 BA 4A 57 C9 CB D3 AE 60 85 B5 
04 13 31 CE B7 88 46 C2 52 E5 2F 31 86 91 DD 78 A9 68 E0 C5 6E 4D 28 67 DF 2B 29 EF 3B 08 B1 07 
A0 37 32 D3 EE BA F3 5B D9 EB 7F B7 7C 16 55 71 B6 84 30 ED EC 4D 70 36 ED 62 DF 83 0E 77 9C 1C 
93 2F 83 51 F8 B5 08 00 5A 77 71 F5 2E B3 9B DE 2D E7 50 6B D4 AB E1 F9 CB 6F F3 9D B9 F0 AE B9 
D1 3C CC BC 75 66 07 4E 89 7C 5C F8 88 00 68 D8 45 73 FA 54 4C 3B 94 A3 5C 0D CF FF B5 DE 89 EC 
E6 43 23 66 B4 F4 2F DE D4 44 8C 49 60 9C AF F0 5D 51 E7 63 7A AA 10 EF 03 90 E9 EC 58 62 79 43 
88 95 45 DA 5D 42 81 1A DE 78 15 BD B8 98 BA EF FC 8C 9F 13 E3 CF F5 E1 F9 3F 83 D8 B0 3A 07 93 
C0 C8 AD ED 85 12 0F 95 FB 0C 85 1F E5 A2 73 FD A3 3C AA DA A9 E9 B1 E4 CD 3D E5 EC 0F 63 45 5F 
2B D0 99 B0 33 C8 F1 F7 C4 A3 D7 36 66 72 C4 5D 48 81 C0 AB 55 F4 E3 15 35 11 E3 F8 E1 38 DF B3 
B6 5C 75 A5 9D 7B 3C 6F 48 A9 5E 5E 80 4E EA 6C FC 20 ED AE D6 B7 C0 93 9C C1 E5 A2 CE F4 E7 C4 
15 C8 3C A0 24 AD 46 6D 56 84 72 D7 F0 2A 88 7E 50 8E 9F A1 B5 04 E1 4F C1 13 C3 2B 7C C7 9F 26 
CB 78 E8 46 A5 CC CF F6 6D 5B DB D6 22 48 3B A0 02 1A 33 DB D1 87 C0 2B 16 9E 82 CB 9C 88 13 F9 
37 09 8C E2 13 FD D9 15 62 A1 02 40 63 75 7E 17 E4 7C 52 55 0F 9B 34 D3 CA 67 5E 85 CD 02 40 A6 
A2 0B 2B 17 75 CE A4 13 74 4D 7A 52 C3 CB 6C D5 44 FB B8 3F 01 38 EB AA AB 77 7C CD BE 42 4F 02 
0F EA 20 F3 80 F2 AA DC 69 8E AA FA 19 78 54 F2 3A 44 4B 2F 90 50 F9 A0 48 4E FD C3 B1 75 9D FE 
04 1E 9D 7A 01 A8 AF FA D7 71 D2 EE 6A FD 09 3C 00 50 47 B4 6D 3F AF 9D 9F AF E9 2D EB 6D E0 D1 
AA D9 92 C8 81 CC 8D FC 40 28 6F 08 4D CE 4B DD EA 55 E0 25 BE 2E F1 D9 6A 43 E2 C6 73 23 7B 68 
37 40 2B D1 8B 76 79 17 F0 E8 AE D2 BE 5E 05 9E D0 44 D0 89 C8 E1 DC F8 80 35 80 26 18 5A A5 01 
7D 0B 3C 00 50 53 B4 CD 89 7B EF 3A D1 F3 C0 A3 55 13 40 FB CA F4 58 41 FB 7A 18 78 B4 6A 02 E8 
50 66 8F 15 BE 7C AB A0 87 81 97 C0 E7 0C 40 9B CE F6 58 B9 AC BB 0A ED 99 F5 E9 67 E0 51 C9 EB 
16 6D 38 00 14 D4 CF C0 4B A0 92 D7 3E 32 0F 38 E2 14 A4 88 DE 06 1E 95 BC 6E 31 A2 26 B4 95 F8 
B6 77 CD DC 08 DB B7 6D 1D 25 C2 5E 6F 03 2F 81 6F 58 00 3A 57 2A ED 68 1C 69 4C 9F 03 8F 4A 1E 
00 E0 A8 CF 81 97 40 25 AF 4D 5C C3 03 D6 12 70 DA 51 4A CF 03 8F D1 35 3B 44 E6 01 51 17 B7 67 
72 1D BC 6E 3D 0F 3C A1 61 B3 5D 65 C6 CC 05 34 C1 37 6C D5 F4 3F F0 12 F8 08 02 68 0E 53 DF A9 
4C 8B C0 A3 61 B3 35 0C 21 08 EC FD BC AE 85 83 F6 91 06 68 11 78 42 E6 B5 25 31 07 2C 99 07 08 
D5 3B 65 E8 12 78 69 64 5E 9D 22 31 C7 65 3C A0 62 F5 CE C8 F9 1D 35 F9 A3 EB 02 B4 67 FD 27 21 
07 88 5C 51 F3 E6 1B 4C 29 F1 B4 2B 5B BD 63 C6 D7 E6 69 14 78 92 CA BC C9 4F 9A 1A 9A 35 11 83 
53 A4 22 6A 69 5E CE D8 C8 CF 40 FE 4C 2E D4 F6 9F 3E 11 A3 FA A5 BB 20 92 79 9A BE 7F 8D D3 2B 
F0 84 CC 83 7E 1A BC 92 1A 9E DC 53 A7 F8 49 C6 AA 8F FF A8 DB BE 52 63 D9 92 6F 05 A7 17 A5 68 
17 78 92 95 79 C2 E7 12 7D 74 36 EA 4A 56 C5 F6 DB B9 B2 DB A1 7E 2E 3B AB 24 2E E0 F1 66 37 40 
D3 4E 2B E9 0F 22 97 F7 6A 14 3D 8D D2 51 B3 2B B9 37 84 49 70 FC 29 B5 9D 9F 22 3F 03 D2 EE 52 
D5 D3 4E 48 BB A6 E8 58 C3 0B A5 FB B0 D0 BC 89 DE C8 4C BB 4B 2F AD 95 FC 16 58 E6 A8 D9 6E B7 
8F 8F 8F 17 ED BD 35 4A 94 8D 0B 78 AD D0 37 F0 24 27 F3 84 E6 4D DC B8 74 DA D5 1B 75 C7 03 84 
EF 88 B8 2D 5A 07 9E E4 DC AB 40 EC 5D 6F 2D C1 F1 B4 4B 5F CD 36 5D 99 76 05 51 97 3E 22 38 46 
6A 43 C3 7F 2B 74 0F 3C 39 1C B4 79 B1 27 87 50 E4 D8 86 FA 1A 4A 3B 3E FC E8 07 4D 3B AD A4 15 
1C D2 E1 59 80 5E 2D 50 DC 3F 8F 5F 12 4B CA A7 DD E4 67 F6 27 7C FD 27 69 87 FE A0 86 77 92 57 
D5 3B E2 FB EF 45 94 6D D5 BC AA E3 E8 A3 FC 53 5F 49 1A 75 51 DA 65 3C 9D 4F 75 27 54 39 4A FA 
89 C0 4B 8A 5E 90 2F 29 7F 4D 4D 6E B6 15 11 59 D7 B9 B1 AB 1C C3 55 E7 3B 22 48 3B 20 8D C0 CB 
15 3D E6 69 CF BC 5E 3B 95 BC 30 E4 74 8E 3A B9 2E ED 88 3A F4 18 81 57 4A 66 BF 15 52 30 5B 64 
90 88 68 AB 66 73 DA 1C 0A 59 89 7B B6 72 5C 5A 36 D2 4E 15 8C B1 D2 16 02 AF AC 0A 7D B2 FB 74 
72 3C 6B B2 96 F5 61 08 C5 BC 4E AD F5 56 F2 CA E7 9C 3A 97 0F 55 46 DA 75 83 31 56 5A 44 E0 A1 
1E 79 A7 CB DA 2B 79 65 B6 46 C2 9D 95 A8 DE 91 76 9D 61 8C 95 16 71 5B 02 1A 91 D7 DE 5B 39 FC 
26 62 84 3F 05 EB 84 39 47 DA 9D 45 DA 41 4F 04 1E 9A 72 BA 73 3F 9E 40 15 32 EF 6C CE 1D 87 42 
26 ED CE 22 ED A0 2D 9A 34 D1 81 92 17 F3 CA D4 E7 80 DB 46 8F 95 16 11 78 68 43 FA 4A 5E F8 67 
5E 68 11 75 0D A1 7A A7 16 7A AC B4 8B C0 43 83 A2 DD 35 33 7B AF 44 AB 7A A7 47 73 7A 8F 92 73 
57 22 ED 94 43 8F 95 76 71 0D 0F CD 8A 9E 64 33 13 AB 4C 6F 94 BC E7 02 40 79 04 1E EA 57 50 75 
B8 34 B7 2E 9A 9B 1B 05 A8 DE 01 34 69 A2 6D 19 6D 98 71 7F 6D DF 94 BD 61 BF 1F 48 3B E8 89 C0 
43 E3 F2 06 5E 09 AF EA A5 6B 6F 5B D9 B6 51 2C 9D 30 0C 9E A2 B4 1E F3 B5 03 34 69 A2 11 25 EB 
10 B4 55 B6 8F EA 1D B4 45 E0 A1 01 7C 6F 55 09 D5 3B 20 44 E0 A1 3E F1 DA 1A F3 2B 29 88 EA 9D 
A2 68 E9 68 05 81 07 F4 19 5F 35 80 23 02 0F 2D E1 CC DB 39 AA 77 D0 1C 81 87 06 71 86 ED 16 5F 
32 94 C6 A5 EE D6 11 78 80 16 F8 F2 01 10 78 68 0F 15 8E 36 F1 6E 03 09 04 1E 9A 95 A8 58 70 16 
EE 04 D5 3B A5 D1 45 B3 2D 04 1E 1A C7 D9 16 80 0A 08 3C A0 87 62 93 54 F0 85 03 10 11 02 0F ED 
A3 55 13 40 27 08 3C B4 81 4A 46 9B F8 4A 01 64 22 F0 D0 01 CE C8 AD E1 AB 86 A2 8C 9C DF D1 A4 
86 03 CF 5F 8E 8C A9 5B 7E 79 F4 F1 BD D1 D2 6F AE 7C 68 0F 67 5E 60 2F 91 70 F4 D2 6C 4B A3 81 
E7 4E 87 F3 DD 05 CB 8F 0F 1B C3 B9 2C BC 20 08 82 C0 9B AC 87 85 D9 08 35 F1 A5 B5 23 74 57 B9 
01 41 CE EF 68 58 63 81 E7 4E 0D C3 72 CA 2F 8F AC F1 EA 88 B9 F8 31 1B 88 88 C8 60 F6 63 61 3A 
2F 54 F3 6E 44 E9 A3 97 56 4D 00 2D 6B 26 F0 DC A9 61 39 E6 C2 0B 36 76 A9 E5 B1 75 5E 1D 31 27 
5F 07 C7 05 83 BB 07 D9 AD 7F 91 78 B7 8F 9B D0 01 74 A8 99 C0 1B AF 82 20 78 9F 0D CA 2E 3F 6F 
F7 E9 D5 51 30 74 8D 46 B6 46 F1 1D 02 28 F0 47 D7 05 48 19 DE 9B E2 7C 7A 22 87 58 F4 7F 7F 44 
1F 37 8C E4 D5 A1 E8 92 B7 B7 B7 66 8B 77 A1 ED 76 DB 75 11 72 35 54 B6 47 79 3C B7 FD C7 E3 6F 
93 9F F2 D7 BF 32 56 D3 F0 7D BB DE 3F FF F3 18 FD F3 AF 7F A9 55 52 B5 4A 13 D7 7E D9 4A 1C 26 
52 72 85 0E A9 5C B6 4C EA 05 DE 60 F6 6C CF 2D 6B 74 EF BD CF 06 22 FE F2 5B BC 83 4B 10 C4 2E 
13 19 86 91 58 A2 8E ED 76 FB F8 F8 78 7E BD 2E B4 50 B6 BC ED 3F C6 2B 22 E9 D5 34 7F DF AA DB 
6E 8F 99 B7 FE 53 A2 5F 2C 3A A7 F2 FB D6 41 D9 22 5F DA 8B 77 CD FB 56 2F 15 EF C3 1B AF 82 8D 
BD 9B 0F 0D C3 30 8C E1 E7 73 B0 B1 C5 BC 1F 76 5D 2C 34 83 56 B8 BA 44 6B 78 BC AB 40 9A 8A 81 
27 FB 8B 7D A1 D5 D8 FF FD 21 0F 77 15 2E FC 41 55 5C C9 AB 5D 22 E1 78 87 81 34 45 03 2F CA FF 
B5 DE 51 C1 EB 35 AA 23 D7 8B 26 1C 69 77 33 14 BD 1A D3 5B 0A 06 9E 3B 35 8C D3 AD E6 EE 74 38 
97 E3 5D 79 E8 0D 6E 51 A8 17 6F 20 70 96 22 81 E7 2F 47 C7 90 1B AF 82 8D ED 58 FB 91 C5 AC 8F 
85 57 E9 46 06 28 8F CC 03 D0 A6 86 7B 69 8E 57 D9 3D 28 93 CB 07 B3 F7 60 16 7F 78 D5 6C C9 80 
CB 1C F2 F8 F1 1F 82 19 B8 4D EA DD 96 80 DE 30 CE 5F A2 58 FF 19 AB D8 4D 7E 76 79 FD A9 1F 55 
4C 2E E0 01 79 08 3C D4 2D B8 6C E4 E8 74 E6 FD F5 AF DA CB 74 DA 78 98 07 FD C8 36 DC A4 C4 C4 
40 F4 5B 69 11 81 87 EE 25 32 EF 9F FF 69 E4 76 D6 70 17 D7 47 9D B2 55 A8 5B BC 11 58 3B 4C 0C 
D4 29 02 0F 2A 0A 63 E9 CA 68 A9 9C 6D 05 FB DD 6E B7 4A 8D 60 82 1B 13 6D FF 20 ED 5A 47 E0 41 
09 89 4A 5E A8 42 EC 5D 1A 72 CA 56 D7 00 D4 8E C0 83 2A F2 AE AE 9D 8D BD 8B 42 8E 84 03 B4 45 
E0 41 2D 99 55 3D B9 EE DA DB 31 4A 49 3B 40 67 04 1E 94 F3 D7 BF B6 8F 8F 8F 57 F6 2E 49 67 1B 
69 07 68 8E C0 83 A2 2A DC 3F 40 A4 01 28 40 E0 41 69 64 18 80 BA 28 32 96 26 00 68 C0 C8 F9 1D 
AD 20 F0 00 A0 15 DC 75 DE 35 02 0F 75 E3 3B 2C 90 29 C8 F9 1D 6D 21 F0 50 B7 C4 91 4C E6 01 50 
03 81 87 06 F0 4D 16 80 7A 08 3C 00 80 16 08 3C 00 80 16 08 3C 00 80 16 08 3C 00 80 16 08 3C 00 
68 05 77 EC 74 8D C0 03 80 E6 71 D7 B9 02 08 3C 00 68 1E F7 EA 28 80 C0 03 00 68 81 C0 03 00 68 
81 C0 43 03 B8 38 0F 40 3D 04 1E 1A C0 70 9A 00 D4 43 E0 A1 19 5C A2 07 A0 18 02 0F 00 A0 05 02 
0F 00 9A C7 85 6D 05 10 78 00 D0 30 EE 3A 57 03 81 07 00 0D E3 92 B6 1A B2 02 CF 9D 1A 59 A6 6E 
EB A5 03 00 A0 26 D1 C0 3B 04 DD EB 53 90 C1 BB 7F 21 F8 00 00 B7 EA 18 78 EE F4 18 74 AB 71 D6 
9A 83 D9 7B F8 F0 D3 2B 99 07 00 B8 35 7F 1C 7E 19 AF 82 CC 9C 4B 2B BF 26 34 96 E8 93 C6 75 0B 
00 5D A3 D3 0A 9A C1 60 2B 00 14 13 6D D2 A4 A5 12 B5 A2 67 1A 00 95 C4 6A 78 8E 45 AF 14 00 40 
3F 1D 03 6F BC 0A 82 20 F0 16 E6 31 F7 46 4B BF CB 92 01 00 50 A3 C4 35 BC 63 57 CC 8D 2D BB F9 
90 DC 03 80 AB 31 AE 98 1A F2 3A AD 84 15 BE 20 D8 D8 FB DC A3 A1 13 00 2A 60 5C 31 65 9C EB A5 
79 08 BE 60 23 16 99 07 00 97 A2 F7 96 32 CE 05 DE 71 98 B1 97 7B 2F E7 8E 74 00 00 D4 F7 47 CE 
72 77 6A 58 8E 88 88 98 0B EF 7D 36 68 AF 44 00 00 34 20 51 C3 F3 97 A3 B0 42 67 39 62 2E BC 20 
08 02 D2 0E 00 D0 03 C7 1A DE A9 4A 27 F6 86 C6 4B D4 80 D1 C5 00 A8 24 D6 A4 49 D2 A1 4E 01 99 
07 40 21 D1 C1 A3 39 1B A1 6E D1 CC E3 F3 05 A0 53 D1 B1 34 4B DE 75 50 7E 4D 00 00 54 11 1D 5A 
EC E9 B5 68 86 D7 63 7F 96 D7 27 1A 3E 01 A0 24 86 59 51 46 B4 97 E6 E1 26 F3 43 F0 C5 0D 3F 9F 
8B E6 87 05 00 24 31 CC 8A 4A B2 EE C3 1B AF 82 60 D5 7A 49 00 A0 77 B8 8C AD 12 26 80 05 00 68 
81 C0 03 00 68 81 C0 43 93 B8 5C 0F 40 19 04 1E 9A 94 B8 68 41 E6 01 E8 0E 81 87 86 31 37 0A 00 
35 44 6F 3C 3F 8B FB CD 01 00 B7 2A 36 B4 18 F7 22 00 00 FA 8A 26 4D 00 80 16 32 03 2F AF 79 93 
26 4D 00 C0 AD CA 08 3C 77 6A 39 E6 C2 0B 02 6F 61 8A BD 09 82 F0 37 B1 37 0C 2A 06 00 97 E0 CE 
1C 95 A4 03 CF 7D 75 C4 9C 7C 1D 88 0C EE 1E E4 E3 B7 2F 22 83 D9 8F 85 E9 BC 2C FD F6 0B 08 00 
37 8A 81 34 15 93 7D 0D EF E1 6E 20 22 32 BC 37 77 9F 9E 88 88 0C BE 4E 8E BF 03 17 E0 1B 2E B4 
C5 3D 39 8A 49 07 DE F0 DE DC D7 EB 22 55 3C A0 2A EE 3D 07 A0 86 74 E0 0D BE 4E CC DD FC 6F 57 
44 64 FC 64 EF D6 BF 7C 11 F1 7F AD 77 E6 FD B0 ED E2 A1 17 F8 9E 0B 40 01 19 D3 03 0D 66 EF 9B 
4F C3 9A 3E 05 AB F1 78 B5 79 35 86 C6 5C 44 EC 4D 30 1B B4 5E 3E 00 00 6A 91 35 1F 5E 78 17 7A 
E4 57 6E 48 07 00 DC 3A 6E 3C 07 00 68 A1 E1 C0 F3 97 A3 CC DB D5 F3 96 47 1F E7 76 77 00 40 7D 
62 83 47 8F 96 7E E1 28 D2 97 46 8F 3B 1D CE 77 17 2C DF F3 97 A3 E1 5C 16 5E 10 04 41 B0 B1 1D 
8B CC 03 00 5C 2B 36 78 B4 88 88 0C EA B9 68 E7 4E 0D CB B9 60 F9 89 FF 6B BD 13 7B B3 EF 21 33 
5E 6D 6C C7 7A 75 57 63 86 79 01 00 54 97 31 D2 CA 34 AC E9 A5 17 97 AF 68 B9 53 23 1C 9E 6C 63 
97 5A 8E 7E E3 DE 73 00 0A 28 7B 0D CF FF FD 71 C1 56 C7 AB 20 08 DE D3 77 31 E4 2D 8F 19 7C 9D 
98 72 1C C7 CC 9D 5A 8E D8 4F 54 EF 6E 19 F7 9E 03 50 80 11 1C 6E 40 38 DB D6 68 2E BC 73 59 95 
E2 4E 0D 4B 36 41 6A D4 E9 BC E5 B1 15 9C CC DD 1A 46 D1 F9 F2 ED ED ED B2 12 A2 2D 8F 5F 1E C3 
5F B6 6F DB 6E 4B 02 B4 E3 F8 99 17 3E F6 ED FA F2 E5 CB 31 DA 62 82 A4 8D 2D E6 BE C3 C8 F5 36 
B6 EC 27 5C 28 B7 FC F8 E0 F1 51 6F 61 4A 51 81 B2 5E 82 2A DE DE DE BA 2E 42 AE 0E CA 26 87 9F 
73 78 DF AA A1 6C D5 34 58 B6 D2 9F F9 3C 9A BE 6F 57 CB CB 85 74 93 E6 78 15 FC 90 6F DD CD 87 
E7 2F 5F 9C C8 54 44 83 D9 8F C5 71 A8 33 00 00 2A CA 9C 0F 6F 38 DF 65 56 BF 5A 99 0F CF FB DC 
49 6C D4 CE C1 DD 83 30 86 35 00 E0 3A 39 F3 E1 2D BE 77 D6 4B 64 78 6F 4A 7A 22 A2 FD 84 45 00 
00 54 53 38 1F 5E 27 06 B3 67 5B 1C EB D0 7C EA 2F 47 96 D3 65 00 03 00 7A 21 7B 3E 3C E7 B5 E5 
4B 66 FE 72 74 BA 44 38 5E 85 E3 AB 18 86 61 18 C3 B9 54 E8 1D 0A D5 70 2B 1E 80 AE A5 67 4B 18 
CC 9E ED B9 15 CE 0E 74 F5 E6 23 D3 2E 14 2E 1F CC DE 83 59 E2 71 E6 68 E8 93 20 95 79 4C 8C 07 
A0 5D 59 23 AD 58 8E 88 1C 6A 58 AD F7 D2 44 5F 31 0D 2C 80 4E A5 6B 78 54 AE 00 00 3D C4 7C 78 
00 00 2D E4 05 DE 61 92 A0 C3 8C 41 59 E3 49 03 00 70 33 B2 02 CF 9D 1A C6 CB BD 17 8E EA 25 22 
32 5E 6D 1E E6 43 32 0F 00 CA A2 37 B2 7A D2 81 E7 2F 5F 1C 73 F1 23 7E 23 C0 F8 3B E3 7B E1 4A 
DC 99 00 3D D1 45 4B 19 E9 C0 F3 3E 77 19 37 9E 0F EE 1E DA 29 10 7A 8B 49 82 00 74 2A FB C6 F3 
F4 C8 95 EE AB 13 1F E1 12 B8 1C 77 26 00 E8 4E 3A F0 06 B3 67 7B 37 FF 16 BD 60 E7 2F 47 96 23 
F6 33 E3 9D 00 00 6E 55 FA 3E BC F0 4E 3C 77 6A 18 73 11 91 DD D0 98 87 13 D2 11 77 00 80 DB 95 
15 78 22 DC 7E 0E 00 E8 99 AC A1 C5 32 6F BA 73 A7 0C 2D 06 00 B8 5D 65 47 5A F1 7F 7F 34 5A 0E 
68 87 5E 9A 00 DA 75 6A D2 74 A7 86 E5 1C FE 18 86 17 F0 62 CC C5 0F 26 A5 03 00 DC A8 53 0D 6F 
BC 0A 82 20 08 82 8D 2D E6 C2 0B D2 98 94 0E 00 70 BB 32 67 4B A0 22 87 C6 04 34 66 02 E8 46 CE 
35 3C 7F 39 8A CD 84 C7 38 9A 00 80 DB 96 33 78 F4 70 2E 91 66 4D 6F 21 F3 21 7D 34 01 00 37 2C 
6F F0 68 2F 7A C5 6E 30 7B F7 16 A6 F3 42 35 0F B5 A2 6D 13 7D C5 67 5B 49 97 0C 1E BD FB F4 DA 
29 14 00 F4 03 63 C6 AA A4 EC E0 D1 FE EF 0F 06 8F 06 00 DC AE BC C1 A3 63 D3 BD FA CB D1 70 BE 
63 F0 68 D4 83 EF BC 00 BA 90 33 78 B4 77 3F 1A 46 6F 3E 67 F0 68 00 C0 6D CB 19 3C 7A 30 7B 0F 
66 ED 96 04 00 80 06 95 1D 4B 13 00 80 9B 46 E0 A1 75 46 CE EF 00 D0 A4 58 E0 45 C7 57 E1 36 73 
34 25 D1 69 85 CC 03 D0 8A 53 E0 F9 CB D1 69 7C 15 6F F1 61 91 79 68 4C 90 F3 3B 00 34 E6 18 78 
FE AF F5 CE 5C FC D8 77 C5 1C CC 7E 30 B4 0A 00 A0 47 8E 81 97 1C 60 85 A1 55 00 00 7D 42 A7 15 
74 81 7E 2B 00 5A 47 E0 A1 0B F4 5B 41 8F F1 79 56 15 81 87 8E D0 6F 05 BD C7 07 5B 31 04 1E 00 
40 0B B1 C0 73 AC C8 24 E7 96 93 58 C0 BD 79 00 80 DB 75 1C 4B 73 BC 0A 82 55 97 25 81 C6 0C 1A 
7F 00 34 8E 26 4D 00 80 16 08 3C 00 80 16 08 3C 74 87 66 4C 00 2D 22 F0 00 00 5A 20 F0 D0 1D C6 
5B 01 D0 22 02 0F DD 61 BC 15 00 2D 22 F0 D0 29 C6 5B 01 D0 16 02 0F 00 A0 05 02 0F CA A0 49 13 
40 93 08 3C 00 80 16 08 3C 00 A8 0F 7D 8F 15 46 E0 A1 6B F4 55 41 6F 24 12 8E CF B6 62 08 3C A8 
84 6F C4 B8 69 F4 3A 56 1B 81 07 00 D0 02 81 07 00 D0 02 81 07 05 44 1B 7F 68 D5 04 D0 0C 02 0F 
00 A0 05 02 0F 00 A0 05 02 0F 6A A0 4B 1B 80 86 11 78 50 CE E3 97 C7 AE 8B 00 A0 87 08 3C 00 80 
16 08 3C 00 80 16 08 3C 28 83 9B 13 00 34 89 C0 03 00 68 81 C0 03 00 68 81 C0 83 AA 68 D5 04 50 
2B 02 0F 2A 49 DC 8D 47 E6 E1 B6 30 19 9E DA 08 3C 28 86 3B D0 71 A3 98 0C 4F 79 04 1E 00 D4 81 
C9 F0 94 47 E0 01 00 B4 40 E0 41 6D 5C 08 01 50 13 02 0F CA D9 BE 6D 63 7F 93 79 00 EA 40 E0 41 
49 5C 02 01 50 B7 86 03 CF 5F 8E 8C A9 5B 7E B9 88 B8 53 23 4B CE DA D0 03 95 3C 00 57 6B 34 F0 
DC E9 70 BE BB 60 B9 88 88 8C 57 41 CC C6 16 11 7B B3 1A 37 57 4E 28 89 4A 1E 80 5A FD D1 D4 86 
DD A9 61 39 17 2C CF E1 2F 5F 1C E2 0E 22 62 10 81 2D AA BB 4A FD 28 91 39 0E F9 3F A2 23 CD D4 
F0 DC A9 61 39 E6 C2 0B AB 67 E7 97 E7 F1 97 DF E6 3B 73 F1 9D B8 D3 14 03 AF B4 C6 88 FF B4 B9 
AF AE 7F 1E BF 3C D6 B6 35 A8 AD 99 1A DE 78 15 04 2B 11 11 B7 DC F2 1C EE DF F3 9D D8 9B D9 A0 
E6 E2 01 08 71 8E 86 4E 8C 20 68 B2 7D C1 9D 1A 96 6C 82 54 8B 64 DE F2 D4 4A 1F 0B EF 3D 1E 78 
86 51 74 8C BE BD BD 55 2C 2A 54 F5 F8 E5 31 FA 67 F2 A6 05 5C 2E F1 96 16 A8 F1 DD 2E BF D3 1E 
E0 53 DA AD 2F 5F BE 64 46 5B 63 D7 F0 AE E7 BE 3A 62 2E BE 26 AB 77 89 97 61 18 0D 67 F6 15 B6 
DB ED E3 A3 A2 07 F9 2D 95 2D 88 55 44 1E BF 3C 76 78 11 E8 96 DE B7 4C 67 AB 74 F1 F7 36 76 ED 
ED 0A DB ED 56 D9 4B 77 4D FC 4F 6B 7C DF 6E FB F3 A6 18 75 EF C3 73 5F 1D 31 27 A9 BC 03 68 88 
AB A4 F8 22 53 70 F8 01 FA 4B D9 C0 23 EF 10 91 3E 11 93 79 E5 15 44 1D 39 07 9D A8 DA A4 E9 FF 
FE 10 79 B8 23 EF 70 10 A4 CE DA C6 61 39 F2 14 57 E9 00 CD A8 5A C3 F3 3E 77 62 DE 0F BB 2E 06 
94 92 79 8E A6 3B 78 5A 71 2F 79 AA 74 D0 95 22 81 E7 2F 47 B1 D1 C3 A8 E0 21 5B DE 99 BA D1 D8 
6B E8 9E AD E6 EE 27 CB 43 D4 41 6F 0D 37 69 8E 57 D9 3D 28 93 CB 07 B3 F7 60 56 F0 37 70 14 7E 
72 32 4F EB 99 0B 0B D6 D7 07 39 07 A8 7B 0D 0F 28 56 3E C6 74 8E 3A 72 0E 88 50 A4 49 13 A8 A4 
E5 36 BA 40 B6 6F DB 53 CF 46 C5 7E 32 CA 06 20 82 1A 1E 6E 5F 5E 67 96 F2 2B 03 D0 00 81 87 9E 
22 D8 00 C4 D1 A4 09 00 D0 02 81 07 00 D0 02 81 07 00 D0 02 81 07 00 D0 02 81 07 00 D0 02 81 07 
00 D0 02 81 07 00 D0 02 81 07 00 D0 02 81 07 00 D0 02 81 07 00 D0 02 81 07 00 D0 02 81 07 00 D0 
02 81 07 00 D0 02 81 07 00 D0 02 81 07 00 D0 02 81 07 00 D0 02 81 07 00 D0 02 81 07 00 D0 02 81 
07 00 D0 02 81 07 00 D0 02 81 07 00 D0 02 81 07 00 D0 02 81 07 00 D0 02 81 07 00 D0 02 81 07 00 
D0 02 81 07 00 D0 02 81 07 00 D0 02 81 07 00 D0 02 81 07 00 D0 02 81 07 00 D0 02 81 07 00 D0 02 
81 07 00 D0 02 81 07 00 D0 02 81 07 00 D0 02 81 07 00 D0 02 81 07 00 D0 02 81 07 00 D0 02 81 07 
00 D0 02 81 07 00 D0 02 81 07 00 D0 02 81 07 00 D0 02 81 07 00 D0 02 81 07 00 D0 02 81 07 00 D0 
02 81 07 00 D0 02 81 07 00 D0 02 81 07 00 D0 02 81 07 00 D0 02 81 07 00 D0 02 81 07 00 D0 02 81 
07 00 D0 C2 1F 5D 17 00 40 9F 19 86 D1 75 11 D0 07 41 10 5C BF 11 02 0F 40 B3 6A 39 55 41 67 75 
7D 6D A2 49 13 00 A0 05 02 0F 00 A0 BA 1F 3F FE EB C7 8F FF BA 72 23 04 1E 00 40 0B 04 1E 00 40 
0B 04 1E 00 40 0B 04 1E 00 7D B9 53 C3 30 8C D1 D2 CF 7C 6C EA D6 B3 8F CC ED 84 BB 4E CA 58 35 
B1 62 62 0D 7F 39 CA 78 96 3B CD 7B 55 75 BE 84 96 9E 5E 1F 02 0F 80 AE FC E5 8B 63 DA B6 B9 9B 
FF 9D 3A 21 BB 53 CB A9 63 1F 85 DB 31 17 5E 10 B5 B1 1D 2B 16 54 EE D4 30 2C D9 14 AC D1 82 2B 
DF 8A BA DE C9 1A 10 78 00 34 E5 FF 5A EF E4 E1 E9 FB C4 14 E7 55 89 2A C8 78 B5 B1 65 B7 FE 75 
C8 33 F7 D5 11 7B B3 1A 47 D7 F0 16 99 01 8D 12 08 3C 00 7A F2 7F AD 77 62 3F 8D 07 5F 93 89 E7 
2F 47 86 E5 88 38 56 76 C3 A0 BF 1C 1D 5B 18 8F 8F C7 DB 16 DD A9 61 8C 9E 9F 8B B7 93 61 78 6F 
CA EE D3 DB 6F F2 F7 47 7A 8D C1 EC 3D 08 A2 19 58 41 A4 95 34 52 2E 77 1A 6B 1C 75 A7 86 31 FD 
BF F1 B7 C2 5F 8E 8C D1 D2 3D BD FE CB 9E 7E 55 A1 6B C0 48 2B 00 DA 33 91 0E 46 1A 5B 4B D6 50 
2F EE DF F3 9D B9 F8 31 16 91 AF 13 73 3E 7F 59 7E 1F CF 06 22 12 66 CA DD D4 B0 64 93 91 2C FE 
72 34 9C CB C2 0B 66 83 F0 8F E1 48 BC F7 D9 60 30 FB B1 58 0F C3 AD F8 CB 17 C7 5C 78 2F B3 C1 
CB 28 6F 3B D9 BC CF 9D 98 93 A1 EC CB F1 6C CF 2D CB B8 E0 F9 25 B8 53 C3 72 EC FD 26 DD A9 31 
34 3E F3 B7 FF 1F F1 B7 C2 5F 8A EC E6 D6 CE DE 04 EF E3 70 53 C3 E9 5D 7E E9 FE A3 E8 9D 6C 1F 
35 3C 00 3A 72 5F 1D 31 27 5F 07 22 61 B0 44 5B 12 0B 9F 17 E6 E4 29 1A 37 F6 A1 85 71 30 7B 0E 
7F 77 FF 9E CB 71 95 8B 0A 35 B5 1C B1 9F 4F CF 1C AF 02 6F 61 3A 56 41 9F 96 0B ED B3 F8 10 3F 
E3 D5 C6 16 E7 E5 A2 CA D7 E9 E9 E3 95 B7 30 2F 7C 76 97 1A 0E 3C 7F 39 CA FC 0F E5 2D 8F AD 50 
DF BF 18 00 A2 FC E5 CB 29 EF 44 64 FC 64 4B A9 2B 63 D1 9C 0C 0D EF 4F 0D A2 E3 D5 C6 76 2C C3 
72 A2 A1 55 60 37 1F C6 7A 60 5A 1F 0B 2F 59 15 1A CC DE F7 1D 56 8E D1 77 45 E3 60 78 DD F2 2E 
51 FE 63 23 6A 29 D1 A7 0F EE 1E CA 7E 55 50 40 A3 4D 9A EE 74 38 DF 89 5D 7A F9 E9 71 E3 E5 DE 
0B 82 C1 FE 8F BA 6B F4 00 3A 92 DD BA D8 3A FF D7 7A 27 22 F3 A1 31 8F 2E 76 5E DD D5 F8 FC 99 
66 97 7C 9E C8 C3 E1 97 F1 93 2D 8E 63 3F 95 3B 5F 99 0B EF BD 7C 45 70 30 7B 0F 66 25 DA 11 2F 
33 B8 7B 38 BF 52 94 79 3F AC 65 C7 1D 68 AC 86 E7 4E 0D 23 AB 2F 6A DE F2 13 7F F9 E2 44 BF 79 
7D 5F 28 D3 85 0A 40 1F 84 DD 55 36 41 E2 96 00 29 79 A6 49 DE 4C 10 9C 3A 91 F8 CB 17 C7 B6 6D 
C7 AA A3 61 2A FB 16 3B 19 3F D9 22 1F 3C 68 3D 96 00 00 10 2B 49 44 41 54 BF F7 95 AA FC BC 8A 
D5 E3 0A F6 92 D5 33 A6 A7 9A 09 3C 77 6A 58 8E B9 F0 82 8D 5D 6A 79 94 FF 6B BD 8B B5 18 D4 D1 
27 09 00 0E C2 CB 70 DF 13 27 95 F0 BB F5 B9 EB 51 E3 27 3B BF 01 D0 5F 7E 9B CB E2 FB EA 7B 3D 
17 B6 D2 DD 47 4F 4E 69 16 6D 52 3D 70 5F 9D 9C 8A D8 E0 EB C4 3C A5 A5 C8 BE 9B CC 71 DD D3 43 
B9 41 18 6B C1 4C 34 F1 96 78 7A 97 9A 09 BC F1 2A 08 82 8C 9A 7A DE F2 28 EF 73 27 0F 77 83 53 
B7 59 05 FA B2 02 A8 C4 5F 76 5D 82 0C E9 CB 70 A1 C1 D7 89 19 3F 9B C7 82 61 6F FC 7D 61 3A D6 
E9 B4 E4 4E 8F 67 29 F7 EF F9 CE 7E 9E 0D 4E BD 57 0A B6 53 C6 60 F6 6C 4B FA 56 74 CB 89 C6 F5 
7E A5 D8 0D 01 89 AE 2F C9 6D EE E6 C3 C3 EA D1 75 87 F7 A7 D7 EF 2F BF CD 77 91 A7 45 5F C2 6E 
FE 6D 5F A0 D8 9E CA 3E BD 43 CA DD 96 E0 FF FE 10 D9 59 86 6C 82 60 25 12 76 FB 8D F6 9A 4D CF 
04 18 5D F2 F6 F6 D6 52 41 CB D9 6E B7 5D 17 21 17 65 AB 86 B2 5D E2 7F 77 5D 80 14 7F F9 E2 88 
BD C9 4A 83 F0 2E 80 F9 DF EE 6C 35 0E 2F C6 CD 87 C6 3A 79 99 6D 30 7B F7 64 34 3C 5D C6 DB F7 
F0 77 A7 96 63 2E BC 7D F7 C5 EF 0B 73 68 4D 9F 82 55 EE 76 4A 19 AF 82 E0 69 6A 58 91 8B 86 E6 
FE 8E 88 D8 4A DE FD 68 78 3A 11 A6 57 49 AC BE 11 C3 32 9C E4 BA 83 D9 FB E6 F3 B0 2F 7B B3 B1 
2D 2B 7C C2 E9 25 FC 10 11 B1 17 93 F5 A1 40 F6 E9 DC 5C E2 E9 15 DE 81 B8 6B 3F E1 C9 A6 E8 7A 
6D 6C 49 B5 94 17 2D 0F 02 6F 61 26 9B C8 F3 57 0E 82 A0 F1 97 70 85 B7 B7 B7 AE 8B 90 8B B2 55 
43 D9 2E A5 F2 11 8A 8B 79 0B B3 E0 74 DC 18 11 F9 F7 BF FF F3 DF FF FE CF F2 EB 67 2E 57 F3 3E 
BC F8 C5 D6 AC 26 6A 00 00 2E A2 5C E0 E5 74 39 BA E1 8E B0 00 00 15 28 17 78 61 7B 6F AC 3E B7 
EF C6 D2 59 89 00 00 22 37 DF 69 5E BD C0 0B 3B 41 9D BA F4 86 03 E1 24 7B 10 03 00 70 11 45 02 
2F 76 83 E5 60 F6 1E 3C 7F 1E 46 DC 19 AE 27 D7 77 ED 01 00 E8 AE E1 C0 1B AF B2 AB BF C9 E5 A9 
7A F2 78 75 EC 57 43 DA 01 68 48 7D 33 9E 27 26 C7 A9 51 E6 96 8F 0B 9B DB EF A5 45 AA 67 C3 8D 
BE 16 45 6A 78 00 D0 BA 3A 67 3C CF FB 76 DF B4 4E F6 DB D0 4E 1B 9F 1B 9D C0 03 A0 29 F5 66 3C 
47 B3 08 3C 00 7A AA 3A E3 79 74 F2 B2 53 CB 5E B2 95 2F 36 A9 F8 72 7A 1C 7E 6C 6A 18 53 F7 F4 
60 CE 53 CA 37 18 46 F7 9B B7 71 77 BA 2F C3 69 59 E6 A4 ED 85 25 BF 70 A7 4A CE 8D AE DC D0 62 
00 7A 6C F2 B3 83 9D AE FF CC 5A 5A 6D C6 73 7F 39 1A CE 1F C2 F9 BE 25 77 FA B2 E4 A4 E2 96 23 
62 1E 1F 75 AC 97 85 17 04 03 F1 97 A3 A1 35 BA F7 DE 67 03 71 C3 FD 05 E3 FD 4E 0E CB 2F 95 B9 
71 91 DD 7C 3D 39 CC B9 96 3B 69 FB D9 92 5F B0 53 11 05 E7 46 A7 86 07 40 47 15 67 3C F7 3E 77 
12 99 ED 6E BC 0A D2 57 B3 F6 C3 75 C6 26 15 8F 3A 4E 98 1E 0E 57 FD E9 85 C5 39 DD 7E 15 59 7E 
B1 AC 8D 8B 48 74 B8 EC FC 49 DB CF 95 FC E2 9D 2A 36 37 3A 81 07 40 3F 95 67 3C 1F 3F D9 E2 58 
C5 2D 8E 89 50 DC CF 60 77 72 1A 47 E3 34 B2 D4 78 75 EC 90 EE 4E 8D 61 6C AA 81 8B 64 6D 3C BE 
BC 60 D2 F6 73 25 AF BE 53 35 E6 46 A7 49 13 40 7B B2 5B 17 5B 77 C5 8C E7 FB A9 09 0E 93 0D 44 
A7 0B 38 6C FC F7 47 64 0A F4 D2 45 5A 8E 0E 31 67 6F BC C5 CB 70 7E E6 09 57 C9 9E B4 BD 5A C9 
F3 29 37 24 24 35 3C 00 BA B9 72 C6 F3 C1 EC FD F4 9C E8 DC 78 FB 87 73 E7 20 2F 28 D1 F2 DB 7C 
77 28 51 0B 77 19 64 4F DA 5E A5 E4 37 85 C0 03 A0 99 6B 66 3C 4F 3C 67 B5 C9 98 00 3D 35 C1 CB 
F9 D9 BF 13 6D 89 DE 67 E5 26 CD F3 0A 26 6D AF 50 F2 22 CA CD 8D 4E E0 01 68 4C FF 66 3C 77 E3 
DD F4 DD 57 27 DD 70 97 98 83 DC 9D 9E BF 24 17 4B 9A FD FD D7 8D CD 12 9E 3F 69 7B 85 92 17 52 
6D 6E 74 02 0F 40 63 06 B3 AE 4B 90 12 76 44 7C CE 9B F1 FC D8 75 25 EC C6 32 4C DE 13 36 5E 05 
9B 87 F9 61 A8 5F C3 FA C8 9C C6 7B BC 0A 36 B6 63 ED D7 91 CD C6 4E 4E F3 99 DA F5 8F 85 79 78 
C2 CB BD 17 6C EC 48 5A D4 6D 30 7B F7 16 72 7C 15 96 63 6F 0E 5D 66 2E 2E 79 A1 70 6E F4 E3 3E 
A2 73 A3 DB BB 70 FF C3 CF E7 63 57 D0 9C F7 BC 3E 46 38 39 EC ED 32 0C 75 5F C2 76 BB 7D 7C 7C 
EC BA 14 D9 28 5B 35 94 ED 52 2A 1F A1 ED 71 9B BE C1 AC 31 95 4B 7E B8 61 B1 96 D7 6C 18 C6 BF 
FF FD 9F 22 F2 ED DB FF 29 B9 7E E6 A7 8E 1A 1E 00 D4 2A 36 FB 8B 84 CD 79 B7 31 C7 D9 ED 96 BC 
1C 6E 4B 00 80 5A 0D 66 EF 9B 4F E3 78 E3 82 88 7D 1C 99 45 71 B7 5B F2 72 08 3C 00 A8 DB 78 15 
04 AB AE 0B 51 49 5D 25 1F CC DE 03 E5 AE E0 D2 A4 09 00 D0 02 81 07 00 D0 02 81 07 40 5F F5 CD 
78 5E 3B E6 34 AF 1F 81 07 40 57 75 CE 78 DE 1C E6 34 AF 0D 81 07 40 53 CC 78 AE 1B 02 0F 80 9E 
AA CE 78 9E 37 35 F9 FE 26 B6 D3 83 A3 A5 1F 9D 59 BC C4 54 E0 99 98 D3 BC 36 04 1E 80 16 19 5D 
FC 64 3A 0D 21 1D 26 5E 64 D8 E8 C1 EC 3D D8 D8 22 F6 26 08 52 03 87 1D A6 26 0F 82 20 F0 E2 83 
52 8A 88 63 BD DC 7B FB 87 76 F3 A1 31 FC 7C 3E AD 79 8C 80 DD DC 9A 3F 6C F6 13 2E EC E6 C3 8B 
2E 6B 45 77 11 D9 FB 6E BE 0E 17 AF C6 91 39 CD C3 F5 64 3E 3C AE 77 98 D3 3C DC FB C3 7C 5E AA 
8D 31 77 A7 E5 5F C8 7F 14 BD AB ED 20 F0 00 E8 A8 E2 8C E7 E7 A6 26 8F CF FD 2D C7 55 13 D5 C8 
6B A6 02 67 4E F3 CA 08 3C 00 FA A9 3C E3 F9 B9 A9 C9 13 03 2D E7 8D BB 7C CD 54 E0 CC 69 5E 19 
81 07 A0 45 41 17 3F 29 E1 8C E7 BB D3 AC 07 86 E5 48 C9 F9 5F 4F D7 C6 2C D9 78 0B B3 CA BB D0 
C2 54 E0 D1 17 67 1C 83 B9 EE B9 E7 94 9B D3 BC 18 81 07 40 37 57 CC 78 DE F6 D4 E4 95 69 3A A7 
79 31 02 0F 80 66 AE 99 F1 BC 9E A9 C9 8B A6 02 AF 81 C6 73 9A 17 23 F0 00 34 A6 7F 33 9E D7 34 
35 79 CE 54 E0 75 D1 77 4E F3 62 04 1E 80 C6 F4 6F C6 F3 9A A6 26 CF 99 0A BC 36 DA CE 69 5E EC 
E6 27 23 56 79 3E 65 35 67 A0 0E 51 B6 6A 28 DB A5 54 3E 42 BB 51 EB 54 E0 35 50 63 4E F3 62 CC 
78 0E 00 B8 50 DF E7 34 2F C6 04 B0 00 A0 8D BE CF 69 5E 8C C0 03 80 16 75 3E 15 78 AF E7 34 2F 
46 93 26 00 40 0B D4 F0 00 34 CB 30 F2 C6 6F 06 5A 45 E0 01 68 50 D8 59 6E BB DD FE F7 7F FF BF 
AE CB 02 DD D1 A4 09 00 D0 02 35 3C 00 6D 28 79 07 55 FB D4 BC 7F 31 44 D9 EA 45 0D 0F 00 A0 05 
02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 
00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 
05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 
0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 
A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 02 0F 00 A0 05 23 08 82 06 37 EF 2F 47 C3 CF 
E7 60 35 2E B9 7C CF 9D 1A 96 13 5D 60 6F F2 D6 35 8C 86 5F C2 15 28 5B 35 94 AD 1A CA 56 0D 65 
AB E6 16 CB D6 68 0D CF 9D 0E E7 BB 0B 96 1F F8 BF 3F C4 5C 78 C1 49 5E 32 02 00 50 4E 63 81 E7 
4E 8D 44 2D AD 78 79 94 F7 B9 93 87 BB 41 33 05 03 00 68 A9 99 C0 73 A7 86 E5 98 0B 2F D8 D8 A5 
96 C7 F9 BF 3F C4 7E A2 4E 07 00 A8 51 33 81 37 5E 05 41 F0 3E 4B D5 D1 F2 96 C7 79 9F 3B F3 E3 
C5 38 18 2D FD 46 0A 09 00 D0 C9 1F 5D 17 20 CD 7D 75 64 67 4E BC E0 3D 0C 46 77 6A 8C 96 DE 31 
26 0D C3 48 3C 21 BD 44 1D 94 AD 1A CA 56 0D 65 AB 86 B2 55 A3 72 D9 32 29 18 78 E3 55 10 AC A2 
7F 3F D9 96 F5 B7 3B DB 77 5C 49 F4 BD B9 C5 9E 42 2A A0 6C D5 50 B6 6A 28 5B 35 94 AD 9A BC 24 
BE 85 FB F0 86 F7 A6 38 AF 6E D7 C5 00 00 DC B2 5B 08 3C 11 11 F3 7E D8 75 11 00 00 B7 4C BD C0 
F3 97 23 C3 98 46 EB 73 DC A5 00 00 B8 9A 7A 81 37 98 3D DB B1 16 4C F7 D5 31 17 DF F3 EE 52 50 
B6 11 59 28 5B 55 94 AD 1A CA 56 0D 65 AB E6 16 CB A6 48 E0 C5 AA 75 E3 55 B0 11 EB 78 5B C2 EB 
D3 F9 3B 19 00 00 28 A6 6E 37 1B 00 00 6A A4 48 0D AF 12 77 DA C5 BD E9 FE 72 74 AC 7C D6 B0 63 
77 DA 48 F1 6B D9 6C CD 65 8B BE 73 D3 6B 3B DD D6 5B B6 5A 8B D6 CC FF D4 5F 8E AE 28 5A E4 05 
56 2A 59 C9 63 AD 60 B5 B3 5B C8 78 81 E5 8E B5 6E CA 16 7F 76 DE 9E BB 2A 5B 99 0F 74 47 65 BB 
F8 58 AB B5 9C 12 DC A8 8D 2D C7 01 A6 A3 BF 37 CB 5B 98 72 DC 57 F8 87 D8 9B EA DB 0B 87 58 AB 
BD EC B5 6C B6 DE B2 6D EC C8 A6 36 B6 4A EF 9B B7 30 E3 9F A5 AB 8A D6 CC FF 34 DC 68 C5 72 79 
0B F3 F4 DC 0A 07 4B C9 63 AD 60 B5 F3 5B 48 BF C0 72 C7 5A 37 65 4B 3D 98 B9 DB AE CA 56 E6 58 
EB A8 6C 17 1F 6B B5 97 B3 70 6F CA F2 16 66 EC A5 6F EC 2B CF 52 E5 77 9B 3E 28 2B EF F8 30 A2 
68 23 27 C7 2B 37 5B 6F D9 92 FF 2F 95 DE B7 64 59 AE FB 2C 35 F0 3F 3D 0D 3C 5B AD 58 89 13 C0 
A5 EF 7D C9 63 AD 60 B5 73 5B C8 7C 81 A5 8E B5 8E CA 96 7E 38 E3 DF DD 55 D9 CA 1C 6B 5D 96 ED 
92 63 AD FE 72 DE 66 93 A6 FF 6B 1D BF 53 A1 A5 7B D3 07 B3 F7 F8 54 45 83 BB 07 91 8F DF 87 1A 
74 B4 B6 7E B6 E5 C8 5F BE 38 E6 62 51 34 8C 76 15 79 9B ED B2 6C FE AF F5 CE 9C 7C 3D FD BF 12 
6F A4 0A EF 5B FE EE 3A 2D 5B E1 78 EB E5 CA 36 5E 95 18 C0 36 57 C9 63 AD 60 B5 E2 2D E4 BD C0 
73 C7 5A 97 65 3B 6E B8 E0 DF DD 55 D9 CE 1D 6B 5D 96 ED 52 0D 94 F3 36 03 4F 24 71 2B FA E0 EE 
A1 93 42 B8 AF 8E 1C DE 4F 7F 39 1A CE 65 FF 65 C2 5B C8 7C 58 74 7E F4 97 DF E6 B2 F8 31 BB AB 
B7 40 39 9B ED B8 6C FB 3B 29 B3 5B D9 BB 7E DF 06 5F 27 A6 38 2F FB 7D BA 53 CB 39 CD D5 D1 75 
D9 8A C6 5B BF AC 6C D1 32 EE 0A 6E F3 C9 54 F2 58 2B 58 2D FF A1 72 03 CA 4B FC 58 53 A2 6C E7 
FF DD 5D 94 AD F0 58 EB B8 6C 85 C7 DA E5 05 A8 52 CE DB 0C 3C EF 33 6B FE D8 F8 B7 BF 16 B8 53 
CB 91 C3 C9 C3 FD 7B BE 33 17 3F F6 FF E5 C1 EC 7D 63 EF E6 7F E7 54 3A 0F C7 4A CD 77 5B E4 6D 
B6 E3 B2 F9 BF 3F 44 1C CB 78 7D 3A 34 41 4C D6 C3 C3 05 EB EE DF B7 C1 EC 3D D8 3C CC 87 86 61 
18 86 F5 B1 F0 8E DF 87 BB 2F 5B BE 8B CA 16 3E 63 6A 18 C6 30 FA AC 32 4A 1E 6B 05 AB D5 72 B4 
C6 8E 35 15 CA 76 EE DF DD 51 D9 0A 8F B5 8E CB 26 45 C7 5A 96 06 CA 79 9B 81 A7 02 77 6A 58 8E 
D8 9B FD 17 19 F7 D5 91 58 4B 42 41 33 6B CB 71 A7 42 D9 44 CC 85 77 FC 6C 47 06 17 50 A0 6C EE 
D4 30 2C D9 44 CE 0F FB 2F C5 0A 94 2D BF D0 17 94 6D 6F BC 4A BD C2 1B 91 38 D6 14 D0 F6 BF FB 
32 39 C7 9A 02 72 8F B5 B6 DC 66 E0 0D EF CD 8C A5 2D 0E 3F 76 6C A4 8E 7D 3F D9 ED BF B9 84 86 
F3 AC EF 1D ED C7 9D 02 65 13 49 FE 77 62 67 E7 8E DF B7 17 47 EC CD E1 1F 39 98 FD 58 98 91 AA 
52 E7 EF 5B 81 72 65 4B 1A CC 9E 6D D9 AD 7F 95 3C CF 94 3C D6 0A 56 BB F2 68 CD 3E D6 3A 2D 5B 
99 7F 77 97 EF 5B C1 B1 D6 69 D9 CE 1C 6B 29 0D 94 F3 36 03 4F 44 64 F7 E9 9D FE F0 7F 7F B4 B6 
63 7F 39 0A 8F C0 D4 F7 CD 8C AE 5A AB 71 B2 67 81 FF 6B BD 8B 9C AA 2C 67 7F E2 BA F2 F6 AF 73 
9B ED B2 6C 39 2D EF C7 B6 F5 2E CB 26 DE E7 2E E3 02 C0 B1 D9 A4 D3 B2 9D 51 AA 6C 19 CF 1B DE 
9B F1 C3 E7 9C 92 C7 5A C1 6A 15 8F D6 FC 63 AD CB B2 95 FE 77 77 50 B6 73 C7 5A 97 65 3B 77 AC 
5D 5A 80 2A E5 E4 B6 84 CB 77 9C BD AB 8A 45 68 E8 1E C2 F8 66 3B 2F 5B AA 00 A7 05 5D 97 2D DD 
6B 5B 9D B2 25 37 9A EC F7 5D AA 6C 45 2F B0 8C E6 BB B0 E7 2C CD 3F D6 BA 2F 5B F2 C1 4E 6E 4B 
C8 5E 5A 70 AC 75 5D B6 8B 3F 8A F5 97 F3 46 03 AF A3 1B CF 63 B7 4D 9E 79 70 63 4B 99 52 B5 12 
78 DD 97 2D FE B9 8B FD D5 79 D9 62 F7 BF C6 4B D3 79 D9 E2 1B CD BF 87 B7 B0 6C F1 F2 24 4F 01 
E5 76 DD F4 4D CA D9 27 C7 CB DE EB D6 CA 96 BF 6D 15 CA 56 70 AC 75 5E B6 82 63 2D 1B 37 9E 1F 
ED 07 5F 90 52 E7 A0 BA F7 18 15 FF 70 9D 94 FA 12 DD 4E E0 29 51 B6 C8 4D 39 89 AD 76 5E B6 E8 
FD 42 AA 95 2D B2 D1 E4 DE CB 97 2D FA 02 2B D4 59 73 8E B5 E4 37 F6 82 43 F2 FC D1 1A 7F 81 67 
8F B5 0E CB 96 F1 60 CE F3 3A 2B 5B FE B1 D6 79 D9 0A 8E B5 16 CA C9 E0 D1 00 00 2D DC 6E A7 15 
00 00 2E 40 E0 01 00 B4 40 E0 01 00 B4 40 E0 01 00 B4 40 E0 01 00 B4 40 E0 01 00 B4 40 E0 01 00 
B4 40 E0 01 00 B4 40 E0 01 ED 3B CD CF 99 32 75 C5 9D 36 3B F0 B4 BF 1C 15 6F DF 9D DE D8 04 42 
40 29 8C B4 02 74 CA 5F 8E 86 EB 49 C1 7C 00 4D EC F0 F3 B9 70 E6 4D 11 77 6A BC DC B7 58 28 A0 
0D D4 F0 00 AD B8 7F CF 77 F6 53 61 DA 89 C8 F8 FB 42 8A 27 50 07 6E 0F 81 07 A8 26 D2 A4 E9 2F 
47 86 31 75 4F 4D A0 A3 A5 1F 9D F2 2E DA 32 79 7E 26 3C 09 A7 4A 8F E4 5D F4 39 B1 AD 0D BE 4E 
4C E7 85 76 4D F4 0A 81 07 A8 CE B1 5E EE BD FD B8 EF BB F9 D0 18 7E 3E 1F 86 81 77 AC 53 32 0E 
E7 B2 1F 27 DE 5B C8 7C 98 99 79 B1 BC F3 97 A3 E1 FC E1 38 E2 FC C6 76 AC 53 E6 0D EE 1E 2E 98 
18 1D B8 05 04 1E A0 3A 73 F1 23 BC 98 36 F8 3A 31 45 CC C5 F7 30 B1 06 5F 27 A6 38 AF AE 84 0D 
95 C7 D5 64 30 7B DF D8 BB 8C 26 49 F7 D5 89 CC 39 ED 7D EE A2 B5 BD F1 2A 08 22 97 F6 2E 9E 18 
1D 50 1D 81 07 A8 EE E1 6E 50 F0 A7 C8 3E C8 26 5F 23 CB 87 F7 87 2C CC DF DA F8 C9 96 68 A5 2E 
6E 70 F7 20 F2 F1 9B 2A 1E FA 83 C0 03 FA 61 37 1F 46 2E C7 0D E7 BB F4 2A FE EF 8F D8 DF E3 55 
D8 2C 9A 75 45 10 E8 1F 02 0F E8 87 8C E9 A3 93 B7 1E 0C EE 1E 92 CF 1A CC DE 4F 53 51 3B 16 B7 
DF A1 CF 08 3C E0 F6 8D 9F EC D2 D7 DB F2 5A 29 C7 AB 4D 6C 23 FE EF 8F CC E6 53 E0 66 11 78 40 
0F 8C BF 2F CC 68 FD CC 9D 66 DE 9B 10 0F 46 77 1A 5B 27 DE A3 45 BC CF 5D F4 4F E0 F6 FD D1 75 
01 00 D4 60 30 7B F7 64 34 1C 1A F3 FD 02 7B 93 35 98 CA F8 C9 16 EB D5 5D 8D C7 22 32 5E 05 9B 
A9 71 7A 8A B9 88 8C AD E2 FF FE 48 F4 83 01 6E 1D 43 8B 01 5A 71 A7 86 25 99 61 58 65 35 E0 96 
10 78 80 5E 18 4B 13 DA 22 F0 00 DD 9C 8D 3C E2 0E FD 44 E0 01 00 B4 40 2F 4D 00 80 16 08 3C 00 
80 16 08 3C 00 80 16 08 3C 00 80 16 08 3C 00 80 16 08 3C 00 80 16 08 3C 00 80 16 08 3C 00 80 16 
08 3C 00 80 16 08 3C 00 80 16 08 3C 00 80 16 08 3C 00 80 16 08 3C 00 80 16 08 3C 00 80 16 FE 3F 
9B D3 AF 1B 8F 4A D5 30 00 00 00 00 49 45 4E 44 AE 42 60 82 
EndData
$EndBitmap
Connection ~ 10550 5950
Wire Wire Line
	10550 5900 10550 5950
Wire Wire Line
	8100 5950 8000 5950
Wire Wire Line
	8500 5950 8900 5950
Connection ~ 8500 5950
Connection ~ 8900 5950
Wire Wire Line
	8500 6250 8900 6250
Connection ~ 8500 6250
Connection ~ 8900 6250
Wire Wire Line
	8350 6250 8500 6250
Connection ~ 9200 6250
Wire Wire Line
	9200 6250 9750 6250
Wire Notes Line
	11000 550  5800 550 
Wire Notes Line
	5800 550  5800 3100
Wire Notes Line
	5800 3100 11000 3100
Wire Notes Line
	11000 3100 11000 550 
Wire Notes Line
	5800 3250 5800 5550
Wire Notes Line
	5800 5550 11000 5550
Wire Notes Line
	11000 5550 11000 3250
Wire Notes Line
	5800 3250 11000 3250
Text Notes 5900 700  0    50   ~ 0
Small signal analog supply (DAC and I2V)
Text Notes 5900 3350 0    50   ~ 0
Amplifier analog supply
Text Notes 7700 5750 0    50   ~ 0
Digital supply
Wire Notes Line
	11000 5650 7600 5650
Wire Notes Line
	7600 5650 7600 6500
Wire Notes Line
	7600 6500 11000 6500
Wire Notes Line
	11000 6500 11000 5650
Text GLabel 10550 4350 2    50   Input ~ 0
GND_AMP
Wire Wire Line
	10550 4350 10450 4350
$Comp
L power:PWR_FLAG #FLG0107
U 1 1 5F1223D1
P 3900 2700
F 0 "#FLG0107" H 3900 2775 50  0001 C CNN
F 1 "PWR_FLAG" H 3900 2850 50  0000 C CNN
F 2 "" H 3900 2700 50  0001 C CNN
F 3 "~" H 3900 2700 50  0001 C CNN
	1    3900 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	10700 1800 10700 1850
Wire Wire Line
	6950 1800 7650 1800
$Comp
L power:PWR_FLAG #FLG0108
U 1 1 5F193568
P 7500 4350
F 0 "#FLG0108" H 7500 4425 50  0001 C CNN
F 1 "PWR_FLAG" H 7500 4523 50  0000 C CNN
F 2 "" H 7500 4350 50  0001 C CNN
F 3 "~" H 7500 4350 50  0001 C CNN
	1    7500 4350
	1    0    0    -1  
$EndComp
Connection ~ 7500 4350
Wire Wire Line
	7500 4350 7650 4350
Wire Wire Line
	4250 2350 4250 2600
Wire Wire Line
	4250 2600 5050 2600
Wire Wire Line
	5050 2600 5050 2350
Wire Wire Line
	5050 2350 4950 2350
$Comp
L dac:EC2-5NU K1
U 1 1 5ED50259
P 4650 2250
F 0 "K1" H 4650 2715 50  0000 C CNN
F 1 "EC2-5NU" H 4650 2624 50  0000 C CNN
F 2 "mainboard:RELAY_EC2-5NU" H 4650 2250 50  0001 L BNN
F 3 "https://api.kemet.com/component-edge/download/datasheet/EC2-5NU.pdf" H 4650 2250 50  0001 L BNN
F 4 "399-11052-5-ND" H 4650 2250 50  0001 C CNN "DigiKey"
F 5 "Yes" H 4650 2250 50  0001 C CNN "Done"
	1    4650 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2450 4950 2450
NoConn ~ 4350 2350
NoConn ~ 4350 2450
$Comp
L Device:D_Small_ALT D6
U 1 1 5EE45025
P 4350 1550
F 0 "D6" H 4350 1757 50  0000 C CNN
F 1 "M7" H 4350 1666 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" V 4350 1550 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1903051030_MDD-Jiangsu-Yutai-Elec-SM4007PL_C64898.pdf" V 4350 1550 50  0001 C CNN
F 4 "Yes" H 4350 1550 50  0001 C CNN "Done"
F 5 "C64898" H 4350 1550 50  0001 C CNN "LCSC"
	1    4350 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR04
U 1 1 5EE46066
P 4500 1600
F 0 "#PWR04" H 4500 1350 50  0001 C CNN
F 1 "GNDD" H 4504 1445 50  0001 C CNN
F 2 "" H 4500 1600 50  0001 C CNN
F 3 "" H 4500 1600 50  0001 C CNN
	1    4500 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1600 4500 1550
Wire Wire Line
	4500 1550 4450 1550
Wire Wire Line
	4250 1550 4050 1550
Connection ~ 4050 1550
Wire Wire Line
	4050 1550 4050 2050
$Comp
L Device:Jumper JP7
U 1 1 5EF0DC93
P 6750 3550
F 0 "JP7" H 6750 3814 50  0000 C CNN
F 1 "Jumper" H 6750 3723 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6750 3550 50  0001 C CNN
F 3 "~" H 6750 3550 50  0001 C CNN
	1    6750 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP8
U 1 1 5EF2C7D0
P 6750 4350
F 0 "JP8" H 6750 4614 50  0000 C CNN
F 1 "Jumper" H 6750 4523 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged2Bar_Pad1.0x1.5mm" H 6750 4350 50  0001 C CNN
F 3 "~" H 6750 4350 50  0001 C CNN
	1    6750 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP9
U 1 1 5EF2CC16
P 6750 5150
F 0 "JP9" H 6750 5414 50  0000 C CNN
F 1 "Jumper" H 6750 5323 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6750 5150 50  0001 C CNN
F 3 "~" H 6750 5150 50  0001 C CNN
	1    6750 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 5950 6650 5950
Wire Wire Line
	6450 5950 6350 5950
Text HLabel 6350 5950 0    50   Input ~ 0
POWERON
$Comp
L Device:Jumper_NC_Small JP?
U 1 1 5EF82B26
P 6550 5950
AR Path="/5EC75F5F/5EF82B26" Ref="JP?"  Part="1" 
AR Path="/5EC7824B/5EF82B26" Ref="JP10"  Part="1" 
F 0 "JP10" H 6550 6071 50  0000 C CNN
F 1 "~" H 6550 6071 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6550 5950 50  0001 C CNN
F 3 "~" H 6550 5950 50  0001 C CNN
F 4 "Yes" H 6550 5950 50  0001 C CNN "Done"
	1    6550 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5EF82B2F
P 6850 5950
AR Path="/5EC75F5F/5EF82B2F" Ref="R?"  Part="1" 
AR Path="/5EC7824B/5EF82B2F" Ref="R76"  Part="1" 
F 0 "R76" V 6750 5900 50  0000 C CNN
F 1 "~" V 6750 6050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6780 5950 50  0001 C CNN
F 3 "" H 6850 5950 50  0001 C CNN
F 4 "" V 6850 5950 50  0001 C CNN "LCSC"
F 5 "" V 6850 5950 50  0001 C CNN "Done"
	1    6850 5950
	0    1    1    0   
$EndComp
$Comp
L power:GNDD #PWR031
U 1 1 5EF9691F
P 7100 6050
F 0 "#PWR031" H 7100 5800 50  0001 C CNN
F 1 "GNDD" H 7104 5895 50  0001 C CNN
F 2 "" H 7100 6050 50  0001 C CNN
F 3 "" H 7100 6050 50  0001 C CNN
	1    7100 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 6050 7100 5950
Wire Wire Line
	7100 5950 6950 5950
$EndSCHEMATC
