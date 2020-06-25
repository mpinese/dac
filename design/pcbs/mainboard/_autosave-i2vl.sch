EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 10
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4100 2250 0    50   Input ~ 0
IIN+
Text HLabel 8200 1900 2    50   Output ~ 0
VOUT
$Comp
L power:GND #PWR0195
U 1 1 5ECA76FD
P 4550 950
F 0 "#PWR0195" H 4550 700 50  0001 C CNN
F 1 "GND" H 4555 777 50  0000 C CNN
F 2 "" H 4550 950 50  0001 C CNN
F 3 "" H 4550 950 50  0001 C CNN
	1    4550 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 950  4550 900 
Wire Wire Line
	4550 900  4600 900 
$Comp
L Device:C_Small C?
U 1 1 5ECAA46A
P 1000 2050
F 0 "C?" V 950 2300 50  0000 C CNN
F 1 "0.1u" V 950 2450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1000 2050 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 1000 2050 50  0001 C CNN
F 4 "C14663" H 1000 2050 50  0001 C CNN "LCSC"
F 5 "15" V 1000 2050 50  0001 C CNN "Vbias"
F 6 "Decoupling" H 1000 2050 50  0001 C CNN "Function"
F 7 "Yes" H 1000 2050 50  0001 C CNN "Done"
	1    1000 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	900  2050 850  2050
Connection ~ 850  2050
Wire Wire Line
	850  2050 850  1900
$Comp
L power:GND #PWR0198
U 1 1 5ECAD830
P 1150 2350
F 0 "#PWR0198" H 1150 2100 50  0001 C CNN
F 1 "GND" H 1155 2177 50  0000 C CNN
F 2 "" H 1150 2350 50  0001 C CNN
F 3 "" H 1150 2350 50  0001 C CNN
	1    1150 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2050 1100 2050
$Comp
L Device:C_Small C?
U 1 1 5ECAE129
P 1000 1150
F 0 "C?" V 1000 900 50  0000 C CNN
F 1 "0.1u" V 1000 750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1000 1150 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 1000 1150 50  0001 C CNN
F 4 "C14663" V 1000 1150 50  0001 C CNN "LCSC"
F 5 "15" V 1000 1150 50  0001 C CNN "Vbias"
F 6 "Decoupling" H 1000 1150 50  0001 C CNN "Function"
F 7 "Yes" H 1000 1150 50  0001 C CNN "Done"
	1    1000 1150
	0    -1   -1   0   
$EndComp
Connection ~ 850  1150
Wire Wire Line
	850  1150 850  1300
$Comp
L power:GND #PWR0199
U 1 1 5ECB0531
P 1150 1150
F 0 "#PWR0199" H 1150 900 50  0001 C CNN
F 1 "GND" H 1155 977 50  0000 C CNN
F 2 "" H 1150 1150 50  0001 C CNN
F 3 "" H 1150 1150 50  0001 C CNN
	1    1150 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  1150 850  1150
Wire Wire Line
	1100 1150 1150 1150
$Comp
L Device:C C?
U 1 1 5ECB12BA
P 4950 1650
F 0 "C?" V 5000 1450 50  0000 C CNN
F 1 "4.7p" V 4900 1450 50  0000 C CNN
F 2 "" H 4950 1650 50  0001 C CNN
F 3 "" H 4950 1650 50  0001 C CNN
F 4 "Yes" V 4950 1650 50  0001 C CNN "Signal"
F 5 "" H 4950 1650 50  0001 C CNN "DigiKey"
F 6 "SignalFilter" H 4950 1650 50  0001 C CNN "Function"
F 7 "" H 4950 1650 50  0001 C CNN "Done"
	1    4950 1650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5ECB533C
P 4950 1350
F 0 "R?" V 4900 1550 50  0000 C CNN
F 1 "750" V 5000 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4950 1350 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Susumu%20PDFs/RG_RM_RGH_Oct2012.pdf" H 4950 1350 50  0001 C CNN
F 4 "Yes" V 4950 1350 50  0001 C CNN "Signal"
F 5 "RG16N750WCT-ND" H 4950 1350 50  0001 C CNN "DigiKey"
F 6 "SignalFilter" V 4950 1350 50  0001 C CNN "Function"
F 7 "Yes" H 4950 1350 50  0001 C CNN "Done"
	1    4950 1350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0200
U 1 1 5ECB5C81
P 4550 2100
F 0 "#PWR0200" H 4550 1850 50  0001 C CNN
F 1 "GND" H 4555 1927 50  0000 C CNN
F 2 "" H 4550 2100 50  0001 C CNN
F 3 "" H 4550 2100 50  0001 C CNN
	1    4550 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2100 4550 2050
Wire Wire Line
	4550 2050 4600 2050
$Comp
L Device:C C?
U 1 1 5ECB5CE1
P 4950 2800
F 0 "C?" V 5000 2550 50  0000 C CNN
F 1 "2.2n" V 4900 2550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4950 2800 50  0001 C CNN
F 3 "https://www.johansontechnology.com/downloads/catalog/johanson-technology-multi-layer-high-q-capacitors.pdf" H 4950 2800 50  0001 C CNN
F 4 "Yes" V 4950 2800 50  0001 C CNN "Signal"
F 5 "712-1336-1-ND" H 4950 2800 50  0001 C CNN "DigiKey"
F 6 "SignalFilter" H 4950 2800 50  0001 C CNN "Function"
F 7 "Yes" H 4950 2800 50  0001 C CNN "Done"
	1    4950 2800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5ECB5CF8
P 4950 2500
F 0 "R?" V 4900 2750 50  0000 C CNN
F 1 "750" V 5000 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4950 2500 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Susumu%20PDFs/RG_RM_RGH_Oct2012.pdf" H 4950 2500 50  0001 C CNN
F 4 "Yes" V 4950 2500 50  0001 C CNN "Signal"
F 5 "RG16N750WCT-ND" H 4950 2500 50  0001 C CNN "DigiKey"
F 6 "Yes" H 4950 2500 50  0001 C CNN "Done"
	1    4950 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 2800 4450 2800
Wire Wire Line
	5100 2800 5500 2800
Wire Wire Line
	4800 2500 4450 2500
Wire Wire Line
	5100 2500 5500 2500
Wire Wire Line
	4800 1650 4450 1650
Wire Wire Line
	5100 1350 5500 1350
Wire Wire Line
	4800 1350 4450 1350
$Comp
L Device:R R?
U 1 1 5ECDCCF3
P 5900 1650
F 0 "R?" V 5693 1650 50  0000 C CNN
F 1 "560" V 5784 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5900 1650 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Susumu%20PDFs/RG_RM_RGH_Oct2012.pdf" H 5900 1650 50  0001 C CNN
F 4 "Yes" V 5900 1650 50  0001 C CNN "Signal"
F 5 "RG16N560WCT-ND" V 5900 1650 50  0001 C CNN "DigiKey"
F 6 "SignalFilter" V 5900 1650 50  0001 C CNN "Function"
F 7 "Yes" H 5900 1650 50  0001 C CNN "Done"
	1    5900 1650
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5ECDD444
P 5900 2150
F 0 "R?" V 5693 2150 50  0000 C CNN
F 1 "560" V 5784 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5900 2150 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Susumu%20PDFs/RG_RM_RGH_Oct2012.pdf" H 5900 2150 50  0001 C CNN
F 4 "Yes" V 5900 2150 50  0001 C CNN "Signal"
F 5 "RG16N560WCT-ND" H 5900 2150 50  0001 C CNN "DigiKey"
F 6 "Yes" H 5900 2150 50  0001 C CNN "Done"
	1    5900 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5ECE3D1B
P 6300 2500
F 0 "R?" H 6230 2454 50  0000 R CNN
F 1 "270" H 6230 2545 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6300 2500 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Susumu%20PDFs/RG_RM_RGH_Oct2012.pdf" H 6300 2500 50  0001 C CNN
F 4 "Yes" H 6300 2500 50  0001 C CNN "Signal"
F 5 "RG16N270WCT-ND" H 6300 2500 50  0001 C CNN "DigiKey"
F 6 "Yes" H 6300 2500 50  0001 C CNN "Done"
	1    6300 2500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5ECE6555
P 6300 1300
F 0 "R?" H 6230 1254 50  0000 R CNN
F 1 "270" H 6230 1345 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6300 1300 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Susumu%20PDFs/RG_RM_RGH_Oct2012.pdf" H 6300 1300 50  0001 C CNN
F 4 "Yes" H 6300 1300 50  0001 C CNN "Signal"
F 5 "RG16N270WCT-ND" H 6300 1300 50  0001 C CNN "DigiKey"
F 6 "SignalFilter" H 6300 1300 50  0001 C CNN "Function"
F 7 "Yes" H 6300 1300 50  0001 C CNN "Done"
	1    6300 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	6300 1650 6300 1450
$Comp
L Device:C C?
U 1 1 5ECE90FC
P 6650 2500
F 0 "C?" H 6800 2550 50  0000 C CNN
F 1 "2.7n" H 6850 2450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6650 2500 50  0001 C CNN
F 3 "https://www.johansontechnology.com/downloads/catalog/johanson-technology-multi-layer-high-q-capacitors.pdf" H 6650 2500 50  0001 C CNN
F 4 "Yes" H 6650 2500 50  0001 C CNN "Signal"
F 5 "712-1338-1-ND" H 6650 2500 50  0001 C CNN "DigiKey"
F 6 "SignalFilter" H 6650 2500 50  0001 C CNN "Function"
F 7 "Yes" H 6650 2500 50  0001 C CNN "Done"
	1    6650 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5ECE9F35
P 6650 1300
F 0 "C?" H 6800 1350 50  0000 C CNN
F 1 "2.7n" H 6850 1250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6650 1300 50  0001 C CNN
F 3 "https://www.johansontechnology.com/downloads/catalog/johanson-technology-multi-layer-high-q-capacitors.pdf" H 6650 1300 50  0001 C CNN
F 4 "Yes" H 6650 1300 50  0001 C CNN "Signal"
F 5 "712-1338-1-ND" H 6650 1300 50  0001 C CNN "DigiKey"
F 6 "SignalFilter" H 6650 1300 50  0001 C CNN "Function"
F 7 "Yes" H 6650 1300 50  0001 C CNN "Done"
	1    6650 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 1650 6650 1450
$Comp
L power:GND #PWR0202
U 1 1 5EC9A6C6
P 6650 2800
F 0 "#PWR0202" H 6650 2550 50  0001 C CNN
F 1 "GND" H 6655 2627 50  0000 C CNN
F 2 "" H 6650 2800 50  0001 C CNN
F 3 "" H 6650 2800 50  0001 C CNN
	1    6650 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5ECB21C0
P 7950 1900
F 0 "R?" V 7750 1900 50  0000 C CNN
F 1 "100" V 7850 1900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7950 1900 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Susumu%20PDFs/RG_RM_RGH_Oct2012.pdf" H 7950 1900 50  0001 C CNN
F 4 "Yes" V 7950 1900 50  0001 C CNN "Signal"
F 5 "RG16N100WCT-ND" H 7950 1900 50  0001 C CNN "DigiKey"
F 6 "Yes" H 7950 1900 50  0001 C CNN "Done"
	1    7950 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 1900 8200 1900
Wire Wire Line
	850  800  850  950 
Wire Wire Line
	900  950  850  950 
Connection ~ 850  950 
Wire Wire Line
	850  950  850  1150
Wire Wire Line
	1100 950  1150 950 
Wire Wire Line
	1150 950  1150 1150
Connection ~ 1150 1150
$Comp
L Device:CP_Small C?
U 1 1 5ECF77F8
P 1000 950
AR Path="/5EC77FFA/5ECF77F8" Ref="C?"  Part="1" 
AR Path="/5EC7811C/5EC9A2C2/5ECF77F8" Ref="C?"  Part="1" 
F 0 "C?" V 950 750 50  0000 C CNN
F 1 "10u" V 950 550 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 1038 800 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/AVX-TAJA106K016RNJ_C7171.pdf" H 1000 950 50  0001 C CNN
F 4 "15" V 1000 950 50  0001 C CNN "Vbias"
F 5 "Decoupling" H 1000 950 50  0001 C CNN "Function"
F 6 "" V 1000 950 50  0001 C CNN "DigiKey"
F 7 "C7171" H 1000 950 50  0001 C CNN "LCSC"
F 8 "Yes" H 1000 950 50  0001 C CNN "Done"
	1    1000 950 
	0    -1   1    0   
$EndComp
Wire Wire Line
	5200 1000 5500 1000
$Comp
L Device:CP_Small C?
U 1 1 5ED07F55
P 1000 2250
AR Path="/5EC77FFA/5ED07F55" Ref="C?"  Part="1" 
AR Path="/5EC7811C/5EC9A2C2/5ED07F55" Ref="C?"  Part="1" 
F 0 "C?" V 1000 2500 50  0000 C CNN
F 1 "10u" V 1000 2650 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 1038 2100 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/AVX-TAJA106K016RNJ_C7171.pdf" H 1000 2250 50  0001 C CNN
F 4 "15" V 1000 2250 50  0001 C CNN "Vbias"
F 5 "Decoupling" H 1000 2250 50  0001 C CNN "Function"
F 6 "" V 1000 2250 50  0001 C CNN "DigiKey"
F 7 "C7171" H 1000 2250 50  0001 C CNN "LCSC"
F 8 "Yes" H 1000 2250 50  0001 C CNN "Done"
	1    1000 2250
	0    1    -1   0   
$EndComp
Wire Wire Line
	1150 2050 1150 2250
Wire Wire Line
	1150 2250 1100 2250
Connection ~ 1150 2250
Wire Wire Line
	1150 2250 1150 2350
Wire Wire Line
	850  2050 850  2250
Wire Wire Line
	900  2250 850  2250
Connection ~ 850  2250
Wire Wire Line
	850  2250 850  2350
Text HLabel 4100 1100 0    50   Input ~ 0
IIN-
$Comp
L power:+9V #PWR?
U 1 1 5ED0A775
P 850 800
F 0 "#PWR?" H 850 650 50  0001 C CNN
F 1 "+9V" H 865 973 50  0000 C CNN
F 2 "" H 850 800 50  0001 C CNN
F 3 "" H 850 800 50  0001 C CNN
	1    850  800 
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:OPA1612AxD U?
U 1 1 5ED0B9A3
P 4900 1000
F 0 "U?" H 4900 1367 50  0000 C CNN
F 1 "OPA1612AxD" H 4900 1276 50  0000 C CNN
F 2 "" H 4900 1000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa1612.pdf" H 4900 1000 50  0001 C CNN
	1    4900 1000
	1    0    0    -1  
$EndComp
$Comp
L power:-9V #PWR?
U 1 1 5ED1435E
P 850 2350
F 0 "#PWR?" H 850 2225 50  0001 C CNN
F 1 "-9V" H 865 2523 50  0000 C CNN
F 2 "" H 850 2350 50  0001 C CNN
F 3 "" H 850 2350 50  0001 C CNN
	1    850  2350
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Operational:OPA1612AxD U?
U 2 1 5ED23EC0
P 4900 2150
F 0 "U?" H 5250 2400 50  0000 C CNN
F 1 "OPA1612AxD" H 5250 2300 50  0000 C CNN
F 2 "" H 4900 2150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa1612.pdf" H 4900 2150 50  0001 C CNN
	2    4900 2150
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:OPA1612AxD U?
U 3 1 5ED25D2B
P 950 1600
F 0 "U?" H 908 1646 50  0000 L CNN
F 1 "OPA1612AxD" H 908 1555 50  0000 L CNN
F 2 "" H 950 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa1612.pdf" H 950 1600 50  0001 C CNN
	3    950  1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1100 4450 1100
Wire Wire Line
	5500 1000 5500 1350
Connection ~ 5500 1350
Wire Wire Line
	5500 1350 5500 1650
Wire Wire Line
	4450 1100 4450 1350
Connection ~ 4450 1100
Wire Wire Line
	4450 1100 4600 1100
Connection ~ 4450 1350
Wire Wire Line
	4450 1350 4450 1650
Wire Wire Line
	5500 2150 5500 2500
Wire Wire Line
	4100 2250 4450 2250
Wire Wire Line
	4450 2800 4450 2500
Connection ~ 4450 2250
Wire Wire Line
	4450 2250 4600 2250
Connection ~ 4450 2500
Wire Wire Line
	4450 2500 4450 2250
Wire Wire Line
	5500 2800 5500 2500
Connection ~ 5500 2500
Wire Wire Line
	5750 1650 5500 1650
Connection ~ 5500 1650
Wire Wire Line
	5750 2150 5500 2150
Connection ~ 5500 2150
Wire Wire Line
	6300 1000 6300 1150
Wire Wire Line
	6650 1150 6650 1000
Connection ~ 6650 1000
Wire Wire Line
	6300 2650 6300 2800
Wire Wire Line
	6650 2650 6650 2800
Connection ~ 6650 2800
Wire Wire Line
	6300 2350 6300 2150
Wire Wire Line
	6650 2350 6650 2150
$Comp
L Amplifier_Operational:OPA1612AxD U?
U 1 1 5EDB096C
P 7250 1900
F 0 "U?" H 7250 1533 50  0000 C CNN
F 1 "OPA1612AxD" H 7250 1624 50  0000 C CNN
F 2 "" H 7250 1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa1612.pdf" H 7250 1900 50  0001 C CNN
	1    7250 1900
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:OPA1612AxD U?
U 3 1 5EDB4447
P 1800 1600
F 0 "U?" H 1758 1646 50  0000 L CNN
F 1 "OPA1612AxD" H 1758 1555 50  0000 L CNN
F 2 "" H 1800 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa1612.pdf" H 1800 1600 50  0001 C CNN
	3    1800 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1650 6650 1650
Wire Wire Line
	6300 2800 6650 2800
Wire Wire Line
	6300 2150 6650 2150
Wire Wire Line
	6050 1650 6300 1650
Wire Wire Line
	5100 1650 5500 1650
Wire Wire Line
	5200 2150 5500 2150
Connection ~ 6300 1650
Wire Wire Line
	6050 2150 6300 2150
Connection ~ 6300 2150
Wire Wire Line
	6950 1800 6650 1800
Wire Wire Line
	6650 1800 6650 1650
Connection ~ 6650 1650
Wire Wire Line
	6650 2150 6650 2000
Wire Wire Line
	6650 2000 6950 2000
Connection ~ 6650 2150
Wire Wire Line
	7800 1900 7700 1900
Wire Wire Line
	7700 1900 7700 1000
Connection ~ 7700 1900
$Comp
L Device:C_Small C?
U 1 1 5EDDBE41
P 1850 1150
F 0 "C?" V 1850 900 50  0000 C CNN
F 1 "0.1u" V 1850 750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1850 1150 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 1850 1150 50  0001 C CNN
F 4 "C14663" V 1850 1150 50  0001 C CNN "LCSC"
F 5 "15" V 1850 1150 50  0001 C CNN "Vbias"
F 6 "Decoupling" H 1850 1150 50  0001 C CNN "Function"
F 7 "Yes" H 1850 1150 50  0001 C CNN "Done"
	1    1850 1150
	0    -1   -1   0   
$EndComp
Connection ~ 1700 1150
Wire Wire Line
	1700 1150 1700 1300
$Comp
L power:GND #PWR?
U 1 1 5EDDBE4D
P 2000 1150
F 0 "#PWR?" H 2000 900 50  0001 C CNN
F 1 "GND" H 2005 977 50  0000 C CNN
F 2 "" H 2000 1150 50  0001 C CNN
F 3 "" H 2000 1150 50  0001 C CNN
	1    2000 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1150 1700 1150
Wire Wire Line
	1950 1150 2000 1150
Wire Wire Line
	1700 800  1700 950 
Wire Wire Line
	1750 950  1700 950 
Connection ~ 1700 950 
Wire Wire Line
	1700 950  1700 1150
Wire Wire Line
	1950 950  2000 950 
Wire Wire Line
	2000 950  2000 1150
Connection ~ 2000 1150
$Comp
L Device:CP_Small C?
U 1 1 5EDDBE65
P 1850 950
AR Path="/5EC77FFA/5EDDBE65" Ref="C?"  Part="1" 
AR Path="/5EC7811C/5EC9A2C2/5EDDBE65" Ref="C?"  Part="1" 
F 0 "C?" V 1800 750 50  0000 C CNN
F 1 "10u" V 1800 550 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 1888 800 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/AVX-TAJA106K016RNJ_C7171.pdf" H 1850 950 50  0001 C CNN
F 4 "15" V 1850 950 50  0001 C CNN "Vbias"
F 5 "Decoupling" H 1850 950 50  0001 C CNN "Function"
F 6 "" V 1850 950 50  0001 C CNN "DigiKey"
F 7 "C7171" H 1850 950 50  0001 C CNN "LCSC"
F 8 "Yes" H 1850 950 50  0001 C CNN "Done"
	1    1850 950 
	0    -1   1    0   
$EndComp
$Comp
L power:+9V #PWR?
U 1 1 5EDDBE6F
P 1700 800
F 0 "#PWR?" H 1700 650 50  0001 C CNN
F 1 "+9V" H 1715 973 50  0000 C CNN
F 2 "" H 1700 800 50  0001 C CNN
F 3 "" H 1700 800 50  0001 C CNN
	1    1700 800 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EDE0989
P 1850 2050
F 0 "C?" V 1800 2300 50  0000 C CNN
F 1 "0.1u" V 1800 2450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1850 2050 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 1850 2050 50  0001 C CNN
F 4 "C14663" H 1850 2050 50  0001 C CNN "LCSC"
F 5 "15" V 1850 2050 50  0001 C CNN "Vbias"
F 6 "Decoupling" H 1850 2050 50  0001 C CNN "Function"
F 7 "Yes" H 1850 2050 50  0001 C CNN "Done"
	1    1850 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 2050 1700 2050
Connection ~ 1700 2050
Wire Wire Line
	1700 2050 1700 1900
$Comp
L power:GND #PWR?
U 1 1 5EDE0996
P 2000 2350
F 0 "#PWR?" H 2000 2100 50  0001 C CNN
F 1 "GND" H 2005 2177 50  0000 C CNN
F 2 "" H 2000 2350 50  0001 C CNN
F 3 "" H 2000 2350 50  0001 C CNN
	1    2000 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2050 1950 2050
$Comp
L Device:CP_Small C?
U 1 1 5EDE09A6
P 1850 2250
AR Path="/5EC77FFA/5EDE09A6" Ref="C?"  Part="1" 
AR Path="/5EC7811C/5EC9A2C2/5EDE09A6" Ref="C?"  Part="1" 
F 0 "C?" V 1850 2500 50  0000 C CNN
F 1 "10u" V 1850 2650 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 1888 2100 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/AVX-TAJA106K016RNJ_C7171.pdf" H 1850 2250 50  0001 C CNN
F 4 "15" V 1850 2250 50  0001 C CNN "Vbias"
F 5 "Decoupling" H 1850 2250 50  0001 C CNN "Function"
F 6 "" V 1850 2250 50  0001 C CNN "DigiKey"
F 7 "C7171" H 1850 2250 50  0001 C CNN "LCSC"
F 8 "Yes" H 1850 2250 50  0001 C CNN "Done"
	1    1850 2250
	0    1    -1   0   
$EndComp
Wire Wire Line
	2000 2050 2000 2250
Wire Wire Line
	2000 2250 1950 2250
Connection ~ 2000 2250
Wire Wire Line
	2000 2250 2000 2350
Wire Wire Line
	1700 2050 1700 2250
Wire Wire Line
	1750 2250 1700 2250
Connection ~ 1700 2250
Wire Wire Line
	1700 2250 1700 2350
$Comp
L power:-9V #PWR?
U 1 1 5EDE09B8
P 1700 2350
F 0 "#PWR?" H 1700 2225 50  0001 C CNN
F 1 "-9V" H 1715 2523 50  0000 C CNN
F 2 "" H 1700 2350 50  0001 C CNN
F 3 "" H 1700 2350 50  0001 C CNN
	1    1700 2350
	-1   0    0    1   
$EndComp
Wire Wire Line
	7550 1900 7700 1900
Wire Wire Line
	6650 1000 7700 1000
Wire Wire Line
	6300 1000 6650 1000
$EndSCHEMATC
