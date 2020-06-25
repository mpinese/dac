EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 11
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 10000 900  0    50   ~ 0
Power:\n26 mA @ 30 V quiescent\n+ 20 mA @ 30 V max output\n=> 46 mA @ 30 V max\n
Text HLabel 2650 5000 0    50   Input ~ 0
IIN+
Text HLabel 8600 3850 2    50   Output ~ 0
VOUT
$Comp
L Amplifier_Operational:NE5534 U?
U 1 1 5ED896D6
P 3450 2100
AR Path="/5EC7811C/5EC9A2C2/5ED896D6" Ref="U?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED896D6" Ref="U?"  Part="1" 
F 0 "U?" H 3750 2300 50  0000 L CNN
F 1 "NE5534" H 3750 2200 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3500 2150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne5534.pdf" H 3500 2250 50  0001 C CNN
F 4 "296-16943-1-ND" H 3450 2100 50  0001 C CNN "DigiKey"
F 5 "Yes" H 3450 2100 50  0001 C CNN "Done"
	1    3450 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5ED896DC
P 3100 2050
AR Path="/5EC7811C/5EC9A2C2/5ED896DC" Ref="#PWR?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED896DC" Ref="#PWR0180"  Part="1" 
F 0 "#PWR0180" H 3100 1800 50  0001 C CNN
F 1 "GND" H 3105 1877 50  0000 C CNN
F 2 "" H 3100 2050 50  0001 C CNN
F 3 "" H 3100 2050 50  0001 C CNN
	1    3100 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2050 3100 2000
Wire Wire Line
	3100 2000 3150 2000
$Comp
L power:+15V #PWR?
U 1 1 5ED896E4
P 3350 1300
AR Path="/5EC7811C/5EC9A2C2/5ED896E4" Ref="#PWR?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED896E4" Ref="#PWR0181"  Part="1" 
F 0 "#PWR0181" H 3350 1150 50  0001 C CNN
F 1 "+15V" H 3365 1473 50  0000 C CNN
F 2 "" H 3350 1300 50  0001 C CNN
F 3 "" H 3350 1300 50  0001 C CNN
	1    3350 1300
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR?
U 1 1 5ED896EA
P 3350 2850
AR Path="/5EC7811C/5EC9A2C2/5ED896EA" Ref="#PWR?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED896EA" Ref="#PWR0182"  Part="1" 
F 0 "#PWR0182" H 3350 2950 50  0001 C CNN
F 1 "-15V" H 3365 3023 50  0000 C CNN
F 2 "" H 3350 2850 50  0001 C CNN
F 3 "" H 3350 2850 50  0001 C CNN
	1    3350 2850
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5ED896F3
P 3650 2300
AR Path="/5EC7811C/5EC9A2C2/5ED896F3" Ref="C?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED896F3" Ref="C?"  Part="1" 
F 0 "C?" H 3558 2254 50  0000 R CNN
F 1 "22p" H 3558 2345 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3650 2300 50  0001 C CNN
F 3 "https://api.kemet.com/component-edge/download/datasheet/C0603C330J1GACTU.pdf" H 3650 2300 50  0001 C CNN
F 4 "Maybe" H 3650 2300 50  0001 C CNN "Signal"
F 5 "399-7874-1-ND" H 3650 2300 50  0001 C CNN "DigiKey"
F 6 "Compensation" H 3650 2300 50  0001 C CNN "Function"
F 7 "Yes" H 3650 2300 50  0001 C CNN "Done"
	1    3650 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 1800 3650 2200
Wire Wire Line
	3650 2400 3550 2400
$Comp
L Device:C_Small C?
U 1 1 5ED896FE
P 3500 2550
AR Path="/5EC7811C/5EC9A2C2/5ED896FE" Ref="C?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED896FE" Ref="C?"  Part="1" 
F 0 "C?" V 3450 2800 50  0000 C CNN
F 1 "0.1u" V 3450 2950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3500 2550 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 3500 2550 50  0001 C CNN
F 4 "C14663" H 3500 2550 50  0001 C CNN "LCSC"
F 5 "15" V 3500 2550 50  0001 C CNN "Vbias"
F 6 "Decoupling" H 3500 2550 50  0001 C CNN "Function"
F 7 "Yes" H 3500 2550 50  0001 C CNN "Done"
	1    3500 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 2550 3350 2550
Connection ~ 3350 2550
Wire Wire Line
	3350 2550 3350 2400
$Comp
L power:GND #PWR?
U 1 1 5ED89707
P 3650 2850
AR Path="/5EC7811C/5EC9A2C2/5ED89707" Ref="#PWR?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED89707" Ref="#PWR0183"  Part="1" 
F 0 "#PWR0183" H 3650 2600 50  0001 C CNN
F 1 "GND" H 3655 2677 50  0000 C CNN
F 2 "" H 3650 2850 50  0001 C CNN
F 3 "" H 3650 2850 50  0001 C CNN
	1    3650 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2550 3600 2550
$Comp
L Device:C_Small C?
U 1 1 5ED89711
P 3500 1650
AR Path="/5EC7811C/5EC9A2C2/5ED89711" Ref="C?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED89711" Ref="C?"  Part="1" 
F 0 "C?" V 3500 1400 50  0000 C CNN
F 1 "0.1u" V 3500 1250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3500 1650 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 3500 1650 50  0001 C CNN
F 4 "C14663" V 3500 1650 50  0001 C CNN "LCSC"
F 5 "15" V 3500 1650 50  0001 C CNN "Vbias"
F 6 "Decoupling" H 3500 1650 50  0001 C CNN "Function"
F 7 "Yes" H 3500 1650 50  0001 C CNN "Done"
	1    3500 1650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3450 1800 3650 1800
Connection ~ 3350 1650
Wire Wire Line
	3350 1650 3350 1800
$Comp
L power:GND #PWR?
U 1 1 5ED8971A
P 3650 1650
AR Path="/5EC7811C/5EC9A2C2/5ED8971A" Ref="#PWR?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED8971A" Ref="#PWR0184"  Part="1" 
F 0 "#PWR0184" H 3650 1400 50  0001 C CNN
F 1 "GND" H 3655 1477 50  0000 C CNN
F 2 "" H 3650 1650 50  0001 C CNN
F 3 "" H 3650 1650 50  0001 C CNN
	1    3650 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1650 3350 1650
Wire Wire Line
	3600 1650 3650 1650
$Comp
L Device:C C?
U 1 1 5ED89725
P 3500 3600
AR Path="/5EC7811C/5EC9A2C2/5ED89725" Ref="C?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED89725" Ref="C?"  Part="1" 
F 0 "C?" V 3600 3600 50  0000 C CNN
F 1 "2.2n" V 3700 3600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3500 3600 50  0001 C CNN
F 3 "https://www.johansontechnology.com/downloads/catalog/johanson-technology-multi-layer-high-q-capacitors.pdf" H 3500 3600 50  0001 C CNN
F 4 "Yes" V 3500 3600 50  0001 C CNN "Signal"
F 5 "712-1336-1-ND" H 3500 3600 50  0001 C CNN "DigiKey"
F 6 "SignalFilter" H 3500 3600 50  0001 C CNN "Function"
F 7 "Yes" H 3500 3600 50  0001 C CNN "Done"
	1    3500 3600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5ED8972E
P 3500 3300
AR Path="/5EC7811C/5EC9A2C2/5ED8972E" Ref="R?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED8972E" Ref="R?"  Part="1" 
F 0 "R?" V 3293 3300 50  0000 C CNN
F 1 "750" V 3384 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3500 3300 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Susumu%20PDFs/RG_RM_RGH_Oct2012.pdf" H 3500 3300 50  0001 C CNN
F 4 "Yes" V 3500 3300 50  0001 C CNN "Signal"
F 5 "RG16N750WCT-ND" H 3500 3300 50  0001 C CNN "DigiKey"
F 6 "SignalFilter" V 3500 3300 50  0001 C CNN "Function"
F 7 "Yes" H 3500 3300 50  0001 C CNN "Done"
	1    3500 3300
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:NE5534 U?
U 1 1 5ED89735
P 3450 4900
AR Path="/5EC7811C/5EC9A2C2/5ED89735" Ref="U?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED89735" Ref="U?"  Part="1" 
F 0 "U?" H 3700 5100 50  0000 L CNN
F 1 "NE5534" H 3700 5000 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3500 4950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne5534.pdf" H 3500 5050 50  0001 C CNN
F 4 "296-16943-1-ND" H 3450 4900 50  0001 C CNN "DigiKey"
F 5 "Yes" H 3450 4900 50  0001 C CNN "Done"
	1    3450 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5ED8973B
P 3100 4850
AR Path="/5EC7811C/5EC9A2C2/5ED8973B" Ref="#PWR?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED8973B" Ref="#PWR0185"  Part="1" 
F 0 "#PWR0185" H 3100 4600 50  0001 C CNN
F 1 "GND" H 3105 4677 50  0000 C CNN
F 2 "" H 3100 4850 50  0001 C CNN
F 3 "" H 3100 4850 50  0001 C CNN
	1    3100 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 4850 3100 4800
Wire Wire Line
	3100 4800 3150 4800
$Comp
L Device:C_Small C?
U 1 1 5ED89746
P 3650 5100
AR Path="/5EC7811C/5EC9A2C2/5ED89746" Ref="C?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED89746" Ref="C?"  Part="1" 
F 0 "C?" H 3558 5054 50  0000 R CNN
F 1 "22p" H 3558 5145 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3650 5100 50  0001 C CNN
F 3 "https://api.kemet.com/component-edge/download/datasheet/C0603C330J1GACTU.pdf" H 3650 5100 50  0001 C CNN
F 4 "Maybe" H 3650 5100 50  0001 C CNN "Signal"
F 5 "399-7874-1-ND" H 3650 5100 50  0001 C CNN "DigiKey"
F 6 "Compensation" H 3650 5100 50  0001 C CNN "Function"
F 7 "Yes" H 3650 5100 50  0001 C CNN "Done"
	1    3650 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 4600 3650 5000
Wire Wire Line
	3650 5200 3550 5200
$Comp
L Device:C_Small C?
U 1 1 5ED89751
P 3500 4450
AR Path="/5EC7811C/5EC9A2C2/5ED89751" Ref="C?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED89751" Ref="C?"  Part="1" 
F 0 "C?" V 3500 4150 50  0000 C CNN
F 1 "0.1u" V 3500 3950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3500 4450 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 3500 4450 50  0001 C CNN
F 4 "C14663" H 3500 4450 50  0001 C CNN "LCSC"
F 5 "15" V 3500 4450 50  0001 C CNN "Vbias"
F 6 "Decoupling" H 3500 4450 50  0001 C CNN "Function"
F 7 "Yes" H 3500 4450 50  0001 C CNN "Done"
	1    3500 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3450 4600 3650 4600
Connection ~ 3350 4450
Wire Wire Line
	3350 4450 3350 4600
$Comp
L power:GND #PWR?
U 1 1 5ED8975A
P 3650 4450
AR Path="/5EC7811C/5EC9A2C2/5ED8975A" Ref="#PWR?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED8975A" Ref="#PWR0186"  Part="1" 
F 0 "#PWR0186" H 3650 4200 50  0001 C CNN
F 1 "GND" H 3655 4277 50  0000 C CNN
F 2 "" H 3650 4450 50  0001 C CNN
F 3 "" H 3650 4450 50  0001 C CNN
	1    3650 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4450 3350 4450
Wire Wire Line
	3600 4450 3650 4450
$Comp
L Device:C C?
U 1 1 5ED89765
P 3500 6400
AR Path="/5EC7811C/5EC9A2C2/5ED89765" Ref="C?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED89765" Ref="C?"  Part="1" 
F 0 "C?" V 3600 6400 50  0000 C CNN
F 1 "2.2n" V 3700 6400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3500 6400 50  0001 C CNN
F 3 "https://www.johansontechnology.com/downloads/catalog/johanson-technology-multi-layer-high-q-capacitors.pdf" H 3500 6400 50  0001 C CNN
F 4 "Yes" V 3500 6400 50  0001 C CNN "Signal"
F 5 "712-1336-1-ND" H 3500 6400 50  0001 C CNN "DigiKey"
F 6 "SignalFilter" H 3500 6400 50  0001 C CNN "Function"
F 7 "Yes" H 3500 6400 50  0001 C CNN "Done"
	1    3500 6400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5ED8976D
P 3500 6100
AR Path="/5EC7811C/5EC9A2C2/5ED8976D" Ref="R?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED8976D" Ref="R?"  Part="1" 
F 0 "R?" V 3293 6100 50  0000 C CNN
F 1 "750" V 3384 6100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3500 6100 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Susumu%20PDFs/RG_RM_RGH_Oct2012.pdf" H 3500 6100 50  0001 C CNN
F 4 "Yes" V 3500 6100 50  0001 C CNN "Signal"
F 5 "RG16N750WCT-ND" H 3500 6100 50  0001 C CNN "DigiKey"
F 6 "Yes" H 3500 6100 50  0001 C CNN "Done"
	1    3500 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 6400 3000 6400
Wire Wire Line
	3650 6400 4050 6400
Wire Wire Line
	3350 6100 3000 6100
Connection ~ 3000 6100
Wire Wire Line
	3000 6100 3000 6400
Wire Wire Line
	3650 6100 4050 6100
Connection ~ 4050 6100
Wire Wire Line
	4050 6100 4050 6400
Wire Wire Line
	3350 3600 3000 3600
Wire Wire Line
	3650 3600 4050 3600
Wire Wire Line
	3650 3300 4050 3300
Connection ~ 4050 3300
Wire Wire Line
	4050 3300 4050 3600
Wire Wire Line
	3350 3300 3000 3300
Connection ~ 3000 3300
Wire Wire Line
	3000 3300 3000 3600
$Comp
L Device:R R?
U 1 1 5ED89786
P 5750 3600
AR Path="/5EC7811C/5EC9A2C2/5ED89786" Ref="R?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED89786" Ref="R?"  Part="1" 
F 0 "R?" V 5543 3600 50  0000 C CNN
F 1 "560" V 5634 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5750 3600 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Susumu%20PDFs/RG_RM_RGH_Oct2012.pdf" H 5750 3600 50  0001 C CNN
F 4 "Yes" V 5750 3600 50  0001 C CNN "Signal"
F 5 "RG16N560WCT-ND" V 5750 3600 50  0001 C CNN "DigiKey"
F 6 "SignalFilter" V 5750 3600 50  0001 C CNN "Function"
F 7 "Yes" H 5750 3600 50  0001 C CNN "Done"
	1    5750 3600
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5ED8978E
P 5750 4100
AR Path="/5EC7811C/5EC9A2C2/5ED8978E" Ref="R?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED8978E" Ref="R?"  Part="1" 
F 0 "R?" V 5543 4100 50  0000 C CNN
F 1 "560" V 5634 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5750 4100 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Susumu%20PDFs/RG_RM_RGH_Oct2012.pdf" H 5750 4100 50  0001 C CNN
F 4 "Yes" V 5750 4100 50  0001 C CNN "Signal"
F 5 "RG16N560WCT-ND" H 5750 4100 50  0001 C CNN "DigiKey"
F 6 "Yes" H 5750 4100 50  0001 C CNN "Done"
	1    5750 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5ED89796
P 6100 4450
AR Path="/5EC7811C/5EC9A2C2/5ED89796" Ref="R?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED89796" Ref="R?"  Part="1" 
F 0 "R?" H 6030 4404 50  0000 R CNN
F 1 "270" H 6030 4495 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6100 4450 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Susumu%20PDFs/RG_RM_RGH_Oct2012.pdf" H 6100 4450 50  0001 C CNN
F 4 "Yes" H 6100 4450 50  0001 C CNN "Signal"
F 5 "RG16N270WCT-ND" H 6100 4450 50  0001 C CNN "DigiKey"
F 6 "Yes" H 6100 4450 50  0001 C CNN "Done"
	1    6100 4450
	-1   0    0    1   
$EndComp
Wire Wire Line
	5600 4100 5100 4100
Wire Wire Line
	5100 3600 5600 3600
Wire Wire Line
	5100 2100 5100 3600
$Comp
L Device:R R?
U 1 1 5ED897A2
P 6100 3250
AR Path="/5EC7811C/5EC9A2C2/5ED897A2" Ref="R?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED897A2" Ref="R?"  Part="1" 
F 0 "R?" H 6030 3204 50  0000 R CNN
F 1 "270" H 6030 3295 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6100 3250 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Susumu%20PDFs/RG_RM_RGH_Oct2012.pdf" H 6100 3250 50  0001 C CNN
F 4 "Yes" H 6100 3250 50  0001 C CNN "Signal"
F 5 "RG16N270WCT-ND" H 6100 3250 50  0001 C CNN "DigiKey"
F 6 "SignalFilter" H 6100 3250 50  0001 C CNN "Function"
F 7 "Yes" H 6100 3250 50  0001 C CNN "Done"
	1    6100 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	5900 4100 6100 4100
Wire Wire Line
	6100 4100 6100 4300
Wire Wire Line
	5900 3600 6100 3600
Wire Wire Line
	6100 3600 6100 3400
$Comp
L Device:C C?
U 1 1 5ED897AF
P 6600 4450
AR Path="/5EC7811C/5EC9A2C2/5ED897AF" Ref="C?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED897AF" Ref="C?"  Part="1" 
F 0 "C?" H 6750 4500 50  0000 C CNN
F 1 "2.7n" H 6800 4400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6600 4450 50  0001 C CNN
F 3 "https://www.johansontechnology.com/downloads/catalog/johanson-technology-multi-layer-high-q-capacitors.pdf" H 6600 4450 50  0001 C CNN
F 4 "Yes" H 6600 4450 50  0001 C CNN "Signal"
F 5 "712-1338-1-ND" H 6600 4450 50  0001 C CNN "DigiKey"
F 6 "SignalFilter" H 6600 4450 50  0001 C CNN "Function"
F 7 "Yes" H 6600 4450 50  0001 C CNN "Done"
	1    6600 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5ED897B8
P 6600 3250
AR Path="/5EC7811C/5EC9A2C2/5ED897B8" Ref="C?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED897B8" Ref="C?"  Part="1" 
F 0 "C?" H 6750 3300 50  0000 C CNN
F 1 "2.7n" H 6800 3200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6600 3250 50  0001 C CNN
F 3 "https://www.johansontechnology.com/downloads/catalog/johanson-technology-multi-layer-high-q-capacitors.pdf" H 6600 3250 50  0001 C CNN
F 4 "Yes" H 6600 3250 50  0001 C CNN "Signal"
F 5 "712-1338-1-ND" H 6600 3250 50  0001 C CNN "DigiKey"
F 6 "SignalFilter" H 6600 3250 50  0001 C CNN "Function"
F 7 "Yes" H 6600 3250 50  0001 C CNN "Done"
	1    6600 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3600 6600 3600
Wire Wire Line
	6600 3600 6600 3400
Connection ~ 6100 3600
Wire Wire Line
	6100 4100 6600 4100
Wire Wire Line
	6600 4100 6600 4300
Connection ~ 6100 4100
$Comp
L dac:LT1028 U?
U 1 1 5ED897C5
P 7400 3850
AR Path="/5EC7811C/5EC9A2C2/5ED897C5" Ref="U?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED897C5" Ref="U?"  Part="1" 
F 0 "U?" H 7050 4300 50  0000 L CNN
F 1 "LT1028" H 7050 4200 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7350 3850 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/1028fd.pdf" H 7350 3850 50  0001 C CNN
F 4 "LT1028CS8#PBF-ND" H 7400 3850 50  0001 C CNN "DigiKey"
F 5 "Yes" H 7400 3850 50  0001 C CNN "Done"
	1    7400 3850
	1    0    0    -1  
$EndComp
Connection ~ 6600 4100
Wire Wire Line
	7100 3750 7100 3600
Wire Wire Line
	7100 3600 6600 3600
Connection ~ 6600 3600
Wire Wire Line
	6600 4100 7100 4100
Wire Wire Line
	7100 4100 7100 3950
Wire Wire Line
	7800 3850 8100 3850
Wire Wire Line
	8100 3850 8100 3550
Wire Wire Line
	8100 2600 6600 2600
Wire Wire Line
	6100 2600 6100 3100
Wire Wire Line
	6600 3100 6600 2600
Connection ~ 6600 2600
Wire Wire Line
	6600 2600 6100 2600
Wire Wire Line
	6100 4600 6100 5100
Wire Wire Line
	6100 5100 6600 5100
Wire Wire Line
	6600 5100 6600 4600
$Comp
L power:GND #PWR?
U 1 1 5ED897DB
P 6600 5100
AR Path="/5EC7811C/5EC9A2C2/5ED897DB" Ref="#PWR?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED897DB" Ref="#PWR0187"  Part="1" 
F 0 "#PWR0187" H 6600 4850 50  0001 C CNN
F 1 "GND" H 6605 4927 50  0000 C CNN
F 2 "" H 6600 5100 50  0001 C CNN
F 3 "" H 6600 5100 50  0001 C CNN
	1    6600 5100
	1    0    0    -1  
$EndComp
Connection ~ 6600 5100
$Comp
L Device:C_Small C?
U 1 1 5ED897E5
P 7650 3550
AR Path="/5EC7811C/5EC9A2C2/5ED897E5" Ref="C?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED897E5" Ref="C?"  Part="1" 
F 0 "C?" V 7558 3504 50  0000 R CNN
F 1 "33p" V 7500 3600 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7650 3550 50  0001 C CNN
F 3 "https://api.kemet.com/component-edge/download/datasheet/C0603C330J1GACTU.pdf" H 7650 3550 50  0001 C CNN
F 4 "Maybe" V 7650 3550 50  0001 C CNN "Signal"
F 5 "399-7896-1-ND" H 7650 3550 50  0001 C CNN "DigiKey"
F 6 "Compensation" V 7650 3550 50  0001 C CNN "Function"
F 7 "Yes" H 7650 3550 50  0001 C CNN "Done"
	1    7650 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7550 3550 7500 3550
Wire Wire Line
	7500 3550 7500 3650
Wire Wire Line
	7750 3550 8100 3550
Connection ~ 8100 3550
Wire Wire Line
	8100 3550 8100 2600
Connection ~ 8100 3850
$Comp
L Device:R R?
U 1 1 5ED897F3
P 8350 3850
AR Path="/5EC7811C/5EC9A2C2/5ED897F3" Ref="R?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED897F3" Ref="R?"  Part="1" 
F 0 "R?" V 8150 3850 50  0000 C CNN
F 1 "100" V 8250 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8350 3850 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Susumu%20PDFs/RG_RM_RGH_Oct2012.pdf" H 8350 3850 50  0001 C CNN
F 4 "Yes" V 8350 3850 50  0001 C CNN "Signal"
F 5 "RG16N100WCT-ND" H 8350 3850 50  0001 C CNN "DigiKey"
F 6 "Yes" H 8350 3850 50  0001 C CNN "Done"
	1    8350 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 3850 8200 3850
Wire Wire Line
	8500 3850 8600 3850
Wire Wire Line
	3350 1300 3350 1450
Wire Wire Line
	3400 1450 3350 1450
Connection ~ 3350 1450
Wire Wire Line
	3350 1450 3350 1650
Wire Wire Line
	3600 1450 3650 1450
Wire Wire Line
	3650 1450 3650 1650
Connection ~ 3650 1650
Text Notes 5250 900  0    50   ~ 0
Consider gain structure. Aim for high gain in TIA stage? https://e2e.ti.com/support/audio/f/6/p/843817/3129227
$Comp
L Device:CP_Small C?
U 1 1 5ED89806
P 3500 1450
AR Path="/5EC77FFA/5ED89806" Ref="C?"  Part="1" 
AR Path="/5EC7811C/5EC9A2C2/5ED89806" Ref="C?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED89806" Ref="C?"  Part="1" 
F 0 "C?" V 3450 1250 50  0000 C CNN
F 1 "10u" V 3450 1050 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 3538 1300 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/AVX-TAJA106K016RNJ_C7171.pdf" H 3500 1450 50  0001 C CNN
F 4 "15" V 3500 1450 50  0001 C CNN "Vbias"
F 5 "Decoupling" H 3500 1450 50  0001 C CNN "Function"
F 6 "" V 3500 1450 50  0001 C CNN "DigiKey"
F 7 "C7171" H 3500 1450 50  0001 C CNN "LCSC"
F 8 "Yes" H 3500 1450 50  0001 C CNN "Done"
	1    3500 1450
	0    -1   1    0   
$EndComp
Wire Wire Line
	3750 2100 4050 2100
Wire Wire Line
	3000 2200 3000 3300
Wire Wire Line
	3000 2200 3150 2200
Wire Wire Line
	4050 2100 4050 3300
Connection ~ 4050 2100
Wire Wire Line
	4050 2100 5100 2100
$Comp
L Device:CP_Small C?
U 1 1 5ED89815
P 3500 2750
AR Path="/5EC77FFA/5ED89815" Ref="C?"  Part="1" 
AR Path="/5EC7811C/5EC9A2C2/5ED89815" Ref="C?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED89815" Ref="C?"  Part="1" 
F 0 "C?" V 3500 3000 50  0000 C CNN
F 1 "10u" V 3500 3150 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 3538 2600 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/AVX-TAJA106K016RNJ_C7171.pdf" H 3500 2750 50  0001 C CNN
F 4 "15" V 3500 2750 50  0001 C CNN "Vbias"
F 5 "Decoupling" H 3500 2750 50  0001 C CNN "Function"
F 6 "" V 3500 2750 50  0001 C CNN "DigiKey"
F 7 "C7171" H 3500 2750 50  0001 C CNN "LCSC"
F 8 "Yes" H 3500 2750 50  0001 C CNN "Done"
	1    3500 2750
	0    1    -1   0   
$EndComp
Wire Wire Line
	3650 2550 3650 2750
Wire Wire Line
	3650 2750 3600 2750
Connection ~ 3650 2750
Wire Wire Line
	3650 2750 3650 2850
Wire Wire Line
	3350 2550 3350 2750
Wire Wire Line
	3400 2750 3350 2750
Connection ~ 3350 2750
Wire Wire Line
	3350 2750 3350 2850
Wire Wire Line
	5100 4100 5100 4900
$Comp
L power:+15V #PWR?
U 1 1 5ED89824
P 3350 4100
AR Path="/5EC7811C/5EC9A2C2/5ED89824" Ref="#PWR?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED89824" Ref="#PWR0188"  Part="1" 
F 0 "#PWR0188" H 3350 3950 50  0001 C CNN
F 1 "+15V" H 3365 4273 50  0000 C CNN
F 2 "" H 3350 4100 50  0001 C CNN
F 3 "" H 3350 4100 50  0001 C CNN
	1    3350 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 4100 3350 4250
Wire Wire Line
	3400 4250 3350 4250
Connection ~ 3350 4250
Wire Wire Line
	3600 4250 3650 4250
Wire Wire Line
	3650 4250 3650 4450
$Comp
L Device:CP_Small C?
U 1 1 5ED89832
P 3500 4250
AR Path="/5EC77FFA/5ED89832" Ref="C?"  Part="1" 
AR Path="/5EC7811C/5EC9A2C2/5ED89832" Ref="C?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED89832" Ref="C?"  Part="1" 
F 0 "C?" V 3550 3950 50  0000 C CNN
F 1 "10u" V 3550 3750 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 3538 4100 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/AVX-TAJA106K016RNJ_C7171.pdf" H 3500 4250 50  0001 C CNN
F 4 "15" V 3500 4250 50  0001 C CNN "Vbias"
F 5 "Decoupling" H 3500 4250 50  0001 C CNN "Function"
F 6 "" V 3500 4250 50  0001 C CNN "DigiKey"
F 7 "C7171" H 3500 4250 50  0001 C CNN "LCSC"
F 8 "Yes" H 3500 4250 50  0001 C CNN "Done"
	1    3500 4250
	0    -1   1    0   
$EndComp
Connection ~ 3650 4450
Wire Wire Line
	3350 4250 3350 4450
Wire Wire Line
	2650 5000 3000 5000
Wire Wire Line
	3750 4900 4050 4900
Wire Wire Line
	4050 4900 4050 6100
Connection ~ 4050 4900
Wire Wire Line
	4050 4900 5100 4900
Wire Wire Line
	3000 5000 3000 6100
Connection ~ 3000 5000
Wire Wire Line
	3000 5000 3150 5000
$Comp
L power:-15V #PWR?
U 1 1 5ED89842
P 3350 5650
AR Path="/5EC7811C/5EC9A2C2/5ED89842" Ref="#PWR?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED89842" Ref="#PWR0189"  Part="1" 
F 0 "#PWR0189" H 3350 5750 50  0001 C CNN
F 1 "-15V" H 3365 5823 50  0000 C CNN
F 2 "" H 3350 5650 50  0001 C CNN
F 3 "" H 3350 5650 50  0001 C CNN
	1    3350 5650
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5ED8984B
P 3500 5350
AR Path="/5EC7811C/5EC9A2C2/5ED8984B" Ref="C?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED8984B" Ref="C?"  Part="1" 
F 0 "C?" V 3450 5600 50  0000 C CNN
F 1 "0.1u" V 3450 5750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3500 5350 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 3500 5350 50  0001 C CNN
F 4 "C14663" H 3500 5350 50  0001 C CNN "LCSC"
F 5 "15" V 3500 5350 50  0001 C CNN "Vbias"
F 6 "Decoupling" H 3500 5350 50  0001 C CNN "Function"
F 7 "Yes" H 3500 5350 50  0001 C CNN "Done"
	1    3500 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 5350 3350 5350
Connection ~ 3350 5350
Wire Wire Line
	3350 5350 3350 5200
$Comp
L power:GND #PWR?
U 1 1 5ED89854
P 3650 5650
AR Path="/5EC7811C/5EC9A2C2/5ED89854" Ref="#PWR?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED89854" Ref="#PWR0190"  Part="1" 
F 0 "#PWR0190" H 3650 5400 50  0001 C CNN
F 1 "GND" H 3655 5477 50  0000 C CNN
F 2 "" H 3650 5650 50  0001 C CNN
F 3 "" H 3650 5650 50  0001 C CNN
	1    3650 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 5350 3600 5350
$Comp
L Device:CP_Small C?
U 1 1 5ED8985E
P 3500 5550
AR Path="/5EC77FFA/5ED8985E" Ref="C?"  Part="1" 
AR Path="/5EC7811C/5EC9A2C2/5ED8985E" Ref="C?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED8985E" Ref="C?"  Part="1" 
F 0 "C?" V 3500 5800 50  0000 C CNN
F 1 "10u" V 3500 5950 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 3538 5400 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/AVX-TAJA106K016RNJ_C7171.pdf" H 3500 5550 50  0001 C CNN
F 4 "15" V 3500 5550 50  0001 C CNN "Vbias"
F 5 "Decoupling" H 3500 5550 50  0001 C CNN "Function"
F 6 "" V 3500 5550 50  0001 C CNN "DigiKey"
F 7 "C7171" H 3500 5550 50  0001 C CNN "LCSC"
F 8 "Yes" H 3500 5550 50  0001 C CNN "Done"
	1    3500 5550
	0    1    -1   0   
$EndComp
Wire Wire Line
	3650 5350 3650 5550
Wire Wire Line
	3650 5550 3600 5550
Connection ~ 3650 5550
Wire Wire Line
	3650 5550 3650 5650
Wire Wire Line
	3350 5350 3350 5550
Wire Wire Line
	3400 5550 3350 5550
Connection ~ 3350 5550
Wire Wire Line
	3350 5550 3350 5650
$Comp
L power:+15V #PWR?
U 1 1 5ED8986C
P 7400 2900
AR Path="/5EC7811C/5EC9A2C2/5ED8986C" Ref="#PWR?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED8986C" Ref="#PWR0191"  Part="1" 
F 0 "#PWR0191" H 7400 2750 50  0001 C CNN
F 1 "+15V" H 7415 3073 50  0000 C CNN
F 2 "" H 7400 2900 50  0001 C CNN
F 3 "" H 7400 2900 50  0001 C CNN
	1    7400 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5ED89875
P 7550 3250
AR Path="/5EC7811C/5EC9A2C2/5ED89875" Ref="C?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED89875" Ref="C?"  Part="1" 
F 0 "C?" V 7550 3000 50  0000 C CNN
F 1 "0.1u" V 7550 2850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7550 3250 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 7550 3250 50  0001 C CNN
F 4 "C14663" V 7550 3250 50  0001 C CNN "LCSC"
F 5 "15" V 7550 3250 50  0001 C CNN "Vbias"
F 6 "Decoupling" H 7550 3250 50  0001 C CNN "Function"
F 7 "Yes" H 7550 3250 50  0001 C CNN "Done"
	1    7550 3250
	0    -1   -1   0   
$EndComp
Connection ~ 7400 3250
$Comp
L power:GND #PWR?
U 1 1 5ED8987C
P 7700 3250
AR Path="/5EC7811C/5EC9A2C2/5ED8987C" Ref="#PWR?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED8987C" Ref="#PWR0192"  Part="1" 
F 0 "#PWR0192" H 7700 3000 50  0001 C CNN
F 1 "GND" H 7705 3077 50  0000 C CNN
F 2 "" H 7700 3250 50  0001 C CNN
F 3 "" H 7700 3250 50  0001 C CNN
	1    7700 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3250 7400 3250
Wire Wire Line
	7650 3250 7700 3250
Wire Wire Line
	7400 2900 7400 3050
Wire Wire Line
	7450 3050 7400 3050
Connection ~ 7400 3050
Wire Wire Line
	7400 3050 7400 3250
Wire Wire Line
	7650 3050 7700 3050
Wire Wire Line
	7700 3050 7700 3250
Connection ~ 7700 3250
$Comp
L Device:CP_Small C?
U 1 1 5ED8988E
P 7550 3050
AR Path="/5EC77FFA/5ED8988E" Ref="C?"  Part="1" 
AR Path="/5EC7811C/5EC9A2C2/5ED8988E" Ref="C?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED8988E" Ref="C?"  Part="1" 
F 0 "C?" V 7500 2850 50  0000 C CNN
F 1 "10u" V 7500 2650 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 7588 2900 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/AVX-TAJA106K016RNJ_C7171.pdf" H 7550 3050 50  0001 C CNN
F 4 "15" V 7550 3050 50  0001 C CNN "Vbias"
F 5 "Decoupling" H 7550 3050 50  0001 C CNN "Function"
F 6 "" V 7550 3050 50  0001 C CNN "DigiKey"
F 7 "C7171" H 7550 3050 50  0001 C CNN "LCSC"
F 8 "Yes" H 7550 3050 50  0001 C CNN "Done"
	1    7550 3050
	0    -1   1    0   
$EndComp
$Comp
L power:-15V #PWR?
U 1 1 5ED89894
P 7400 4550
AR Path="/5EC7811C/5EC9A2C2/5ED89894" Ref="#PWR?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED89894" Ref="#PWR0193"  Part="1" 
F 0 "#PWR0193" H 7400 4650 50  0001 C CNN
F 1 "-15V" H 7415 4723 50  0000 C CNN
F 2 "" H 7400 4550 50  0001 C CNN
F 3 "" H 7400 4550 50  0001 C CNN
	1    7400 4550
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5ED8989D
P 7550 4250
AR Path="/5EC7811C/5EC9A2C2/5ED8989D" Ref="C?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED8989D" Ref="C?"  Part="1" 
F 0 "C?" V 7500 4500 50  0000 C CNN
F 1 "0.1u" V 7500 4650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7550 4250 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 7550 4250 50  0001 C CNN
F 4 "C14663" H 7550 4250 50  0001 C CNN "LCSC"
F 5 "15" V 7550 4250 50  0001 C CNN "Vbias"
F 6 "Decoupling" H 7550 4250 50  0001 C CNN "Function"
F 7 "Yes" H 7550 4250 50  0001 C CNN "Done"
	1    7550 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	7450 4250 7400 4250
Connection ~ 7400 4250
Wire Wire Line
	7400 4250 7400 4100
$Comp
L power:GND #PWR?
U 1 1 5ED898A6
P 7700 4550
AR Path="/5EC7811C/5EC9A2C2/5ED898A6" Ref="#PWR?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED898A6" Ref="#PWR0194"  Part="1" 
F 0 "#PWR0194" H 7700 4300 50  0001 C CNN
F 1 "GND" H 7705 4377 50  0000 C CNN
F 2 "" H 7700 4550 50  0001 C CNN
F 3 "" H 7700 4550 50  0001 C CNN
	1    7700 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 4250 7650 4250
$Comp
L Device:CP_Small C?
U 1 1 5ED898B0
P 7550 4450
AR Path="/5EC77FFA/5ED898B0" Ref="C?"  Part="1" 
AR Path="/5EC7811C/5EC9A2C2/5ED898B0" Ref="C?"  Part="1" 
AR Path="/5EC7811C/5EC9BF1A/5ED898B0" Ref="C?"  Part="1" 
F 0 "C?" V 7550 4700 50  0000 C CNN
F 1 "10u" V 7550 4850 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 7588 4300 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/AVX-TAJA106K016RNJ_C7171.pdf" H 7550 4450 50  0001 C CNN
F 4 "15" V 7550 4450 50  0001 C CNN "Vbias"
F 5 "Decoupling" H 7550 4450 50  0001 C CNN "Function"
F 6 "" V 7550 4450 50  0001 C CNN "DigiKey"
F 7 "C7171" H 7550 4450 50  0001 C CNN "LCSC"
F 8 "Yes" H 7550 4450 50  0001 C CNN "Done"
	1    7550 4450
	0    1    -1   0   
$EndComp
Wire Wire Line
	7700 4250 7700 4450
Wire Wire Line
	7700 4450 7650 4450
Connection ~ 7700 4450
Wire Wire Line
	7700 4450 7700 4550
Wire Wire Line
	7400 4250 7400 4450
Wire Wire Line
	7450 4450 7400 4450
Connection ~ 7400 4450
Wire Wire Line
	7400 4450 7400 4550
Wire Wire Line
	7400 3250 7400 3600
Connection ~ 3000 2200
Wire Wire Line
	2650 2200 3000 2200
Text HLabel 2650 2200 0    50   Input ~ 0
IIN-
$EndSCHEMATC