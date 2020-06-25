EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 10
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3000 3000 0    50   Input ~ 0
LIN
Text HLabel 3000 5000 0    50   Input ~ 0
RIN
Text Notes 7100 6100 0    50   ~ 0
AKG K701 specs:\n62 ohm\n200 mW max\n105 dB SPL/V (3.56 Pa rel to 20 uPa @ 1 V)\n\n=> Imax 57 mA RMS, Vmax 3.5 V RMS\n=> max volume (at 200 mW) 116 dB\n\n1.3 Vrms as output by DAC I2V stage will give 107 dB,\nthis is fine.  Therefore just a buffer stage required.\n\nJumpers added to enable gain increase if high Z cans are used.
$Comp
L Amplifier_Audio:LME49600 U8
U 1 1 5EC7A59F
P 5300 3100
F 0 "U8" H 5350 3350 50  0000 L CNN
F 1 "LME49600" H 5400 3200 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 5300 3100 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lme49600.pdf" H 5300 3100 50  0001 C CNN
F 4 "296-43968-5-ND" H 5300 3100 50  0001 C CNN "DigiKey"
F 5 "Yes" H 5300 3100 50  0001 C CNN "Done"
	1    5300 3100
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Audio:LME49600 U9
U 1 1 5EC7AD17
P 5300 5100
F 0 "U9" H 5350 5350 50  0000 L CNN
F 1 "LME49600" H 5350 5200 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 5300 5100 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lme49600.pdf" H 5300 5100 50  0001 C CNN
F 4 "296-43968-5-ND" H 5300 5100 50  0001 C CNN "DigiKey"
F 5 "Yes" H 5300 5100 50  0001 C CNN "Done"
	1    5300 5100
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:OPA1612AxD U7
U 1 1 5EC7D37B
P 4300 3100
F 0 "U7" H 4300 3467 50  0000 C CNN
F 1 "OPA1612AxD" H 4300 3376 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4300 3100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa1612.pdf" H 4300 3100 50  0001 C CNN
F 4 "296-39098-1-ND" H 4300 3100 50  0001 C CNN "DigiKey"
F 5 "Yes" H 4300 3100 50  0001 C CNN "Done"
	1    4300 3100
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:OPA1612AxD U7
U 2 1 5EC7E916
P 4300 5100
F 0 "U7" H 4300 5467 50  0000 C CNN
F 1 "OPA1612AxD" H 4300 5376 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4300 5100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa1612.pdf" H 4300 5100 50  0001 C CNN
F 4 "296-39098-1-ND" H 4300 5100 50  0001 C CNN "DigiKey"
F 5 "Yes" H 4300 5100 50  0001 C CNN "Done"
	2    4300 5100
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:OPA1612AxD U7
U 3 1 5EC7F6FB
P 4100 1750
F 0 "U7" H 4058 1796 50  0000 L CNN
F 1 "OPA1612AxD" H 4058 1705 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4100 1750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa1612.pdf" H 4100 1750 50  0001 C CNN
F 4 "296-39098-1-ND" H 4100 1750 50  0001 C CNN "DigiKey"
F 5 "Yes" H 4100 1750 50  0001 C CNN "Done"
	3    4100 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3100 5750 3100
Wire Wire Line
	4600 3100 5000 3100
Wire Wire Line
	4600 5100 5000 5100
Wire Wire Line
	5600 5100 5750 5100
Wire Wire Line
	4000 5200 3950 5200
$Comp
L Device:C_Small C34
U 1 1 5EC8CA29
P 4200 2150
F 0 "C34" V 3971 2150 50  0000 C CNN
F 1 "0.1u" V 4062 2150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4200 2150 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 4200 2150 50  0001 C CNN
F 4 "C14663" H 4200 2150 50  0001 C CNN "LCSC"
F 5 "Decoupling" V 4200 2150 50  0001 C CNN "Function"
F 6 "15" V 4200 2150 50  0001 C CNN "Vbias"
F 7 "Yes" H 4200 2150 50  0001 C CNN "Done"
	1    4200 2150
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C33
U 1 1 5EC8DF3F
P 4200 1350
F 0 "C33" V 3971 1350 50  0000 C CNN
F 1 "0.1u" V 4062 1350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4200 1350 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 4200 1350 50  0001 C CNN
F 4 "C14663" H 4200 1350 50  0001 C CNN "LCSC"
F 5 "Decoupling" V 4200 1350 50  0001 C CNN "Function"
F 6 "15" V 4200 1350 50  0001 C CNN "Vbias"
F 7 "Yes" H 4200 1350 50  0001 C CNN "Done"
	1    4200 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 1350 4000 1350
Wire Wire Line
	4000 1350 4000 1450
Wire Wire Line
	4000 2050 4000 2150
Wire Wire Line
	4000 2150 4100 2150
Wire Wire Line
	4000 1250 4000 1350
Connection ~ 4000 1350
Wire Wire Line
	4000 2150 4000 2250
Connection ~ 4000 2150
Wire Wire Line
	4300 1350 4400 1350
Wire Wire Line
	4300 2150 4400 2150
Wire Wire Line
	4000 3200 3950 3200
Wire Wire Line
	3000 3000 3100 3000
$Comp
L Device:C_Small C40
U 1 1 5EC954F1
P 5350 2750
F 0 "C40" V 5300 2550 50  0000 C CNN
F 1 "0.1u" V 5400 2550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5350 2750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 5350 2750 50  0001 C CNN
F 4 "C14663" H 5350 2750 50  0001 C CNN "LCSC"
F 5 "15" V 5350 2750 50  0001 C CNN "Vbias"
F 6 "Decoupling" H 5350 2750 50  0001 C CNN "Function"
F 7 "Yes" H 5350 2750 50  0001 C CNN "Done"
	1    5350 2750
	0    1    1    0   
$EndComp
$Comp
L Device:CP_Small C39
U 1 1 5EC95EA4
P 5350 2600
F 0 "C39" V 5450 2850 50  0000 C CNN
F 1 "10u" V 5350 2900 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 5350 2600 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/AVX-TAJA106K016RNJ_C7171.pdf" H 5350 2600 50  0001 C CNN
F 4 "C7171" H 5350 2600 50  0001 C CNN "LCSC"
F 5 "15" V 5350 2600 50  0001 C CNN "Vbias"
F 6 "Decoupling" H 5350 2600 50  0001 C CNN "Function"
F 7 "Yes" H 5350 2600 50  0001 C CNN "Done"
	1    5350 2600
	0    -1   -1   0   
$EndComp
Connection ~ 5200 2750
Wire Wire Line
	5200 2750 5200 2800
Wire Wire Line
	5500 2600 5500 2750
Wire Wire Line
	5450 2600 5500 2600
Wire Wire Line
	5450 2750 5500 2750
Wire Wire Line
	5250 2750 5200 2750
Wire Wire Line
	5200 2450 5200 2600
Wire Wire Line
	5200 2600 5250 2600
Connection ~ 5200 2600
Wire Wire Line
	5200 2600 5200 2750
$Comp
L Device:C_Small C42
U 1 1 5EC9BF61
P 5350 4750
F 0 "C42" V 5300 4550 50  0000 C CNN
F 1 "0.1u" V 5400 4550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5350 4750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 5350 4750 50  0001 C CNN
F 4 "C14663" H 5350 4750 50  0001 C CNN "LCSC"
F 5 "15" V 5350 4750 50  0001 C CNN "Vbias"
F 6 "Decoupling" H 5350 4750 50  0001 C CNN "Function"
F 7 "Yes" H 5350 4750 50  0001 C CNN "Done"
	1    5350 4750
	0    1    1    0   
$EndComp
$Comp
L Device:CP_Small C41
U 1 1 5EC9BF6B
P 5350 4600
F 0 "C41" V 5450 4850 50  0000 C CNN
F 1 "10u" V 5350 4900 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 5350 4600 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/AVX-TAJA106K016RNJ_C7171.pdf" H 5350 4600 50  0001 C CNN
F 4 "C7171" H 5350 4600 50  0001 C CNN "LCSC"
F 5 "15" V 5350 4600 50  0001 C CNN "Vbias"
F 6 "Decoupling" H 5350 4600 50  0001 C CNN "Function"
F 7 "Yes" H 5350 4600 50  0001 C CNN "Done"
	1    5350 4600
	0    -1   -1   0   
$EndComp
Connection ~ 5200 4750
Wire Wire Line
	5200 4750 5200 4800
Wire Wire Line
	5500 4600 5500 4750
Wire Wire Line
	5450 4600 5500 4600
Wire Wire Line
	5450 4750 5500 4750
Wire Wire Line
	5250 4750 5200 4750
Wire Wire Line
	5200 4450 5200 4600
Wire Wire Line
	5200 4600 5250 4600
Connection ~ 5200 4600
Wire Wire Line
	5200 4600 5200 4750
Wire Wire Line
	5750 5100 5750 6000
Wire Wire Line
	5750 3100 5750 4000
$Comp
L Device:C_Small C35
U 1 1 5ECAA82E
P 5050 3450
F 0 "C35" V 5200 3600 50  0000 C CNN
F 1 "0.1u" V 5100 3600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5050 3450 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 5050 3450 50  0001 C CNN
F 4 "C14663" H 5050 3450 50  0001 C CNN "LCSC"
F 5 "15" V 5050 3450 50  0001 C CNN "Vbias"
F 6 "Decoupling" H 5050 3450 50  0001 C CNN "Function"
F 7 "Yes" H 5050 3450 50  0001 C CNN "Done"
	1    5050 3450
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP_Small C36
U 1 1 5ECAA838
P 5050 3600
F 0 "C36" V 5150 3600 50  0000 C CNN
F 1 "10u" V 5250 3600 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 5050 3600 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/AVX-TAJA106K016RNJ_C7171.pdf" H 5050 3600 50  0001 C CNN
F 4 "C7171" H 5050 3600 50  0001 C CNN "LCSC"
F 5 "15" V 5050 3600 50  0001 C CNN "Vbias"
F 6 "Decoupling" H 5050 3600 50  0001 C CNN "Function"
F 7 "Yes" H 5050 3600 50  0001 C CNN "Done"
	1    5050 3600
	0    -1   1    0   
$EndComp
Connection ~ 5200 3450
Wire Wire Line
	5200 3450 5200 3400
Wire Wire Line
	4900 3600 4900 3450
Wire Wire Line
	4950 3600 4900 3600
Wire Wire Line
	4950 3450 4900 3450
Wire Wire Line
	5150 3450 5200 3450
Wire Wire Line
	5200 3750 5200 3600
Wire Wire Line
	5200 3600 5150 3600
Connection ~ 5200 3600
Wire Wire Line
	5200 3600 5200 3550
$Comp
L Device:C_Small C37
U 1 1 5ECBA7A4
P 5050 5450
F 0 "C37" V 5200 5600 50  0000 C CNN
F 1 "0.1u" V 5100 5600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5050 5450 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 5050 5450 50  0001 C CNN
F 4 "C14663" H 5050 5450 50  0001 C CNN "LCSC"
F 5 "15" V 5050 5450 50  0001 C CNN "Vbias"
F 6 "Decoupling" H 5050 5450 50  0001 C CNN "Function"
F 7 "Yes" H 5050 5450 50  0001 C CNN "Done"
	1    5050 5450
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP_Small C38
U 1 1 5ECBA7AE
P 5050 5600
F 0 "C38" V 5150 5600 50  0000 C CNN
F 1 "10u" V 5250 5600 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 5050 5600 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/AVX-TAJA106K016RNJ_C7171.pdf" H 5050 5600 50  0001 C CNN
F 4 "C7171" H 5050 5600 50  0001 C CNN "LCSC"
F 5 "15" V 5050 5600 50  0001 C CNN "Vbias"
F 6 "Decoupling" H 5050 5600 50  0001 C CNN "Function"
F 7 "Yes" H 5050 5600 50  0001 C CNN "Done"
	1    5050 5600
	0    -1   1    0   
$EndComp
Connection ~ 5200 5450
Wire Wire Line
	5200 5450 5200 5400
Wire Wire Line
	4900 5600 4900 5450
Wire Wire Line
	4950 5600 4900 5600
Wire Wire Line
	4950 5450 4900 5450
Wire Wire Line
	5150 5450 5200 5450
Wire Wire Line
	5200 5750 5200 5600
Wire Wire Line
	5200 5600 5150 5600
Connection ~ 5200 5600
Wire Wire Line
	5200 5600 5200 5550
Wire Wire Line
	5300 5400 5300 5550
Wire Wire Line
	5300 5550 5200 5550
Connection ~ 5200 5550
Wire Wire Line
	5200 5550 5200 5450
Wire Wire Line
	5300 3400 5300 3550
Wire Wire Line
	5300 3550 5200 3550
Connection ~ 5200 3550
Wire Wire Line
	5200 3550 5200 3450
Text Notes 9150 1300 0    50   ~ 0
OPA1612 quiescent current 4.5 mA\nLME49600 quiescent current 13.2 mA\nConsider cans being driven at 1.23 V_RMS, stereo:\n16 ohm => 154 mA @ 20 V.\n62 ohm like the K701s => 40 mA @ 20 V\n\nTotal current, both channels\n16 ohm: 190 mA @ 20 V\n8 ohm: 343 mA @ 30 V
Connection ~ 5750 5100
Connection ~ 5750 3100
Text HLabel 6000 5100 2    50   Output ~ 0
ROUT
Text HLabel 6000 3100 2    50   Output ~ 0
LOUT
Connection ~ 3950 6000
Connection ~ 3950 4000
$Comp
L Device:R R14
U 1 1 5ED2BE16
P 3700 4000
F 0 "R14" V 3493 4000 50  0000 C CNN
F 1 "Open" V 3584 4000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3630 4000 50  0001 C CNN
F 3 "" H 3700 4000 50  0001 C CNN
F 4 "Yes" V 3700 4000 50  0001 C CNN "Signal"
F 5 "" H 3700 4000 50  0001 C CNN "DigiKey"
F 6 "Yes" H 3700 4000 50  0001 C CNN "Done"
	1    3700 4000
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 5ED2C3CF
P 4350 4000
F 0 "R16" V 4143 4000 50  0000 C CNN
F 1 "0" V 4234 4000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4280 4000 50  0001 C CNN
F 3 "" H 4350 4000 50  0001 C CNN
F 4 "Yes" V 4350 4000 50  0001 C CNN "Signal"
F 5 "" H 4350 4000 50  0001 C CNN "DigiKey"
F 6 "Yes" H 4350 4000 50  0001 C CNN "Done"
	1    4350 4000
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 5ED2CE5E
P 4350 6000
F 0 "R17" V 4143 6000 50  0000 C CNN
F 1 "0" V 4234 6000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4280 6000 50  0001 C CNN
F 3 "" H 4350 6000 50  0001 C CNN
F 4 "Yes" V 4350 6000 50  0001 C CNN "Signal"
F 5 "" H 4350 6000 50  0001 C CNN "DigiKey"
F 6 "Yes" H 4350 6000 50  0001 C CNN "Done"
	1    4350 6000
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 5ED2DA9F
P 3700 6000
F 0 "R15" V 3493 6000 50  0000 C CNN
F 1 "Open" V 3584 6000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3630 6000 50  0001 C CNN
F 3 "" H 3700 6000 50  0001 C CNN
F 4 "Yes" V 3700 6000 50  0001 C CNN "Signal"
F 5 "" H 3700 6000 50  0001 C CNN "DigiKey"
F 6 "Yes" H 3700 6000 50  0001 C CNN "Done"
	1    3700 6000
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 4000 3950 4000
Wire Wire Line
	3950 4000 4200 4000
Wire Wire Line
	4500 4000 5750 4000
Wire Wire Line
	3850 6000 3950 6000
Wire Wire Line
	3950 6000 4200 6000
Wire Wire Line
	4500 6000 5750 6000
$Comp
L Device:R R12
U 1 1 5ED747C1
P 3500 3250
F 0 "R12" V 3293 3250 50  0000 C CNN
F 1 "4.7k" V 3384 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3430 3250 50  0001 C CNN
F 3 "" H 3500 3250 50  0001 C CNN
F 4 "Yes" V 3500 3250 50  0001 C CNN "Signal"
F 5 "RG16P4.7KBCT-ND" H 3500 3250 50  0001 C CNN "DigiKey"
F 6 "Yes" H 3500 3250 50  0001 C CNN "Done"
	1    3500 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3300 3000 3500 3000
Wire Wire Line
	3500 3100 3500 3000
Connection ~ 3500 3000
Wire Wire Line
	3500 3000 4000 3000
Wire Wire Line
	3500 5100 3500 5000
Wire Wire Line
	3500 5000 4000 5000
Wire Wire Line
	3000 5000 3100 5000
Text Notes 550  3800 0    50   ~ 0
Note potential offset voltage of up \nto 1.2 mV due to 4.7 k resistor.\nAdding compensatory 4.7 k in feedback\nloop leads to high noise.
$Comp
L Device:C_Small C29
U 1 1 5EDA31C4
P 3200 3000
F 0 "C29" V 2971 3000 50  0000 C CNN
F 1 "2.2u" V 3062 3000 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L18.0mm_W11.0mm_P15.00mm_FKS3_FKP3" H 3200 3000 50  0001 C CNN
F 3 "https://katalog.we-online.de/pbs/datasheet/890443325010CS.pdf" H 3200 3000 50  0001 C CNN
F 4 "732-11840-ND" H 3200 3000 50  0001 C CNN "DigiKey"
F 5 "Coupling" V 3200 3000 50  0001 C CNN "Function"
F 6 "Yes" H 3200 3000 50  0001 C CNN "Done"
	1    3200 3000
	0    1    1    0   
$EndComp
Connection ~ 3500 5000
Wire Wire Line
	3300 5000 3500 5000
$Comp
L Device:R R13
U 1 1 5EDAC893
P 3500 5250
F 0 "R13" V 3293 5250 50  0000 C CNN
F 1 "4.7k" V 3384 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3430 5250 50  0001 C CNN
F 3 "" H 3500 5250 50  0001 C CNN
F 4 "Yes" V 3500 5250 50  0001 C CNN "Signal"
F 5 "RG16P4.7KBCT-ND" H 3500 5250 50  0001 C CNN "DigiKey"
F 6 "Yes" H 3500 5250 50  0001 C CNN "Done"
	1    3500 5250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3950 5200 3950 6000
Wire Wire Line
	3950 3200 3950 4000
Wire Wire Line
	5850 5100 6000 5100
Wire Wire Line
	5750 5100 5850 5100
Connection ~ 5850 5100
$Comp
L Connector:TestPoint TP3
U 1 1 5ECB40D4
P 5850 5100
F 0 "TP3" H 5908 5218 50  0000 L CNN
F 1 "TestPoint" H 5908 5127 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D3.0mm_Drill1.5mm" H 6050 5100 50  0001 C CNN
F 3 "~" H 6050 5100 50  0001 C CNN
F 4 "Yes" H 5850 5100 50  0001 C CNN "Done"
	1    5850 5100
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5ECB4945
P 5850 4350
F 0 "TP2" H 5908 4468 50  0000 L CNN
F 1 "TestPoint" H 5908 4377 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D3.0mm_Drill1.5mm" H 6050 4350 50  0001 C CNN
F 3 "~" H 6050 4350 50  0001 C CNN
F 4 "Yes" H 5850 4350 50  0001 C CNN "Done"
	1    5850 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3100 6000 3100
Wire Wire Line
	5750 3100 5850 3100
Connection ~ 5850 3100
$Comp
L Connector:TestPoint TP1
U 1 1 5ECB35D5
P 5850 3100
F 0 "TP1" H 5908 3218 50  0000 L CNN
F 1 "TestPoint" H 5908 3127 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D3.0mm_Drill1.5mm" H 6050 3100 50  0001 C CNN
F 3 "~" H 6050 3100 50  0001 C CNN
F 4 "Yes" H 5850 3100 50  0001 C CNN "Done"
	1    5850 3100
	1    0    0    -1  
$EndComp
Text GLabel 5200 2450 2    50   Input ~ 0
+10V_AMP
Text GLabel 4000 1250 0    50   Input ~ 0
+10V_AMP
Text GLabel 5200 4450 2    50   Input ~ 0
+10V_AMP
Text GLabel 5200 3750 2    50   Input ~ 0
-10V_AMP
Text GLabel 5200 5750 2    50   Input ~ 0
-10V_AMP
Text GLabel 4000 2250 0    50   Input ~ 0
-10V_AMP
$Comp
L Device:C_Small C31
U 1 1 5EDFABAA
P 3200 2650
F 0 "C31" V 2971 2650 50  0000 C CNN
F 1 "2.2u" V 3062 2650 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L18.0mm_W11.0mm_P15.00mm_FKS3_FKP3" H 3200 2650 50  0001 C CNN
F 3 "https://katalog.we-online.de/pbs/datasheet/890443325010CS.pdf" H 3200 2650 50  0001 C CNN
F 4 "732-11840-ND" H 3200 2650 50  0001 C CNN "DigiKey"
F 5 "Coupling" V 3200 2650 50  0001 C CNN "Function"
F 6 "Yes" H 3200 2650 50  0001 C CNN "Done"
	1    3200 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 2650 3100 3000
Connection ~ 3100 3000
Wire Wire Line
	3300 2650 3300 3000
Connection ~ 3300 3000
$Comp
L Device:C_Small C96
U 1 1 5EDFFBDF
P 3200 5000
F 0 "C96" V 2971 5000 50  0000 C CNN
F 1 "2.2u" V 3062 5000 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L18.0mm_W11.0mm_P15.00mm_FKS3_FKP3" H 3200 5000 50  0001 C CNN
F 3 "https://katalog.we-online.de/pbs/datasheet/890443325010CS.pdf" H 3200 5000 50  0001 C CNN
F 4 "732-11840-ND" H 3200 5000 50  0001 C CNN "DigiKey"
F 5 "Coupling" V 3200 5000 50  0001 C CNN "Function"
F 6 "Yes" H 3200 5000 50  0001 C CNN "Done"
	1    3200 5000
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C95
U 1 1 5EDFFBEC
P 3200 4650
F 0 "C95" V 2971 4650 50  0000 C CNN
F 1 "2.2u" V 3062 4650 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L18.0mm_W11.0mm_P15.00mm_FKS3_FKP3" H 3200 4650 50  0001 C CNN
F 3 "https://katalog.we-online.de/pbs/datasheet/890443325010CS.pdf" H 3200 4650 50  0001 C CNN
F 4 "732-11840-ND" H 3200 4650 50  0001 C CNN "DigiKey"
F 5 "Coupling" V 3200 4650 50  0001 C CNN "Function"
F 6 "Yes" H 3200 4650 50  0001 C CNN "Done"
	1    3200 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 4650 3100 5000
Connection ~ 3100 5000
Wire Wire Line
	3300 4650 3300 5000
Connection ~ 3300 5000
Wire Wire Line
	3500 3400 3500 3500
Wire Wire Line
	3500 5400 3500 5500
Wire Wire Line
	5500 2750 5500 2850
Connection ~ 5500 2750
Wire Wire Line
	4900 3750 4900 3600
Connection ~ 4900 3600
Wire Wire Line
	5500 4750 5500 4850
Connection ~ 5500 4750
Wire Wire Line
	4900 5600 4900 5700
Connection ~ 4900 5600
Wire Wire Line
	3500 4000 3550 4000
Wire Wire Line
	3500 6000 3550 6000
Text GLabel 4400 2150 2    50   Input ~ 0
GND_AMP
Text GLabel 4400 1350 2    50   Input ~ 0
GND_AMP
Text GLabel 4900 3750 0    50   Input ~ 0
GND_AMP
Text GLabel 4900 5700 0    50   Input ~ 0
GND_AMP
Text GLabel 5500 4850 2    50   Input ~ 0
GND_AMP
Text GLabel 3500 3500 0    50   Input ~ 0
GND_AMP
Text GLabel 3500 4000 0    50   Input ~ 0
GND_AMP
Text GLabel 3500 5500 0    50   Input ~ 0
GND_AMP
Text GLabel 3500 6000 0    50   Input ~ 0
GND_AMP
Text GLabel 5850 4350 2    50   Input ~ 0
GND_AMP
Text GLabel 5500 2850 2    50   Input ~ 0
GND_AMP
$EndSCHEMATC
