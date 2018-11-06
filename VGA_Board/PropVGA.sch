EESchema Schematic File Version 4
LIBS:PropVGA-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "ZDS VGA"
Date "2018-10-12"
Rev "0.9"
Comp "Z80 NE"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PropIO-V2-rescue:C C?
U 1 1 4B29B5C7
P 9000 10000
AR Path="/23D9D84B29B5C7" Ref="C?"  Part="1" 
AR Path="/394433324B29B5C7" Ref="C?"  Part="1" 
AR Path="/23D6B44B29B5C7" Ref="C?"  Part="1" 
AR Path="/4B29B5C7" Ref="C15"  Part="1" 
AR Path="/94B29B5C7" Ref="C?"  Part="1" 
AR Path="/FFFFFFF04B29B5C7" Ref="C?"  Part="1" 
AR Path="/23D9304B29B5C7" Ref="C?"  Part="1" 
AR Path="/3FEEF1A94B29B5C7" Ref="C?"  Part="1" 
AR Path="/6FE901F74B29B5C7" Ref="C?"  Part="1" 
AR Path="/3D7E00004B29B5C7" Ref="C?"  Part="1" 
AR Path="/5AD7153D4B29B5C7" Ref="C?"  Part="1" 
AR Path="/A4B29B5C7" Ref="C?"  Part="1" 
AR Path="/3D8EA0004B29B5C7" Ref="C?"  Part="1" 
AR Path="/2600004B29B5C7" Ref="C?"  Part="1" 
AR Path="/14B29B5C7" Ref="C?"  Part="1" 
AR Path="/4026BBE74B29B5C7" Ref="C?"  Part="1" 
AR Path="/23D8D44B29B5C7" Ref="C?"  Part="1" 
AR Path="/3FEFFFFF4B29B5C7" Ref="C?"  Part="1" 
AR Path="/40263BE74B29B5C7" Ref="C?"  Part="1" 
AR Path="/DCBAABCD4B29B5C7" Ref="C?"  Part="1" 
AR Path="/23CC704B29B5C7" Ref="C?"  Part="1" 
AR Path="/402988B44B29B5C7" Ref="C?"  Part="1" 
AR Path="/4029D5814B29B5C7" Ref="C?"  Part="1" 
AR Path="/24B29B5C7" Ref="C?"  Part="1" 
AR Path="/23BC884B29B5C7" Ref="C?"  Part="1" 
F 0 "C15" H 9050 10100 50  0000 L CNN
F 1 "0.1uF" H 9050 9900 50  0000 L CNN
F 2 "C2" H 9000 10000 60  0001 C CNN
F 3 "" H 9000 10000 60  0001 C CNN
	1    9000 10000
	1    0    0    -1  
$EndComp
Text Notes 14650 4350 0    60   ~ 0
SPARES
$Comp
L PropIO-V2-rescue:GND #PWR?
U 1 1 4B296446
P 4050 8650
AR Path="/23D9B04B296446" Ref="#PWR?"  Part="1" 
AR Path="/394433324B296446" Ref="#PWR?"  Part="1" 
AR Path="/4B296446" Ref="#PWR06"  Part="1" 
AR Path="/94B296446" Ref="#PWR?"  Part="1" 
AR Path="/25E4B296446" Ref="#PWR?"  Part="1" 
AR Path="/FFFFFFF04B296446" Ref="#PWR?"  Part="1" 
AR Path="/304B296446" Ref="#PWR?"  Part="1" 
AR Path="/5AD7153D4B296446" Ref="#PWR?"  Part="1" 
AR Path="/A4B296446" Ref="#PWR?"  Part="1" 
AR Path="/14B296446" Ref="#PWR?"  Part="1" 
AR Path="/23C6384B296446" Ref="#PWR?"  Part="1" 
AR Path="/DCBAABCD4B296446" Ref="#PWR?"  Part="1" 
AR Path="/755D912A4B296446" Ref="#PWR?"  Part="1" 
AR Path="/A84B296446" Ref="#PWR?"  Part="1" 
AR Path="/23D9304B296446" Ref="#PWR?"  Part="1" 
AR Path="/402488B44B296446" Ref="#PWR?"  Part="1" 
AR Path="/3FEFFFFF4B296446" Ref="#PWR?"  Part="1" 
AR Path="/23D8D44B296446" Ref="#PWR?"  Part="1" 
AR Path="/5AD73C004B296446" Ref="#PWR?"  Part="1" 
AR Path="/3D8EA0004B296446" Ref="#PWR?"  Part="1" 
AR Path="/3D7E00004B296446" Ref="#PWR?"  Part="1" 
AR Path="/3D6CC0004B296446" Ref="#PWR?"  Part="1" 
AR Path="/3FE90E564B296446" Ref="#PWR?"  Part="1" 
AR Path="/402708B44B296446" Ref="#PWR?"  Part="1" 
AR Path="/3FEEF1A94B296446" Ref="#PWR?"  Part="1" 
AR Path="/2600004B296446" Ref="#PWR?"  Part="1" 
AR Path="/4026BBE74B296446" Ref="#PWR?"  Part="1" 
AR Path="/23C7004B296446" Ref="#PWR?"  Part="1" 
AR Path="/40263BE74B296446" Ref="#PWR?"  Part="1" 
AR Path="/23CC704B296446" Ref="#PWR?"  Part="1" 
AR Path="/6FE901F74B296446" Ref="#PWR?"  Part="1" 
AR Path="/402988B44B296446" Ref="#PWR?"  Part="1" 
AR Path="/4029D5814B296446" Ref="#PWR?"  Part="1" 
AR Path="/23BC884B296446" Ref="#PWR?"  Part="1" 
F 0 "#PWR06" H 4050 8650 30  0001 C CNN
F 1 "GND" H 4050 8580 30  0001 C CNN
F 2 "" H 4050 8650 60  0001 C CNN
F 3 "" H 4050 8650 60  0001 C CNN
	1    4050 8650
	1    0    0    -1  
$EndComp
Text Label 4900 7150 0    60   ~ 0
A7
Text Label 4900 7250 0    60   ~ 0
A6
Text Label 4900 7450 0    60   ~ 0
A4
Text Label 4900 7350 0    60   ~ 0
A5
Text Label 4900 7550 0    60   ~ 0
A3
Text Label 10050 6950 0    60   ~ 0
B_/WAIT
NoConn ~ 11200 8850
NoConn ~ 11200 8650
NoConn ~ 11200 8450
$Comp
L PropIO-V2-rescue:CP U?
U 1 1 4B28688C
P 8300 10000
AR Path="/6FF405304B28688C" Ref="U?"  Part="0" 
AR Path="/23D1104B28688C" Ref="U?"  Part="0" 
AR Path="/314433324B28688C" Ref="U?"  Part="0" 
AR Path="/23D6544B28688C" Ref="U?"  Part="0" 
AR Path="/18103EA4B28688C" Ref="U?"  Part="1" 
AR Path="/4B28688C" Ref="U8"  Part="1" 
AR Path="/5AD7153D4B28688C" Ref="U?"  Part="1" 
AR Path="/94B28688C" Ref="U?"  Part="1" 
AR Path="/FFFFFFF04B28688C" Ref="U?"  Part="1" 
AR Path="/6FF0DD404B28688C" Ref="U?"  Part="1" 
AR Path="/14B28688C" Ref="U?"  Part="1" 
AR Path="/3A0A0BB74B28688C" Ref="U?"  Part="1" 
AR Path="/A84B28688C" Ref="U?"  Part="1" 
AR Path="/304B28688C" Ref="U?"  Part="1" 
AR Path="/A4B28688C" Ref="U?"  Part="1" 
AR Path="/DCBAABCD4B28688C" Ref="U?"  Part="1" 
AR Path="/755D912A4B28688C" Ref="U?"  Part="1" 
AR Path="/23D9304B28688C" Ref="U?"  Part="1" 
AR Path="/402488B44B28688C" Ref="U?"  Part="1" 
AR Path="/3FEFFFFF4B28688C" Ref="U?"  Part="1" 
AR Path="/23D8D44B28688C" Ref="U?"  Part="1" 
AR Path="/5AD73C004B28688C" Ref="U?"  Part="1" 
AR Path="/3D8EA0004B28688C" Ref="U?"  Part="1" 
AR Path="/3D7E00004B28688C" Ref="U?"  Part="1" 
AR Path="/3D6CC0004B28688C" Ref="U?"  Part="1" 
AR Path="/3FE90E564B28688C" Ref="U?"  Part="1" 
AR Path="/402708B44B28688C" Ref="U?"  Part="1" 
AR Path="/3FEEF1A94B28688C" Ref="U?"  Part="1" 
AR Path="/2600004B28688C" Ref="U?"  Part="1" 
AR Path="/4026BBE74B28688C" Ref="U?"  Part="1" 
AR Path="/40263BE74B28688C" Ref="U?"  Part="1" 
AR Path="/23CC704B28688C" Ref="U?"  Part="1" 
AR Path="/6FE901F74B28688C" Ref="U?"  Part="1" 
AR Path="/402988B44B28688C" Ref="U?"  Part="1" 
AR Path="/4029D5814B28688C" Ref="U?"  Part="1" 
AR Path="/24B28688C" Ref="U?"  Part="1" 
AR Path="/23BC884B28688C" Ref="U?"  Part="1" 
F 0 "U8" H 8350 10100 50  0000 L CNN
F 1 "220uF" H 8350 9900 50  0000 L CNN
F 2 "C1V8" H 8300 10000 60  0001 C CNN
F 3 "" H 8300 10000 60  0001 C CNN
	1    8300 10000
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:GND #PWR?
U 1 1 4B286858
P 7900 10250
AR Path="/69698AFC4B286858" Ref="#PWR?"  Part="1" 
AR Path="/393639364B286858" Ref="#PWR?"  Part="1" 
AR Path="/4B286858" Ref="#PWR019"  Part="1" 
AR Path="/5AD7153D4B286858" Ref="#PWR?"  Part="1" 
AR Path="/94B286858" Ref="#PWR?"  Part="1" 
AR Path="/FFFFFFF04B286858" Ref="#PWR?"  Part="1" 
AR Path="/25E4B286858" Ref="#PWR?"  Part="1" 
AR Path="/6FF0DD404B286858" Ref="#PWR?"  Part="1" 
AR Path="/14B286858" Ref="#PWR?"  Part="1" 
AR Path="/363030314B286858" Ref="#PWR?"  Part="1" 
AR Path="/314B286858" Ref="#PWR?"  Part="1" 
AR Path="/A84B286858" Ref="#PWR?"  Part="1" 
AR Path="/304B286858" Ref="#PWR?"  Part="1" 
AR Path="/A4B286858" Ref="#PWR?"  Part="1" 
AR Path="/23C6384B286858" Ref="#PWR?"  Part="1" 
AR Path="/DCBAABCD4B286858" Ref="#PWR?"  Part="1" 
AR Path="/755D912A4B286858" Ref="#PWR?"  Part="1" 
AR Path="/23D9304B286858" Ref="#PWR?"  Part="1" 
AR Path="/402488B44B286858" Ref="#PWR?"  Part="1" 
AR Path="/3FEFFFFF4B286858" Ref="#PWR?"  Part="1" 
AR Path="/23D8D44B286858" Ref="#PWR?"  Part="1" 
AR Path="/5AD73C004B286858" Ref="#PWR?"  Part="1" 
AR Path="/3D8EA0004B286858" Ref="#PWR?"  Part="1" 
AR Path="/3D7E00004B286858" Ref="#PWR?"  Part="1" 
AR Path="/3D6CC0004B286858" Ref="#PWR?"  Part="1" 
AR Path="/3FE90E564B286858" Ref="#PWR?"  Part="1" 
AR Path="/402708B44B286858" Ref="#PWR?"  Part="1" 
AR Path="/3FEEF1A94B286858" Ref="#PWR?"  Part="1" 
AR Path="/2600004B286858" Ref="#PWR?"  Part="1" 
AR Path="/4026BBE74B286858" Ref="#PWR?"  Part="1" 
AR Path="/23C7004B286858" Ref="#PWR?"  Part="1" 
AR Path="/40263BE74B286858" Ref="#PWR?"  Part="1" 
AR Path="/23CC704B286858" Ref="#PWR?"  Part="1" 
AR Path="/6FE901F74B286858" Ref="#PWR?"  Part="1" 
AR Path="/402988B44B286858" Ref="#PWR?"  Part="1" 
AR Path="/4029D5814B286858" Ref="#PWR?"  Part="1" 
AR Path="/23BC884B286858" Ref="#PWR?"  Part="1" 
F 0 "#PWR019" H 7900 10250 30  0001 C CNN
F 1 "GND" H 7900 10180 30  0001 C CNN
F 2 "" H 7900 10250 60  0001 C CNN
F 3 "" H 7900 10250 60  0001 C CNN
	1    7900 10250
	1    0    0    -1  
$EndComp
Text Label 10200 9800 0    60   ~ 0
VDD
$Comp
L PropIO-V2-rescue:LM7805 U?
U 1 1 4B2867EB
P 7900 9850
AR Path="/69698AFC4B2867EB" Ref="U?"  Part="1" 
AR Path="/393639364B2867EB" Ref="U?"  Part="1" 
AR Path="/4B2867EB" Ref="U7"  Part="1" 
AR Path="/18103EA4B2867EB" Ref="U?"  Part="1" 
AR Path="/23D1104B2867EB" Ref="U?"  Part="1" 
AR Path="/5AD7153D4B2867EB" Ref="U?"  Part="1" 
AR Path="/94B2867EB" Ref="U?"  Part="1" 
AR Path="/FFFFFFF04B2867EB" Ref="U?"  Part="1" 
AR Path="/7E4710884B2867EB" Ref="U?"  Part="1" 
AR Path="/A84B2867EB" Ref="U?"  Part="1" 
AR Path="/304B2867EB" Ref="U?"  Part="1" 
AR Path="/A4B2867EB" Ref="U?"  Part="1" 
AR Path="/14B2867EB" Ref="U?"  Part="1" 
AR Path="/DCBAABCD4B2867EB" Ref="U?"  Part="1" 
AR Path="/755D912A4B2867EB" Ref="U?"  Part="1" 
AR Path="/23D9304B2867EB" Ref="U?"  Part="1" 
AR Path="/402488B44B2867EB" Ref="U?"  Part="1" 
AR Path="/3FEFFFFF4B2867EB" Ref="U?"  Part="1" 
AR Path="/23D8D44B2867EB" Ref="U?"  Part="1" 
AR Path="/5AD73C004B2867EB" Ref="U?"  Part="1" 
AR Path="/3D8EA0004B2867EB" Ref="U?"  Part="1" 
AR Path="/3D7E00004B2867EB" Ref="U?"  Part="1" 
AR Path="/3D6CC0004B2867EB" Ref="U?"  Part="1" 
AR Path="/3FE90E564B2867EB" Ref="U?"  Part="1" 
AR Path="/402708B44B2867EB" Ref="U?"  Part="1" 
AR Path="/3FEEF1A94B2867EB" Ref="U?"  Part="1" 
AR Path="/2600004B2867EB" Ref="U?"  Part="1" 
AR Path="/4026BBE74B2867EB" Ref="U?"  Part="1" 
AR Path="/40263BE74B2867EB" Ref="U?"  Part="1" 
AR Path="/23CC704B2867EB" Ref="U?"  Part="1" 
AR Path="/6FE901F74B2867EB" Ref="U?"  Part="1" 
AR Path="/402988B44B2867EB" Ref="U?"  Part="1" 
AR Path="/4029D5814B2867EB" Ref="U?"  Part="1" 
AR Path="/24B2867EB" Ref="U?"  Part="1" 
AR Path="/23BC884B2867EB" Ref="U?"  Part="1" 
F 0 "U7" H 8050 9654 60  0000 C CNN
F 1 "LM3940" H 7900 10050 60  0000 C CNN
F 2 "LM78XX" H 7900 9850 60  0001 C CNN
F 3 "" H 7900 9850 60  0001 C CNN
	1    7900 9850
	1    0    0    -1  
$EndComp
Text Label 4400 4850 0    60   ~ 0
/RD
Text Label 4450 4450 0    60   ~ 0
A0
Text Label 4450 4750 0    60   ~ 0
A1
$Comp
L PropIO-V2-rescue:C C?
U 1 1 4B285DBF
P 8650 10000
AR Path="/23D9D84B285DBF" Ref="C?"  Part="1" 
AR Path="/394433324B285DBF" Ref="C?"  Part="1" 
AR Path="/4B285DBF" Ref="C14"  Part="1" 
AR Path="/2300314B285DBF" Ref="C?"  Part="1" 
AR Path="/6FF400314B285DBF" Ref="C?"  Part="1" 
AR Path="/6FF405304B285DBF" Ref="C?"  Part="1" 
AR Path="/5AD7153D4B285DBF" Ref="C?"  Part="1" 
AR Path="/94B285DBF" Ref="C?"  Part="1" 
AR Path="/FFFFFFF04B285DBF" Ref="C?"  Part="1" 
AR Path="/23D6B04B285DBF" Ref="C?"  Part="1" 
AR Path="/23D1104B285DBF" Ref="C?"  Part="1" 
AR Path="/6FF0DD404B285DBF" Ref="C?"  Part="1" 
AR Path="/14B285DBF" Ref="C?"  Part="1" 
AR Path="/18103EA4B285DBF" Ref="C?"  Part="1" 
AR Path="/A84B285DBF" Ref="C?"  Part="1" 
AR Path="/304B285DBF" Ref="C?"  Part="1" 
AR Path="/A4B285DBF" Ref="C?"  Part="1" 
AR Path="/DCBAABCD4B285DBF" Ref="C?"  Part="1" 
AR Path="/755D912A4B285DBF" Ref="C?"  Part="1" 
AR Path="/23D9304B285DBF" Ref="C?"  Part="1" 
AR Path="/402488B44B285DBF" Ref="C?"  Part="1" 
AR Path="/3FEFFFFF4B285DBF" Ref="C?"  Part="1" 
AR Path="/23D8D44B285DBF" Ref="C?"  Part="1" 
AR Path="/5AD73C004B285DBF" Ref="C?"  Part="1" 
AR Path="/3D8EA0004B285DBF" Ref="C?"  Part="1" 
AR Path="/3D7E00004B285DBF" Ref="C?"  Part="1" 
AR Path="/3D6CC0004B285DBF" Ref="C?"  Part="1" 
AR Path="/3FE90E564B285DBF" Ref="C?"  Part="1" 
AR Path="/402708B44B285DBF" Ref="C?"  Part="1" 
AR Path="/3FEEF1A94B285DBF" Ref="C?"  Part="1" 
AR Path="/2600004B285DBF" Ref="C?"  Part="1" 
AR Path="/4026BBE74B285DBF" Ref="C?"  Part="1" 
AR Path="/23D6544B285DBF" Ref="C?"  Part="1" 
AR Path="/7A0AC64B285DBF" Ref="C?"  Part="1" 
AR Path="/40263BE74B285DBF" Ref="C?"  Part="1" 
AR Path="/23CC704B285DBF" Ref="C?"  Part="1" 
AR Path="/6FE901F74B285DBF" Ref="C?"  Part="1" 
AR Path="/402988B44B285DBF" Ref="C?"  Part="1" 
AR Path="/4029D5814B285DBF" Ref="C?"  Part="1" 
AR Path="/24B285DBF" Ref="C?"  Part="1" 
AR Path="/23BC884B285DBF" Ref="C?"  Part="1" 
F 0 "C14" H 8700 10100 50  0000 L CNN
F 1 "0.1uF" H 8700 9900 50  0000 L CNN
F 2 "C2" H 8650 10000 60  0001 C CNN
F 3 "" H 8650 10000 60  0001 C CNN
	1    8650 10000
	1    0    0    -1  
$EndComp
Text Label 4850 7750 0    60   ~ 0
/IORQ
Text Label 10800 8850 0    60   ~ 0
/BUSAK
Text Label 10800 8750 0    60   ~ 0
/M1
Text Label 10800 8650 0    60   ~ 0
/HALT
Text Label 10800 8950 0    60   ~ 0
/RFSH
Text Label 8850 8850 0    60   ~ 0
B_/BUSAK
Text Label 8850 8750 0    60   ~ 0
B_/M1
Text Label 8850 8650 0    60   ~ 0
B_/HALT
Text Label 8850 8950 0    60   ~ 0
B_/RFSH
Text Label 6650 9150 0    60   ~ 0
/RD
Text Label 8400 8950 0    60   ~ 0
D7
Text Label 8400 8850 0    60   ~ 0
D6
Text Label 8400 8750 0    60   ~ 0
D5
Text Label 8400 8650 0    60   ~ 0
D4
Text Label 8400 8550 0    60   ~ 0
D3
Text Label 8400 8450 0    60   ~ 0
D2
Text Label 8400 8350 0    60   ~ 0
D1
Text Label 8400 8250 0    60   ~ 0
D0
Text Label 6650 8950 0    60   ~ 0
B_D7
Text Label 6650 8850 0    60   ~ 0
B_D6
Text Label 6650 8750 0    60   ~ 0
B_D5
Text Label 6650 8650 0    60   ~ 0
B_D4
Text Label 6650 8550 0    60   ~ 0
B_D3
Text Label 6650 8450 0    60   ~ 0
B_D2
Text Label 6650 8350 0    60   ~ 0
B_D1
Text Label 6650 8250 0    60   ~ 0
B_D0
Text Label 10800 8550 0    60   ~ 0
/RD
Text Label 10800 8450 0    60   ~ 0
/WR
Text Label 10800 8350 0    60   ~ 0
/IORQ
Text Label 10800 8250 0    60   ~ 0
/MREQ
Text Label 8850 8550 0    60   ~ 0
B_/RD
Text Label 8850 8450 0    60   ~ 0
B_/WR
Text Label 8850 8350 0    60   ~ 0
B_/IORQ
Text Label 8850 8250 0    60   ~ 0
B_/MREQ
$Comp
L PropIO-V2-rescue:74LS241 U?
U 1 1 48EAC36F
P 10050 8750
AR Path="/5AD7153D48EAC36F" Ref="U?"  Part="1" 
AR Path="/23C23448EAC36F" Ref="U?"  Part="1" 
AR Path="/48EAC36F" Ref="U10"  Part="1" 
AR Path="/948EAC36F" Ref="U?"  Part="1" 
AR Path="/FFFFFFF048EAC36F" Ref="U?"  Part="1" 
AR Path="/18103EA48EAC36F" Ref="U?"  Part="1" 
AR Path="/148EAC36F" Ref="U?"  Part="1" 
AR Path="/4538343148EAC36F" Ref="U?"  Part="1" 
AR Path="/6FF0DD4048EAC36F" Ref="U?"  Part="1" 
AR Path="/A848EAC36F" Ref="U?"  Part="1" 
AR Path="/3048EAC36F" Ref="U?"  Part="1" 
AR Path="/A48EAC36F" Ref="U?"  Part="1" 
AR Path="/DCBAABCD48EAC36F" Ref="U?"  Part="1" 
AR Path="/755D912A48EAC36F" Ref="U?"  Part="1" 
AR Path="/402488B448EAC36F" Ref="U?"  Part="1" 
AR Path="/3FEFFFFF48EAC36F" Ref="U?"  Part="1" 
AR Path="/23D8D448EAC36F" Ref="U?"  Part="1" 
AR Path="/5AD73C0048EAC36F" Ref="U?"  Part="1" 
AR Path="/3D8EA00048EAC36F" Ref="U?"  Part="1" 
AR Path="/3D7E000048EAC36F" Ref="U?"  Part="1" 
AR Path="/3D6CC00048EAC36F" Ref="U?"  Part="1" 
AR Path="/3FE90E5648EAC36F" Ref="U?"  Part="1" 
AR Path="/402708B448EAC36F" Ref="U?"  Part="1" 
AR Path="/3FEEF1A948EAC36F" Ref="U?"  Part="1" 
AR Path="/26000048EAC36F" Ref="U?"  Part="1" 
AR Path="/4026BBE748EAC36F" Ref="U?"  Part="1" 
AR Path="/40263BE748EAC36F" Ref="U?"  Part="1" 
AR Path="/23CC7048EAC36F" Ref="U?"  Part="1" 
AR Path="/402988B448EAC36F" Ref="U?"  Part="1" 
AR Path="/4029D58148EAC36F" Ref="U?"  Part="1" 
AR Path="/248EAC36F" Ref="U?"  Part="1" 
AR Path="/23BC8848EAC36F" Ref="U?"  Part="1" 
F 0 "U10" H 10050 9350 60  0000 C BNN
F 1 "74LS241" H 10050 8100 60  0000 C CNN
F 2 "DIP20_300" H 10050 8750 60  0001 C CNN
F 3 "" H 10050 8750 60  0001 C CNN
	1    10050 8750
	1    0    0    -1  
$EndComp
Text Label 13150 8950 0    60   ~ 0
A7
Text Label 13150 8850 0    60   ~ 0
A6
Text Label 13150 8750 0    60   ~ 0
A5
Text Label 13150 8650 0    60   ~ 0
A4
Text Label 13150 8550 0    60   ~ 0
A3
Text Label 13150 8450 0    60   ~ 0
A2
Text Label 13150 8350 0    60   ~ 0
A1
Text Label 13150 8250 0    60   ~ 0
A0
Text Label 11450 8950 0    60   ~ 0
B_A7
Text Label 11450 8850 0    60   ~ 0
B_A6
Text Label 11450 8750 0    60   ~ 0
B_A5
Text Label 11450 8650 0    60   ~ 0
B_A4
Text Label 11450 8550 0    60   ~ 0
B_A3
Text Label 11450 8450 0    60   ~ 0
B_A2
Text Label 11450 8350 0    60   ~ 0
B_A1
Text Label 11450 8250 0    60   ~ 0
B_A0
$Comp
L PropIO-V2-rescue:74LS241 U?
U 1 1 48EAC36E
P 12400 8750
AR Path="/5AD7153D48EAC36E" Ref="U?"  Part="1" 
AR Path="/23C23448EAC36E" Ref="U?"  Part="1" 
AR Path="/48EAC36E" Ref="U12"  Part="1" 
AR Path="/948EAC36E" Ref="U?"  Part="1" 
AR Path="/FFFFFFF048EAC36E" Ref="U?"  Part="1" 
AR Path="/23D11048EAC36E" Ref="U?"  Part="1" 
AR Path="/6FF0DD4048EAC36E" Ref="U?"  Part="1" 
AR Path="/148EAC36E" Ref="U?"  Part="1" 
AR Path="/A848EAC36E" Ref="U?"  Part="1" 
AR Path="/3048EAC36E" Ref="U?"  Part="1" 
AR Path="/A48EAC36E" Ref="U?"  Part="1" 
AR Path="/DCBAABCD48EAC36E" Ref="U?"  Part="1" 
AR Path="/755D912A48EAC36E" Ref="U?"  Part="1" 
AR Path="/402488B448EAC36E" Ref="U?"  Part="1" 
AR Path="/3FEFFFFF48EAC36E" Ref="U?"  Part="1" 
AR Path="/23D8D448EAC36E" Ref="U?"  Part="1" 
AR Path="/5AD73C0048EAC36E" Ref="U?"  Part="1" 
AR Path="/3D8EA00048EAC36E" Ref="U?"  Part="1" 
AR Path="/3D7E000048EAC36E" Ref="U?"  Part="1" 
AR Path="/3D6CC00048EAC36E" Ref="U?"  Part="1" 
AR Path="/3FE90E5648EAC36E" Ref="U?"  Part="1" 
AR Path="/402708B448EAC36E" Ref="U?"  Part="1" 
AR Path="/3FEEF1A948EAC36E" Ref="U?"  Part="1" 
AR Path="/26000048EAC36E" Ref="U?"  Part="1" 
AR Path="/4026BBE748EAC36E" Ref="U?"  Part="1" 
AR Path="/40263BE748EAC36E" Ref="U?"  Part="1" 
AR Path="/23CC7048EAC36E" Ref="U?"  Part="1" 
AR Path="/402988B448EAC36E" Ref="U?"  Part="1" 
AR Path="/4029D58148EAC36E" Ref="U?"  Part="1" 
AR Path="/248EAC36E" Ref="U?"  Part="1" 
AR Path="/23BC8848EAC36E" Ref="U?"  Part="1" 
F 0 "U12" H 12400 9350 60  0000 C BNN
F 1 "74LS241" H 12400 8100 60  0000 C CNN
F 2 "DIP20_300" H 12400 8750 60  0001 C CNN
F 3 "" H 12400 8750 60  0001 C CNN
	1    12400 8750
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:74LS245 U?
U 1 1 48EAC369
P 7650 8750
AR Path="/5AD7153D48EAC369" Ref="U?"  Part="1" 
AR Path="/23C23448EAC369" Ref="U?"  Part="1" 
AR Path="/A48EAC369" Ref="U?"  Part="1" 
AR Path="/48EAC369" Ref="U6"  Part="1" 
AR Path="/948EAC369" Ref="U?"  Part="1" 
AR Path="/FFFFFFF048EAC369" Ref="U?"  Part="1" 
AR Path="/18103EA48EAC369" Ref="U?"  Part="1" 
AR Path="/23D11048EAC369" Ref="U?"  Part="1" 
AR Path="/6FF0DD4048EAC369" Ref="U?"  Part="1" 
AR Path="/148EAC369" Ref="U?"  Part="1" 
AR Path="/3A0A0BB748EAC369" Ref="U?"  Part="1" 
AR Path="/A848EAC369" Ref="U?"  Part="1" 
AR Path="/3048EAC369" Ref="U?"  Part="1" 
AR Path="/DCBAABCD48EAC369" Ref="U?"  Part="1" 
AR Path="/755D912A48EAC369" Ref="U?"  Part="1" 
AR Path="/402488B448EAC369" Ref="U?"  Part="1" 
AR Path="/3FEFFFFF48EAC369" Ref="U?"  Part="1" 
AR Path="/23D8D448EAC369" Ref="U?"  Part="1" 
AR Path="/5AD73C0048EAC369" Ref="U?"  Part="1" 
AR Path="/3D8EA00048EAC369" Ref="U?"  Part="1" 
AR Path="/3D7E000048EAC369" Ref="U?"  Part="1" 
AR Path="/3D6CC00048EAC369" Ref="U?"  Part="1" 
AR Path="/3FE90E5648EAC369" Ref="U?"  Part="1" 
AR Path="/402708B448EAC369" Ref="U?"  Part="1" 
AR Path="/3FEEF1A948EAC369" Ref="U?"  Part="1" 
AR Path="/26000048EAC369" Ref="U?"  Part="1" 
AR Path="/4026BBE748EAC369" Ref="U?"  Part="1" 
AR Path="/40263BE748EAC369" Ref="U?"  Part="1" 
AR Path="/23CC7048EAC369" Ref="U?"  Part="1" 
AR Path="/402988B448EAC369" Ref="U?"  Part="1" 
AR Path="/4029D58148EAC369" Ref="U?"  Part="1" 
AR Path="/23BC8848EAC369" Ref="U?"  Part="1" 
F 0 "U6" H 7550 9350 60  0000 L BNN
F 1 "74LS245" H 7650 8100 60  0000 C CNN
F 2 "DIP20_300" H 7650 8750 60  0001 C CNN
F 3 "" H 7650 8750 60  0001 C CNN
	1    7650 8750
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:CP C?
U 1 1 48EAC367
P 4800 10000
AR Path="/5AD7153D48EAC367" Ref="C?"  Part="1" 
AR Path="/23C23448EAC367" Ref="C?"  Part="1" 
AR Path="/48EAC367" Ref="C2"  Part="1" 
AR Path="/948EAC367" Ref="C?"  Part="1" 
AR Path="/FFFFFFF048EAC367" Ref="C?"  Part="1" 
AR Path="/23D11048EAC367" Ref="C?"  Part="1" 
AR Path="/6FF0DD4048EAC367" Ref="C?"  Part="1" 
AR Path="/148EAC367" Ref="C?"  Part="1" 
AR Path="/A848EAC367" Ref="C?"  Part="1" 
AR Path="/3048EAC367" Ref="C?"  Part="1" 
AR Path="/A48EAC367" Ref="C?"  Part="1" 
AR Path="/DCBAABCD48EAC367" Ref="C?"  Part="1" 
AR Path="/755D912A48EAC367" Ref="C?"  Part="1" 
AR Path="/402488B448EAC367" Ref="C?"  Part="1" 
AR Path="/3FEFFFFF48EAC367" Ref="C?"  Part="1" 
AR Path="/23D8D448EAC367" Ref="C?"  Part="1" 
AR Path="/5AD73C0048EAC367" Ref="C?"  Part="1" 
AR Path="/3D8EA00048EAC367" Ref="C?"  Part="1" 
AR Path="/3D7E000048EAC367" Ref="C?"  Part="1" 
AR Path="/3D6CC00048EAC367" Ref="C?"  Part="1" 
AR Path="/3FE90E5648EAC367" Ref="C?"  Part="1" 
AR Path="/402708B448EAC367" Ref="C?"  Part="1" 
AR Path="/3FEEF1A948EAC367" Ref="C?"  Part="1" 
AR Path="/26000048EAC367" Ref="C?"  Part="1" 
AR Path="/4026BBE748EAC367" Ref="C?"  Part="1" 
AR Path="/40263BE748EAC367" Ref="C?"  Part="1" 
AR Path="/23CC7048EAC367" Ref="C?"  Part="1" 
AR Path="/402988B448EAC367" Ref="C?"  Part="1" 
AR Path="/4029D58148EAC367" Ref="C?"  Part="1" 
AR Path="/248EAC367" Ref="C?"  Part="1" 
AR Path="/23BC8848EAC367" Ref="C?"  Part="1" 
F 0 "C2" H 4850 10100 50  0000 L CNN
F 1 "22uF" H 4850 9900 50  0000 L CNN
F 2 "C1V7" H 4800 10000 60  0001 C CNN
F 3 "" H 4800 10000 60  0001 C CNN
	1    4800 10000
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:C C?
U 1 1 48EAC360
P 5700 10000
AR Path="/5AD7153D48EAC360" Ref="C?"  Part="1" 
AR Path="/23C23448EAC360" Ref="C?"  Part="1" 
AR Path="/48EAC360" Ref="C5"  Part="1" 
AR Path="/948EAC360" Ref="C?"  Part="1" 
AR Path="/FFFFFFF048EAC360" Ref="C?"  Part="1" 
AR Path="/6FF0DD4048EAC360" Ref="C?"  Part="1" 
AR Path="/148EAC360" Ref="C?"  Part="1" 
AR Path="/A848EAC360" Ref="C?"  Part="1" 
AR Path="/3048EAC360" Ref="C?"  Part="1" 
AR Path="/A48EAC360" Ref="C?"  Part="1" 
AR Path="/DCBAABCD48EAC360" Ref="C?"  Part="1" 
AR Path="/755D912A48EAC360" Ref="C?"  Part="1" 
AR Path="/402488B448EAC360" Ref="C?"  Part="1" 
AR Path="/3FEFFFFF48EAC360" Ref="C?"  Part="1" 
AR Path="/23D8D448EAC360" Ref="C?"  Part="1" 
AR Path="/5AD73C0048EAC360" Ref="C?"  Part="1" 
AR Path="/3D8EA00048EAC360" Ref="C?"  Part="1" 
AR Path="/3D7E000048EAC360" Ref="C?"  Part="1" 
AR Path="/3D6CC00048EAC360" Ref="C?"  Part="1" 
AR Path="/3FE90E5648EAC360" Ref="C?"  Part="1" 
AR Path="/402708B448EAC360" Ref="C?"  Part="1" 
AR Path="/3FEEF1A948EAC360" Ref="C?"  Part="1" 
AR Path="/26000048EAC360" Ref="C?"  Part="1" 
AR Path="/4026BBE748EAC360" Ref="C?"  Part="1" 
AR Path="/40263BE748EAC360" Ref="C?"  Part="1" 
AR Path="/23CC7048EAC360" Ref="C?"  Part="1" 
AR Path="/402988B448EAC360" Ref="C?"  Part="1" 
AR Path="/4029D58148EAC360" Ref="C?"  Part="1" 
AR Path="/248EAC360" Ref="C?"  Part="1" 
AR Path="/23BC8848EAC360" Ref="C?"  Part="1" 
F 0 "C5" H 5750 10100 50  0000 L CNN
F 1 "0.1uF" H 5750 9900 50  0000 L CNN
F 2 "C2" H 5700 10000 60  0001 C CNN
F 3 "" H 5700 10000 60  0001 C CNN
	1    5700 10000
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:C C?
U 1 1 48EAC35F
P 5400 10000
AR Path="/5AD7153D48EAC35F" Ref="C?"  Part="1" 
AR Path="/23C23448EAC35F" Ref="C?"  Part="1" 
AR Path="/48EAC35F" Ref="C4"  Part="1" 
AR Path="/948EAC35F" Ref="C?"  Part="1" 
AR Path="/FFFFFFF048EAC35F" Ref="C?"  Part="1" 
AR Path="/6FF0DD4048EAC35F" Ref="C?"  Part="1" 
AR Path="/148EAC35F" Ref="C?"  Part="1" 
AR Path="/A848EAC35F" Ref="C?"  Part="1" 
AR Path="/3048EAC35F" Ref="C?"  Part="1" 
AR Path="/A48EAC35F" Ref="C?"  Part="1" 
AR Path="/DCBAABCD48EAC35F" Ref="C?"  Part="1" 
AR Path="/755D912A48EAC35F" Ref="C?"  Part="1" 
AR Path="/402488B448EAC35F" Ref="C?"  Part="1" 
AR Path="/3FEFFFFF48EAC35F" Ref="C?"  Part="1" 
AR Path="/23D8D448EAC35F" Ref="C?"  Part="1" 
AR Path="/5AD73C0048EAC35F" Ref="C?"  Part="1" 
AR Path="/3D8EA00048EAC35F" Ref="C?"  Part="1" 
AR Path="/3D7E000048EAC35F" Ref="C?"  Part="1" 
AR Path="/3D6CC00048EAC35F" Ref="C?"  Part="1" 
AR Path="/3FE90E5648EAC35F" Ref="C?"  Part="1" 
AR Path="/402708B448EAC35F" Ref="C?"  Part="1" 
AR Path="/3FEEF1A948EAC35F" Ref="C?"  Part="1" 
AR Path="/26000048EAC35F" Ref="C?"  Part="1" 
AR Path="/4026BBE748EAC35F" Ref="C?"  Part="1" 
AR Path="/40263BE748EAC35F" Ref="C?"  Part="1" 
AR Path="/23CC7048EAC35F" Ref="C?"  Part="1" 
AR Path="/402988B448EAC35F" Ref="C?"  Part="1" 
AR Path="/4029D58148EAC35F" Ref="C?"  Part="1" 
AR Path="/248EAC35F" Ref="C?"  Part="1" 
AR Path="/23BC8848EAC35F" Ref="C?"  Part="1" 
F 0 "C4" H 5450 10100 50  0000 L CNN
F 1 "0.1uF" H 5450 9900 50  0000 L CNN
F 2 "C2" H 5400 10000 60  0001 C CNN
F 3 "" H 5400 10000 60  0001 C CNN
F 4 "U1 Bypass" H 5400 10000 60  0001 C CNN "Notes"
	1    5400 10000
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:C C?
U 1 1 48EAC35E
P 6900 10000
AR Path="/5AD7153D48EAC35E" Ref="C?"  Part="1" 
AR Path="/23C23448EAC35E" Ref="C?"  Part="1" 
AR Path="/48EAC35E" Ref="C10"  Part="1" 
AR Path="/948EAC35E" Ref="C?"  Part="1" 
AR Path="/FFFFFFF048EAC35E" Ref="C?"  Part="1" 
AR Path="/18103EA48EAC35E" Ref="C?"  Part="1" 
AR Path="/148EAC35E" Ref="C?"  Part="1" 
AR Path="/4538343148EAC35E" Ref="C?"  Part="1" 
AR Path="/6FF0DD4048EAC35E" Ref="C?"  Part="1" 
AR Path="/A848EAC35E" Ref="C?"  Part="1" 
AR Path="/3048EAC35E" Ref="C?"  Part="1" 
AR Path="/A48EAC35E" Ref="C?"  Part="1" 
AR Path="/DCBAABCD48EAC35E" Ref="C?"  Part="1" 
AR Path="/755D912A48EAC35E" Ref="C?"  Part="1" 
AR Path="/402488B448EAC35E" Ref="C?"  Part="1" 
AR Path="/3FEFFFFF48EAC35E" Ref="C?"  Part="1" 
AR Path="/23D8D448EAC35E" Ref="C?"  Part="1" 
AR Path="/5AD73C0048EAC35E" Ref="C?"  Part="1" 
AR Path="/3D8EA00048EAC35E" Ref="C?"  Part="1" 
AR Path="/3D7E000048EAC35E" Ref="C?"  Part="1" 
AR Path="/3D6CC00048EAC35E" Ref="C?"  Part="1" 
AR Path="/3FE90E5648EAC35E" Ref="C?"  Part="1" 
AR Path="/402708B448EAC35E" Ref="C?"  Part="1" 
AR Path="/3FEEF1A948EAC35E" Ref="C?"  Part="1" 
AR Path="/26000048EAC35E" Ref="C?"  Part="1" 
AR Path="/4026BBE748EAC35E" Ref="C?"  Part="1" 
AR Path="/40263BE748EAC35E" Ref="C?"  Part="1" 
AR Path="/23CC7048EAC35E" Ref="C?"  Part="1" 
AR Path="/402988B448EAC35E" Ref="C?"  Part="1" 
AR Path="/4029D58148EAC35E" Ref="C?"  Part="1" 
AR Path="/248EAC35E" Ref="C?"  Part="1" 
AR Path="/23BC8848EAC35E" Ref="C?"  Part="1" 
F 0 "C10" H 6950 10100 50  0000 L CNN
F 1 "0.1uF" H 6950 9900 50  0000 L CNN
F 2 "C2" H 6900 10000 60  0001 C CNN
F 3 "" H 6900 10000 60  0001 C CNN
	1    6900 10000
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:C C?
U 1 1 48EAC35D
P 6600 10000
AR Path="/5AD7153D48EAC35D" Ref="C?"  Part="1" 
AR Path="/23C23448EAC35D" Ref="C?"  Part="1" 
AR Path="/48EAC35D" Ref="C8"  Part="1" 
AR Path="/948EAC35D" Ref="C?"  Part="1" 
AR Path="/FFFFFFF048EAC35D" Ref="C?"  Part="1" 
AR Path="/23D11048EAC35D" Ref="C?"  Part="1" 
AR Path="/6FF0DD4048EAC35D" Ref="C?"  Part="1" 
AR Path="/148EAC35D" Ref="C?"  Part="1" 
AR Path="/A848EAC35D" Ref="C?"  Part="1" 
AR Path="/3048EAC35D" Ref="C?"  Part="1" 
AR Path="/A48EAC35D" Ref="C?"  Part="1" 
AR Path="/DCBAABCD48EAC35D" Ref="C?"  Part="1" 
AR Path="/755D912A48EAC35D" Ref="C?"  Part="1" 
AR Path="/402488B448EAC35D" Ref="C?"  Part="1" 
AR Path="/3FEFFFFF48EAC35D" Ref="C?"  Part="1" 
AR Path="/23D8D448EAC35D" Ref="C?"  Part="1" 
AR Path="/5AD73C0048EAC35D" Ref="C?"  Part="1" 
AR Path="/3D8EA00048EAC35D" Ref="C?"  Part="1" 
AR Path="/3D7E000048EAC35D" Ref="C?"  Part="1" 
AR Path="/3D6CC00048EAC35D" Ref="C?"  Part="1" 
AR Path="/3FE90E5648EAC35D" Ref="C?"  Part="1" 
AR Path="/402708B448EAC35D" Ref="C?"  Part="1" 
AR Path="/3FEEF1A948EAC35D" Ref="C?"  Part="1" 
AR Path="/26000048EAC35D" Ref="C?"  Part="1" 
AR Path="/4026BBE748EAC35D" Ref="C?"  Part="1" 
AR Path="/40263BE748EAC35D" Ref="C?"  Part="1" 
AR Path="/23CC7048EAC35D" Ref="C?"  Part="1" 
AR Path="/402988B448EAC35D" Ref="C?"  Part="1" 
AR Path="/4029D58148EAC35D" Ref="C?"  Part="1" 
AR Path="/248EAC35D" Ref="C?"  Part="1" 
AR Path="/23BC8848EAC35D" Ref="C?"  Part="1" 
F 0 "C8" H 6650 10100 50  0000 L CNN
F 1 "0.1uF" H 6650 9900 50  0000 L CNN
F 2 "C2" H 6600 10000 60  0001 C CNN
F 3 "" H 6600 10000 60  0001 C CNN
	1    6600 10000
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:C C?
U 1 1 48EAC35C
P 6300 10000
AR Path="/5AD7153D48EAC35C" Ref="C?"  Part="1" 
AR Path="/23C23448EAC35C" Ref="C?"  Part="1" 
AR Path="/48EAC35C" Ref="C7"  Part="1" 
AR Path="/948EAC35C" Ref="C?"  Part="1" 
AR Path="/18103EA48EAC35C" Ref="C?"  Part="1" 
AR Path="/23D11048EAC35C" Ref="C?"  Part="1" 
AR Path="/FFFFFFF048EAC35C" Ref="C?"  Part="1" 
AR Path="/6FF0DD4048EAC35C" Ref="C?"  Part="1" 
AR Path="/148EAC35C" Ref="C?"  Part="1" 
AR Path="/A848EAC35C" Ref="C?"  Part="1" 
AR Path="/3048EAC35C" Ref="C?"  Part="1" 
AR Path="/A48EAC35C" Ref="C?"  Part="1" 
AR Path="/DCBAABCD48EAC35C" Ref="C?"  Part="1" 
AR Path="/755D912A48EAC35C" Ref="C?"  Part="1" 
AR Path="/402488B448EAC35C" Ref="C?"  Part="1" 
AR Path="/3FEFFFFF48EAC35C" Ref="C?"  Part="1" 
AR Path="/23D8D448EAC35C" Ref="C?"  Part="1" 
AR Path="/5AD73C0048EAC35C" Ref="C?"  Part="1" 
AR Path="/3D8EA00048EAC35C" Ref="C?"  Part="1" 
AR Path="/3D7E000048EAC35C" Ref="C?"  Part="1" 
AR Path="/3D6CC00048EAC35C" Ref="C?"  Part="1" 
AR Path="/3FE90E5648EAC35C" Ref="C?"  Part="1" 
AR Path="/402708B448EAC35C" Ref="C?"  Part="1" 
AR Path="/3FEEF1A948EAC35C" Ref="C?"  Part="1" 
AR Path="/26000048EAC35C" Ref="C?"  Part="1" 
AR Path="/4026BBE748EAC35C" Ref="C?"  Part="1" 
AR Path="/40263BE748EAC35C" Ref="C?"  Part="1" 
AR Path="/23CC7048EAC35C" Ref="C?"  Part="1" 
AR Path="/402988B448EAC35C" Ref="C?"  Part="1" 
AR Path="/4029D58148EAC35C" Ref="C?"  Part="1" 
AR Path="/248EAC35C" Ref="C?"  Part="1" 
AR Path="/23BC8848EAC35C" Ref="C?"  Part="1" 
F 0 "C7" H 6350 10100 50  0000 L CNN
F 1 "0.1uF" H 6350 9900 50  0000 L CNN
F 2 "C2" H 6300 10000 60  0001 C CNN
F 3 "" H 6300 10000 60  0001 C CNN
	1    6300 10000
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:C C?
U 1 1 48EAC35B
P 6000 10000
AR Path="/5AD7153D48EAC35B" Ref="C?"  Part="1" 
AR Path="/23C23448EAC35B" Ref="C?"  Part="1" 
AR Path="/48EAC35B" Ref="C6"  Part="1" 
AR Path="/948EAC35B" Ref="C?"  Part="1" 
AR Path="/23D0D848EAC35B" Ref="C?"  Part="1" 
AR Path="/3044333248EAC35B" Ref="C?"  Part="1" 
AR Path="/FFFFFFF048EAC35B" Ref="C?"  Part="1" 
AR Path="/6FF0DD4048EAC35B" Ref="C?"  Part="1" 
AR Path="/148EAC35B" Ref="C?"  Part="1" 
AR Path="/A848EAC35B" Ref="C?"  Part="1" 
AR Path="/3048EAC35B" Ref="C?"  Part="1" 
AR Path="/A48EAC35B" Ref="C?"  Part="1" 
AR Path="/DCBAABCD48EAC35B" Ref="C?"  Part="1" 
AR Path="/755D912A48EAC35B" Ref="C?"  Part="1" 
AR Path="/402488B448EAC35B" Ref="C?"  Part="1" 
AR Path="/3FEFFFFF48EAC35B" Ref="C?"  Part="1" 
AR Path="/23D8D448EAC35B" Ref="C?"  Part="1" 
AR Path="/5AD73C0048EAC35B" Ref="C?"  Part="1" 
AR Path="/3D8EA00048EAC35B" Ref="C?"  Part="1" 
AR Path="/3D7E000048EAC35B" Ref="C?"  Part="1" 
AR Path="/3D6CC00048EAC35B" Ref="C?"  Part="1" 
AR Path="/3FE90E5648EAC35B" Ref="C?"  Part="1" 
AR Path="/402708B448EAC35B" Ref="C?"  Part="1" 
AR Path="/3FEEF1A948EAC35B" Ref="C?"  Part="1" 
AR Path="/26000048EAC35B" Ref="C?"  Part="1" 
AR Path="/4026BBE748EAC35B" Ref="C?"  Part="1" 
AR Path="/40263BE748EAC35B" Ref="C?"  Part="1" 
AR Path="/23CC7048EAC35B" Ref="C?"  Part="1" 
AR Path="/402988B448EAC35B" Ref="C?"  Part="1" 
AR Path="/4029D58148EAC35B" Ref="C?"  Part="1" 
AR Path="/248EAC35B" Ref="C?"  Part="1" 
AR Path="/23BC8848EAC35B" Ref="C?"  Part="1" 
F 0 "C6" H 6050 10100 50  0000 L CNN
F 1 "0.1uF" H 6050 9900 50  0000 L CNN
F 2 "C2" H 6000 10000 60  0001 C CNN
F 3 "" H 6000 10000 60  0001 C CNN
	1    6000 10000
	1    0    0    -1  
$EndComp
Text Label 4050 10200 0    60   ~ 0
GND
Text Label 4050 9800 0    60   ~ 0
VCC
Text Notes 5850 9750 0    60   ~ 0
POWER
$Comp
L power:VCC #PWR023
U 1 1 524D95A4
P 8500 6300
F 0 "#PWR023" H 8500 6400 30  0001 C CNN
F 1 "VCC" H 8500 6400 30  0000 C CNN
F 2 "" H 8500 6300 60  0001 C CNN
F 3 "" H 8500 6300 60  0001 C CNN
	1    8500 6300
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:74LS04 U5
U 1 1 524DA604
P 7450 7150
F 0 "U5" H 7645 7265 60  0000 C CNN
F 1 "74LS04" H 7640 7025 60  0000 C CNN
F 2 "DIP14_300" H 7450 7150 60  0001 C CNN
F 3 "" H 7450 7150 60  0001 C CNN
	1    7450 7150
	1    0    0    -1  
$EndComp
Text Label 4400 4350 0    60   ~ 0
/CS
Text Label 6250 4400 0    60   ~ 0
CLR
Text Label 6650 9250 0    60   ~ 0
/CS
NoConn ~ 15450 6750
Text Label 4400 2600 0    60   ~ 0
D0
Text Label 4400 2700 0    60   ~ 0
D1
Text Label 4400 3000 0    60   ~ 0
D2
Text Label 4400 3100 0    60   ~ 0
D3
Text Label 4450 3450 0    60   ~ 0
D4
Text Label 4450 3550 0    60   ~ 0
D5
Text Label 4450 3850 0    60   ~ 0
D6
Text Label 4450 3950 0    60   ~ 0
D7
NoConn ~ 15450 7150
$Comp
L PropIO-V2-rescue:74LS74 U9
U 2 1 524DA5FE
P 14850 6950
F 0 "U9" H 15000 7250 60  0000 C CNN
F 1 "74LS74" H 15150 6600 60  0000 C CNN
F 2 "DIP14_300" H 14850 6950 60  0001 C CNN
F 3 "" H 14850 6950 60  0001 C CNN
	2    14850 6950
	1    0    0    -1  
$EndComp
NoConn ~ 14850 7500
NoConn ~ 14250 6950
NoConn ~ 11200 8250
NoConn ~ 11200 8950
NoConn ~ 6550 7600
NoConn ~ 14850 6400
NoConn ~ 14250 6750
Text Label 4900 7650 0    60   ~ 0
A2
$Comp
L PropIO-V2-rescue:CONN_6X2 P2
U 1 1 52563030
P 4450 8250
F 0 "P2" H 4450 8600 60  0000 C CNN
F 1 "BOARD_ID" V 4450 8250 60  0000 C CNN
F 2 "PIN_ARRAY_6X2" H 4450 8250 60  0001 C CNN
F 3 "" H 4450 8250 60  0000 C CNN
	1    4450 8250
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:GND #PWR010
U 1 1 5256351F
P 5050 8800
F 0 "#PWR010" H 5050 8800 30  0001 C CNN
F 1 "GND" H 5050 8730 30  0001 C CNN
F 2 "" H 5050 8800 60  0001 C CNN
F 3 "" H 5050 8800 60  0001 C CNN
	1    5050 8800
	1    0    0    -1  
$EndComp
Text Label 6600 7150 0    60   ~ 0
/CS
$Comp
L power:VDD #PWR022
U 1 1 525642B5
P 8300 9800
F 0 "#PWR022" H 8300 9900 30  0001 C CNN
F 1 "VDD" H 8300 9910 30  0000 C CNN
F 2 "" H 8300 9800 60  0000 C CNN
F 3 "" H 8300 9800 60  0000 C CNN
	1    8300 9800
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:74LS04 U5
U 3 1 5256CDEC
P 14250 4750
F 0 "U5" H 14445 4865 60  0000 C CNN
F 1 "74LS04" H 14440 4625 60  0000 C CNN
F 2 "DIP14_300" H 14250 4750 60  0001 C CNN
F 3 "" H 14250 4750 60  0000 C CNN
	3    14250 4750
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:74LS04 U5
U 4 1 5256CDF4
P 14250 5150
F 0 "U5" H 14445 5265 60  0000 C CNN
F 1 "74LS04" H 14440 5025 60  0000 C CNN
F 2 "DIP14_300" H 14250 5150 60  0001 C CNN
F 3 "" H 14250 5150 60  0000 C CNN
	4    14250 5150
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:74LS04 U5
U 5 1 5256CDFD
P 14250 5550
F 0 "U5" H 14445 5665 60  0000 C CNN
F 1 "74LS04" H 14440 5425 60  0000 C CNN
F 2 "DIP14_300" H 14250 5550 60  0001 C CNN
F 3 "" H 14250 5550 60  0000 C CNN
	5    14250 5550
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:74LS04 U5
U 6 1 5256CE08
P 14250 5950
F 0 "U5" H 14445 6065 60  0000 C CNN
F 1 "74LS04" H 14440 5825 60  0000 C CNN
F 2 "DIP14_300" H 14250 5950 60  0001 C CNN
F 3 "" H 14250 5950 60  0000 C CNN
	6    14250 5950
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:74LS06 U1
U 4 1 5256CEBF
P 15350 5150
F 0 "U1" H 15545 5265 60  0000 C CNN
F 1 "74LS06" H 15540 5025 60  0000 C CNN
F 2 "DIP14_300" H 15350 5150 60  0001 C CNN
F 3 "" H 15350 5150 60  0000 C CNN
	4    15350 5150
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:74LS06 U1
U 5 1 5256CEC6
P 15350 5550
F 0 "U1" H 15545 5665 60  0000 C CNN
F 1 "74LS06" H 15540 5425 60  0000 C CNN
F 2 "DIP14_300" H 15350 5550 60  0001 C CNN
F 3 "" H 15350 5550 60  0000 C CNN
	5    15350 5550
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:74LS06 U1
U 6 1 5256CECC
P 15350 5950
F 0 "U1" H 15545 6065 60  0000 C CNN
F 1 "74LS06" H 15540 5825 60  0000 C CNN
F 2 "DIP14_300" H 15350 5950 60  0001 C CNN
F 3 "" H 15350 5950 60  0000 C CNN
	6    15350 5950
	1    0    0    -1  
$EndComp
NoConn ~ 13800 4750
NoConn ~ 13800 5150
NoConn ~ 13800 5550
NoConn ~ 13800 5950
NoConn ~ 14700 4750
NoConn ~ 14700 5150
NoConn ~ 14700 5550
NoConn ~ 14700 5950
NoConn ~ 14900 5950
NoConn ~ 14900 5550
NoConn ~ 14900 5150
NoConn ~ 15800 5150
NoConn ~ 15800 5550
NoConn ~ 15800 5950
Text Label 10200 10200 0    60   ~ 0
VSS
Text Label 7350 7700 0    60   ~ 0
CLR
$Comp
L PropIO-V2-rescue:74LS06 U1
U 3 1 5256FDC4
P 9550 6950
F 0 "U1" H 9745 7065 60  0000 C CNN
F 1 "74LS06" H 9740 6825 60  0000 C CNN
F 2 "DIP14_300" H 9550 6950 60  0001 C CNN
F 3 "" H 9550 6950 60  0000 C CNN
	3    9550 6950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR024
U 1 1 5258104E
P 9150 9250
F 0 "#PWR024" H 9150 9350 30  0001 C CNN
F 1 "VCC" H 9150 9350 30  0000 C CNN
F 2 "" H 9150 9250 60  0000 C CNN
F 3 "" H 9150 9250 60  0000 C CNN
	1    9150 9250
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:GND #PWR025
U 1 1 52581067
P 9250 9300
F 0 "#PWR025" H 9250 9300 30  0001 C CNN
F 1 "GND" H 9250 9230 30  0001 C CNN
F 2 "" H 9250 9300 60  0000 C CNN
F 3 "" H 9250 9300 60  0000 C CNN
	1    9250 9300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR033
U 1 1 52581217
P 11500 9250
F 0 "#PWR033" H 11500 9350 30  0001 C CNN
F 1 "VCC" H 11500 9350 30  0000 C CNN
F 2 "" H 11500 9250 60  0000 C CNN
F 3 "" H 11500 9250 60  0000 C CNN
	1    11500 9250
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:GND #PWR034
U 1 1 5258121D
P 11600 9300
F 0 "#PWR034" H 11600 9300 30  0001 C CNN
F 1 "GND" H 11600 9230 30  0001 C CNN
F 2 "" H 11600 9300 60  0000 C CNN
F 3 "" H 11600 9300 60  0000 C CNN
	1    11600 9300
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:74LS74 U9
U 1 1 524D95AB
P 8500 7150
F 0 "U9" H 8650 7450 60  0000 C CNN
F 1 "74LS74" H 8800 6800 60  0000 C CNN
F 2 "DIP14_300" H 8500 7150 60  0001 C CNN
F 3 "" H 8500 7150 60  0001 C CNN
	1    8500 7150
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:74LS04 U5
U 2 1 525B7EBC
P 8050 7700
F 0 "U5" H 8245 7815 60  0000 C CNN
F 1 "74LS04" H 8240 7575 60  0000 C CNN
F 2 "DIP14_300" H 8050 7700 60  0001 C CNN
F 3 "~" H 8050 7700 60  0000 C CNN
	2    8050 7700
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:R R17
U 1 1 525CD905
P 11500 4950
F 0 "R17" V 11580 4950 50  0000 C CNN
F 1 "130" V 11500 4950 50  0000 C CNN
F 2 "R3" H 11500 4950 60  0001 C CNN
F 3 "" H 11500 4950 60  0001 C CNN
	1    11500 4950
	-1   0    0    1   
$EndComp
$Comp
L PropIO-V2-rescue:R R16
U 1 1 525CD90B
P 11300 4950
F 0 "R16" V 11380 4950 50  0000 C CNN
F 1 "130" V 11300 4950 50  0000 C CNN
F 2 "R3" H 11300 4950 60  0001 C CNN
F 3 "" H 11300 4950 60  0001 C CNN
	1    11300 4950
	-1   0    0    1   
$EndComp
$Comp
L PropIO-V2-rescue:R R15
U 1 1 525CD911
P 11100 4950
F 0 "R15" V 11180 4950 50  0000 C CNN
F 1 "130" V 11100 4950 50  0000 C CNN
F 2 "R3" H 11100 4950 60  0001 C CNN
F 3 "" H 11100 4950 60  0001 C CNN
	1    11100 4950
	-1   0    0    1   
$EndComp
Text Label 11300 6100 0    60   ~ 0
KBD_VCC
$Comp
L PropIO-V2-rescue:CP1 C22
U 1 1 525CD918
P 11900 1400
F 0 "C22" H 11950 1500 50  0000 L CNN
F 1 "0.1uF" H 11950 1300 50  0000 L CNN
F 2 "C2" H 11900 1400 60  0001 C CNN
F 3 "" H 11900 1400 60  0001 C CNN
	1    11900 1400
	0    1    1    0   
$EndComp
$Comp
L PropIO-V2-rescue:CP1 C21
U 1 1 525CD91E
P 11900 1100
F 0 "C21" H 11950 1200 50  0000 L CNN
F 1 "0.1uF" H 11950 1000 50  0000 L CNN
F 2 "C2" H 11900 1100 60  0001 C CNN
F 3 "" H 11900 1100 60  0001 C CNN
	1    11900 1100
	0    -1   -1   0   
$EndComp
$Comp
L PropIO-V2-rescue:CP1 C19
U 1 1 525CD924
P 9700 1400
F 0 "C19" H 9750 1500 50  0000 L CNN
F 1 "0.1uF" H 9750 1300 50  0000 L CNN
F 2 "C2" H 9700 1400 60  0001 C CNN
F 3 "" H 9700 1400 60  0001 C CNN
	1    9700 1400
	0    1    1    0   
$EndComp
$Comp
L PropIO-V2-rescue:CP1 C18
U 1 1 525CD92A
P 9700 1000
F 0 "C18" H 9750 1100 50  0000 L CNN
F 1 "0.1uF" H 9750 900 50  0000 L CNN
F 2 "C2" H 9700 1000 60  0001 C CNN
F 3 "" H 9700 1000 60  0001 C CNN
	1    9700 1000
	0    1    1    0   
$EndComp
$Comp
L PropIO-V2-rescue:FUSE F1
U 1 1 525CD930
P 10900 6100
F 0 "F1" H 11000 6150 40  0000 C CNN
F 1 "1.1A" H 10800 6050 40  0000 C CNN
F 2 "C2" H 10900 6100 60  0001 C CNN
F 3 "" H 10900 6100 60  0001 C CNN
	1    10900 6100
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:R R19
U 1 1 525CD936
P 11550 3600
F 0 "R19" V 11630 3600 50  0000 C CNN
F 1 "10K" V 11550 3600 50  0000 C CNN
F 2 "R3" H 11550 3600 60  0001 C CNN
F 3 "" H 11550 3600 60  0001 C CNN
	1    11550 3600
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR029
U 1 1 525CD93C
P 10550 6100
F 0 "#PWR029" H 10550 6200 30  0001 C CNN
F 1 "VCC" H 10550 6200 30  0000 C CNN
F 2 "" H 10550 6100 60  0001 C CNN
F 3 "" H 10550 6100 60  0001 C CNN
	1    10550 6100
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:CONN_4 P3
U 1 1 525CD942
P 6050 1650
F 0 "P3" V 6100 1650 50  0000 C CNN
F 1 "PROPPLUG" V 6000 1650 50  0000 C CNN
F 2 "PIN_ARRAY_4X1" H 6050 1650 60  0001 C CNN
F 3 "" H 6050 1650 60  0001 C CNN
	1    6050 1650
	0    1    -1   0   
$EndComp
$Comp
L PropIO-V2-rescue:R R5
U 1 1 525CD948
P 9750 2000
F 0 "R5" V 9830 2000 50  0000 C CNN
F 1 "1K" V 9750 2000 50  0000 C CNN
F 2 "R3" H 9750 2000 60  0001 C CNN
F 3 "" H 9750 2000 60  0001 C CNN
	1    9750 2000
	0    1    -1   0   
$EndComp
$Comp
L PropIO-V2-rescue:R R18
U 1 1 525CD94F
P 11550 3400
F 0 "R18" V 11630 3400 50  0000 C CNN
F 1 "10K" V 11550 3400 50  0000 C CNN
F 2 "R3" H 11550 3400 60  0001 C CNN
F 3 "" H 11550 3400 60  0001 C CNN
	1    11550 3400
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR011
U 1 1 525CD955
P 5300 6000
F 0 "#PWR011" H 5300 6100 30  0001 C CNN
F 1 "VCC" H 5300 6100 30  0000 C CNN
F 2 "" H 5300 6000 60  0001 C CNN
F 3 "" H 5300 6000 60  0001 C CNN
	1    5300 6000
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:R R1
U 1 1 525CD95B
P 5300 6250
F 0 "R1" V 5380 6250 50  0000 C CNN
F 1 "10K" V 5300 6250 50  0000 C CNN
F 2 "R3" H 5300 6250 60  0001 C CNN
F 3 "" H 5300 6250 60  0001 C CNN
	1    5300 6250
	-1   0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:74LS06 U1
U 2 1 525CD961
P 5750 6500
F 0 "U1" H 5945 6615 60  0000 C CNN
F 1 "74LS06" H 5940 6375 60  0000 C CNN
F 2 "DIP14_300" H 5750 6500 60  0001 C CNN
F 3 "" H 5750 6500 60  0001 C CNN
	2    5750 6500
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:74LS06 U1
U 1 1 525CD96D
P 4850 6500
F 0 "U1" H 5045 6615 60  0000 C CNN
F 1 "74LS06" H 5040 6375 60  0000 C CNN
F 2 "DIP14_300" H 4850 6500 60  0001 C CNN
F 3 "" H 4850 6500 60  0001 C CNN
	1    4850 6500
	1    0    0    -1  
$EndComp
Text Label 9300 2000 0    60   ~ 0
RX
Text Label 9300 1800 0    60   ~ 0
TX
$Comp
L power:VCC #PWR038
U 1 1 525CD97A
P 12200 1000
F 0 "#PWR038" H 12200 1100 30  0001 C CNN
F 1 "VCC" H 12200 1100 30  0000 C CNN
F 2 "" H 12200 1000 60  0001 C CNN
F 3 "" H 12200 1000 60  0001 C CNN
	1    12200 1000
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:GND #PWR039
U 1 1 525CD980
P 12200 1500
F 0 "#PWR039" H 12200 1500 30  0001 C CNN
F 1 "GND" H 12200 1430 30  0001 C CNN
F 2 "" H 12200 1500 60  0001 C CNN
F 3 "" H 12200 1500 60  0001 C CNN
	1    12200 1500
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:MAX232 U11
U 1 1 525CD98C
P 10900 1600
F 0 "U11" H 10900 1650 60  0000 C CNN
F 1 "MAX232A" H 10900 1550 60  0000 C CNN
F 2 "DIP16_300" H 10900 1600 60  0001 C CNN
F 3 "" H 10900 1600 60  0001 C CNN
	1    10900 1600
	1    0    0    -1  
$EndComp
Text Label 6500 4900 0    60   ~ 0
KBD_CLK
Text Label 6500 5000 0    60   ~ 0
KBD_DAT
$Comp
L PropIO-V2-rescue:C C9
U 1 1 525CD994
P 6900 5700
F 0 "C9" H 6950 5800 50  0000 L CNN
F 1 "0.1uF" H 6950 5600 50  0000 L CNN
F 2 "C2" H 6900 5700 60  0001 C CNN
F 3 "" H 6900 5700 60  0001 C CNN
	1    6900 5700
	-1   0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:R R2
U 1 1 525CD99A
P 6550 5400
F 0 "R2" V 6630 5400 50  0000 C CNN
F 1 "240" V 6550 5400 50  0000 C CNN
F 2 "R3" H 6550 5400 60  0001 C CNN
F 3 "" H 6550 5400 60  0001 C CNN
	1    6550 5400
	0    1    -1   0   
$EndComp
$Comp
L PropIO-V2-rescue:GND #PWR017
U 1 1 525CD9A0
P 6900 6100
F 0 "#PWR017" H 6900 6100 30  0001 C CNN
F 1 "GND" H 6900 6030 30  0001 C CNN
F 2 "" H 6900 6100 60  0001 C CNN
F 3 "" H 6900 6100 60  0001 C CNN
	1    6900 6100
	-1   0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:SPEAKER SP1
U 1 1 525CD9A6
P 7900 5700
F 0 "SP1" H 7800 5950 70  0000 C CNN
F 1 "SPEAKER" H 7800 5450 70  0000 C CNN
F 2 "Speaker_12mm" H 7900 5700 60  0001 C CNN
F 3 "" H 7900 5700 60  0001 C CNN
	1    7900 5700
	1    0    0    -1  
$EndComp
Text Label 3900 6500 0    60   ~ 0
~nCS~/DAT3
$Comp
L PropIO-V2-rescue:LED D1
U 1 1 525CD9B9
P 6400 6500
F 0 "D1" H 6400 6600 50  0000 C CNN
F 1 "SD" H 6400 6400 50  0000 C CNN
F 2 "LED_5mm" H 6400 6500 60  0001 C CNN
F 3 "" H 6400 6500 60  0001 C CNN
	1    6400 6500
	-1   0    0    1   
$EndComp
$Comp
L power:VDD #PWR032
U 1 1 525CD9BF
P 11100 3450
F 0 "#PWR032" H 11100 3550 30  0001 C CNN
F 1 "VDD" H 11100 3560 30  0000 C CNN
F 2 "" H 11100 3450 60  0001 C CNN
F 3 "" H 11100 3450 60  0001 C CNN
	1    11100 3450
	1    0    0    -1  
$EndComp
Text Label 12100 3600 0    60   ~ 0
DAT2
Text Label 12100 3400 0    60   ~ 0
nIRQ/DAT1
Text Label 12100 3000 0    60   ~ 0
DO/DAT0
Text Label 12100 3200 0    60   ~ 0
CLK
Text Label 12100 2800 0    60   ~ 0
DI/CMD
Text Label 12100 2600 0    60   ~ 0
~nCS~/DAT3
$Comp
L PropIO-V2-rescue:CP1 C11
U 1 1 525CD9D8
P 7200 5400
F 0 "C11" H 7250 5500 50  0000 L CNN
F 1 "10uF" H 7250 5300 50  0000 L CNN
F 2 "C1V5" H 7200 5400 60  0001 C CNN
F 3 "" H 7200 5400 60  0001 C CNN
	1    7200 5400
	0    -1   1    0   
$EndComp
$Comp
L power:VDD #PWR026
U 1 1 525CD9DE
P 9400 3500
F 0 "#PWR026" H 9400 3600 30  0001 C CNN
F 1 "VDD" H 9400 3610 30  0000 C CNN
F 2 "" H 9400 3500 60  0001 C CNN
F 3 "" H 9400 3500 60  0001 C CNN
	1    9400 3500
	1    0    0    -1  
$EndComp
NoConn ~ 12700 6400
NoConn ~ 12700 6000
$Comp
L PropIO-V2-rescue:GND #PWR040
U 1 1 525CD9E6
P 12600 6500
F 0 "#PWR040" H 12600 6500 30  0001 C CNN
F 1 "GND" H 12600 6430 30  0001 C CNN
F 2 "" H 12600 6500 60  0001 C CNN
F 3 "" H 12600 6500 60  0001 C CNN
	1    12600 6500
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:R R23
U 1 1 525CD9EC
P 12150 6300
F 0 "R23" V 12230 6300 50  0000 C CNN
F 1 "100" V 12150 6300 50  0000 C CNN
F 2 "R3" H 12150 6300 60  0001 C CNN
F 3 "" H 12150 6300 60  0001 C CNN
	1    12150 6300
	0    -1   -1   0   
$EndComp
$Comp
L PropIO-V2-rescue:R R22
U 1 1 525CD9F2
P 12150 5900
F 0 "R22" V 12230 5900 50  0000 C CNN
F 1 "100" V 12150 5900 50  0000 C CNN
F 2 "R3" H 12150 5900 60  0001 C CNN
F 3 "" H 12150 5900 60  0001 C CNN
	1    12150 5900
	0    -1   -1   0   
$EndComp
Text Label 11300 6300 0    60   ~ 0
KBD_CLK
Text Label 11300 5900 0    60   ~ 0
KBD_DAT
$Comp
L PropIO-V2-rescue:CONN_6 P5
U 1 1 525CD9FA
P 13050 6150
F 0 "P5" V 13000 6150 60  0000 C CNN
F 1 "KEYBOARD" V 13100 6150 60  0000 C CNN
F 2 "Conn_Mini_DIN_6pin" H 13050 6150 60  0001 C CNN
F 3 "" H 13050 6150 60  0001 C CNN
	1    13050 6150
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR021
U 1 1 525CDA00
P 8200 1300
F 0 "#PWR021" H 8200 1400 30  0001 C CNN
F 1 "VDD" H 8200 1410 30  0000 C CNN
F 2 "" H 8200 1300 60  0001 C CNN
F 3 "" H 8200 1300 60  0001 C CNN
	1    8200 1300
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:RR9 RR1
U 1 1 525CDA06
P 8800 900
F 0 "RR1" H 8850 1500 70  0000 C CNN
F 1 "10K" V 8830 900 70  0000 C CNN
F 2 "SIL-10" H 8800 900 60  0001 C CNN
F 3 "" H 8800 900 60  0001 C CNN
	1    8800 900 
	0    -1   -1   0   
$EndComp
$Comp
L PropIO-V2-rescue:GND #PWR016
U 1 1 525CDA0C
P 6500 2200
F 0 "#PWR016" H 6500 2200 30  0001 C CNN
F 1 "GND" H 6500 2130 30  0001 C CNN
F 2 "" H 6500 2200 60  0001 C CNN
F 3 "" H 6500 2200 60  0001 C CNN
	1    6500 2200
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:GND #PWR020
U 1 1 525CDA12
P 8000 4800
F 0 "#PWR020" H 8000 4800 30  0001 C CNN
F 1 "GND" H 8000 4730 30  0001 C CNN
F 2 "" H 8000 4800 60  0001 C CNN
F 3 "" H 8000 4800 60  0001 C CNN
	1    8000 4800
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:CRYSTAL X1
U 1 1 525CDA18
P 10300 3600
F 0 "X1" H 10300 3750 60  0000 C CNN
F 1 "5MHz" H 10300 3450 60  0000 C CNN
F 2 "Crystal_HC-49U_Horiz" H 10300 3600 60  0001 C CNN
F 3 "" H 10300 3600 60  0001 C CNN
	1    10300 3600
	-1   0    0    1   
$EndComp
NoConn ~ 12100 4800
$Comp
L PropIO-V2-rescue:GND #PWR037
U 1 1 525CDA1F
P 12000 5050
F 0 "#PWR037" H 12000 5050 30  0001 C CNN
F 1 "GND" H 12000 4980 30  0001 C CNN
F 2 "" H 12000 5050 60  0001 C CNN
F 3 "" H 12000 5050 60  0001 C CNN
	1    12000 5050
	1    0    0    -1  
$EndComp
NoConn ~ 13100 4200
NoConn ~ 13100 4400
NoConn ~ 13100 5000
Text Label 13100 4800 0    60   ~ 0
VSYNC
Text Label 13100 4600 0    60   ~ 0
HSYNC
Text Label 10750 4600 0    60   ~ 0
BLUE
Text Label 10750 4400 0    60   ~ 0
GREEN
Text Label 10750 4200 0    60   ~ 0
RED
$Comp
L PropIO-V2-rescue:R R13
U 1 1 525CDA2D
P 10250 5200
F 0 "R13" V 10330 5200 50  0000 C CNN
F 1 "270" V 10250 5200 50  0000 C CNN
F 2 "R3" H 10250 5200 60  0001 C CNN
F 3 "" H 10250 5200 60  0001 C CNN
	1    10250 5200
	0    -1   -1   0   
$EndComp
$Comp
L PropIO-V2-rescue:R R12
U 1 1 525CDA33
P 10250 5000
F 0 "R12" V 10330 5000 50  0000 C CNN
F 1 "270" V 10250 5000 50  0000 C CNN
F 2 "R3" H 10250 5000 60  0001 C CNN
F 3 "" H 10250 5000 60  0001 C CNN
	1    10250 5000
	0    -1   -1   0   
$EndComp
$Comp
L PropIO-V2-rescue:R R11
U 1 1 525CDA39
P 10250 4800
F 0 "R11" V 10330 4800 50  0000 C CNN
F 1 "510" V 10250 4800 50  0000 C CNN
F 2 "R3" H 10250 4800 60  0001 C CNN
F 3 "" H 10250 4800 60  0001 C CNN
	1    10250 4800
	0    -1   -1   0   
$EndComp
$Comp
L PropIO-V2-rescue:R R10
U 1 1 525CDA3F
P 10250 4600
F 0 "R10" V 10330 4600 50  0000 C CNN
F 1 "270" V 10250 4600 50  0000 C CNN
F 2 "R3" H 10250 4600 60  0001 C CNN
F 3 "" H 10250 4600 60  0001 C CNN
	1    10250 4600
	0    -1   -1   0   
$EndComp
$Comp
L PropIO-V2-rescue:R R9
U 1 1 525CDA45
P 10250 4400
F 0 "R9" V 10330 4400 50  0000 C CNN
F 1 "510" V 10250 4400 50  0000 C CNN
F 2 "R3" H 10250 4400 60  0001 C CNN
F 3 "" H 10250 4400 60  0001 C CNN
	1    10250 4400
	0    -1   -1   0   
$EndComp
$Comp
L PropIO-V2-rescue:R R8
U 1 1 525CDA4B
P 10250 4200
F 0 "R8" V 10330 4200 50  0000 C CNN
F 1 "270" V 10250 4200 50  0000 C CNN
F 2 "R3" H 10250 4200 60  0001 C CNN
F 3 "" H 10250 4200 60  0001 C CNN
	1    10250 4200
	0    -1   -1   0   
$EndComp
$Comp
L PropIO-V2-rescue:R R7
U 1 1 525CDA51
P 10250 4000
F 0 "R7" V 10330 4000 50  0000 C CNN
F 1 "510" V 10250 4000 50  0000 C CNN
F 2 "R3" H 10250 4000 60  0001 C CNN
F 3 "" H 10250 4000 60  0001 C CNN
	1    10250 4000
	0    -1   -1   0   
$EndComp
$Comp
L PropIO-V2-rescue:DE15 P4
U 1 1 525CDA57
P 12600 4600
F 0 "P4" H 12600 5250 70  0000 C CNN
F 1 "VGA" H 12615 3915 70  0000 C CNN
F 2 "Conn_Dsub_DE15F" H 12600 4600 60  0001 C CNN
F 3 "" H 12600 4600 60  0001 C CNN
	1    12600 4600
	1    0    0    1   
$EndComp
Text Label 6250 4500 0    60   ~ 0
SPK
$Comp
L PropIO-V2-rescue:GND #PWR014
U 1 1 525CDA64
P 6350 3700
F 0 "#PWR014" H 6350 3700 30  0001 C CNN
F 1 "GND" H 6350 3630 30  0001 C CNN
F 2 "" H 6350 3700 60  0001 C CNN
F 3 "" H 6350 3700 60  0001 C CNN
	1    6350 3700
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR013
U 1 1 525CDA6A
P 6200 3750
F 0 "#PWR013" H 6200 3850 30  0001 C CNN
F 1 "VDD" H 6200 3860 30  0000 C CNN
F 2 "" H 6200 3750 60  0001 C CNN
F 3 "" H 6200 3750 60  0001 C CNN
	1    6200 3750
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:R R14
U 1 1 525CDA70
P 10250 5400
F 0 "R14" V 10330 5400 50  0000 C CNN
F 1 "270" V 10250 5400 50  0000 C CNN
F 2 "R3" H 10250 5400 60  0001 C CNN
F 3 "" H 10250 5400 60  0001 C CNN
	1    10250 5400
	0    -1   -1   0   
$EndComp
$Comp
L PropIO-V2-rescue:P8X32A U4
U 1 1 525CDA76
P 7200 3750
F 0 "U4" H 7200 3800 60  0000 C CNN
F 1 "P8X32A" H 7200 3700 60  0000 C CNN
F 2 "DIP40_600" H 7200 3750 60  0001 C CNN
F 3 "" H 7200 3750 60  0001 C CNN
	1    7200 3750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR018
U 1 1 525CDA7C
P 7100 6500
F 0 "#PWR018" H 7100 6600 30  0001 C CNN
F 1 "VCC" H 7100 6600 30  0000 C CNN
F 2 "" H 7100 6500 60  0001 C CNN
F 3 "" H 7100 6500 60  0001 C CNN
	1    7100 6500
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:24C512 U3
U 1 1 525CDFE9
P 7200 1700
F 0 "U3" H 7200 1750 60  0000 C CNN
F 1 "24C512" H 7200 1650 60  0000 C CNN
F 2 "DIP8_300" H 7200 1700 60  0001 C CNN
F 3 "" H 7200 1700 60  0000 C CNN
	1    7200 1700
	1    0    0    -1  
$EndComp
Text Label 4400 2050 0    60   ~ 0
B_/RESET
$Comp
L PropIO-V2-rescue:R R6
U 1 1 525DEC86
P 10000 6700
F 0 "R6" V 10080 6700 50  0000 C CNN
F 1 "10K" V 10000 6700 50  0000 C CNN
F 2 "R3" H 10000 6700 60  0001 C CNN
F 3 "" H 10000 6700 60  0001 C CNN
	1    10000 6700
	-1   0    0    -1  
$EndComp
Text Notes 5800 10450 0    60   ~ 0
BYPASS 5V
Text Notes 8650 10450 0    60   ~ 0
BYPASS 3V3
Text Notes 8600 10350 0    60   ~ 0
U1
Text Notes 8950 10350 0    60   ~ 0
U1
Text Notes 5050 10350 0    60   ~ 0
U3
Text Notes 5350 10350 0    60   ~ 0
U4
Text Notes 5650 10350 0    60   ~ 0
U5
Text Notes 5950 10350 0    60   ~ 0
U6
Text Notes 6250 10350 0    60   ~ 0
U7
Text Notes 6550 10350 0    60   ~ 0
U8
$Comp
L PropIO-V2-rescue:C C3
U 1 1 526151B8
P 5100 10000
F 0 "C3" H 5150 10100 50  0000 L CNN
F 1 "0.1uF" H 5150 9900 50  0000 L CNN
F 2 "C2" H 5100 10000 60  0001 C CNN
F 3 "" H 5100 10000 60  0001 C CNN
F 4 "U1 Bypass" H 5100 10000 60  0001 C CNN "Notes"
	1    5100 10000
	1    0    0    -1  
$EndComp
Text Notes 6850 10350 0    60   ~ 0
U9
$Comp
L PropIO-V2-rescue:C C16
U 1 1 5261552B
P 9300 10000
F 0 "C16" H 9350 10100 50  0000 L CNN
F 1 "0.1uF" H 9350 9900 50  0000 L CNN
F 2 "C2" H 9300 10000 60  0001 C CNN
F 3 "" H 9300 10000 60  0001 C CNN
	1    9300 10000
	1    0    0    -1  
$EndComp
Text Notes 9250 10350 0    60   ~ 0
U2
$Comp
L PropIO-V2-rescue:C C13
U 1 1 52615CF8
P 7500 10000
F 0 "C13" H 7550 10100 50  0000 L CNN
F 1 "0.47uF" H 7550 9900 50  0000 L CNN
F 2 "C2" H 7500 10000 60  0001 C CNN
F 3 "" H 7500 10000 60  0001 C CNN
	1    7500 10000
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:CP C17
U 1 1 5261607F
P 9600 10000
F 0 "C17" H 9650 10100 50  0000 L CNN
F 1 "10uF" H 9650 9900 50  0000 L CNN
F 2 "C1V5" H 9600 10000 60  0001 C CNN
F 3 "" H 9600 10000 60  0001 C CNN
	1    9600 10000
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:CP C20
U 1 1 52616085
P 9900 10000
F 0 "C20" H 9950 10100 50  0000 L CNN
F 1 "10uF" H 9950 9900 50  0000 L CNN
F 2 "C1V5" H 9900 10000 60  0001 C CNN
F 3 "" H 9900 10000 60  0001 C CNN
	1    9900 10000
	1    0    0    -1  
$EndComp
Text Notes 9550 10350 0    60   ~ 0
U1
Text Notes 9850 10350 0    60   ~ 0
P3
Text Notes 4750 10350 0    60   ~ 0
P1
$Comp
L PropIO-V2-rescue:CONN_5X2 P6
U 1 1 526210AE
P 13400 1600
F 0 "P6" H 13400 1300 60  0000 C CNN
F 1 "SERIAL" V 13400 1600 50  0000 C CNN
F 2 "SHROUDED_5x2" H 13400 1600 60  0001 C CNN
F 3 "" H 13400 1600 60  0000 C CNN
	1    13400 1600
	1    0    0    1   
$EndComp
NoConn ~ 12650 1800
Text Label 8150 1500 0    60   ~ 0
CLR
$Comp
L power:VDD #PWR041
U 1 1 52637399
P 14350 2000
F 0 "#PWR041" H 14350 2100 30  0001 C CNN
F 1 "VDD" H 14350 2110 30  0000 C CNN
F 2 "" H 14350 2000 60  0000 C CNN
F 3 "" H 14350 2000 60  0000 C CNN
	1    14350 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 8500 5150 8500
Wire Wire Line
	5150 8300 4850 8300
Wire Wire Line
	4850 8100 5150 8100
Wire Wire Line
	4800 7650 5150 7650
Wire Wire Line
	4800 7550 5150 7550
Wire Wire Line
	4800 7750 5150 7750
Wire Wire Line
	4800 7850 5150 7850
Wire Wire Line
	4800 7350 5150 7350
Wire Wire Line
	4800 7450 5150 7450
Wire Wire Line
	4800 7250 5150 7250
Wire Wire Line
	4800 7150 5150 7150
Connection ~ 4050 8100
Connection ~ 4050 8200
Connection ~ 4050 8300
Connection ~ 4050 8400
Wire Wire Line
	10500 6950 10000 6950
Wire Wire Line
	4000 10200 4450 10200
Wire Wire Line
	10750 8950 11200 8950
Wire Wire Line
	10750 8650 11200 8650
Wire Wire Line
	10750 8750 11200 8750
Wire Wire Line
	10750 8850 11200 8850
Wire Wire Line
	8800 8950 9350 8950
Wire Wire Line
	8800 8650 9350 8650
Wire Wire Line
	8800 8750 9350 8750
Wire Wire Line
	8800 8850 9350 8850
Wire Wire Line
	8350 8250 8600 8250
Wire Wire Line
	8350 8350 8600 8350
Wire Wire Line
	8350 8450 8600 8450
Wire Wire Line
	8350 8550 8600 8550
Wire Wire Line
	8350 8650 8600 8650
Wire Wire Line
	8350 8750 8600 8750
Wire Wire Line
	8350 8850 8600 8850
Wire Wire Line
	8350 8950 8600 8950
Wire Wire Line
	6600 8250 6950 8250
Wire Wire Line
	6600 8350 6950 8350
Wire Wire Line
	6600 8450 6950 8450
Wire Wire Line
	6600 8550 6950 8550
Wire Wire Line
	6600 8650 6950 8650
Wire Wire Line
	6600 8750 6950 8750
Wire Wire Line
	6600 8850 6950 8850
Wire Wire Line
	6600 8950 6950 8950
Wire Wire Line
	10750 8250 11200 8250
Wire Wire Line
	10750 8350 11200 8350
Wire Wire Line
	10750 8450 11200 8450
Wire Wire Line
	10750 8550 11200 8550
Wire Wire Line
	8800 8250 9350 8250
Wire Wire Line
	8800 8350 9350 8350
Wire Wire Line
	8800 8450 9350 8450
Wire Wire Line
	8800 8550 9350 8550
Wire Wire Line
	13100 8250 13300 8250
Wire Wire Line
	13100 8350 13300 8350
Wire Wire Line
	13100 8450 13300 8450
Wire Wire Line
	13100 8550 13300 8550
Wire Wire Line
	13100 8650 13300 8650
Wire Wire Line
	13100 8750 13300 8750
Wire Wire Line
	13100 8850 13300 8850
Wire Wire Line
	13100 8950 13300 8950
Connection ~ 5400 9800
Connection ~ 5700 9800
Connection ~ 5700 10200
Connection ~ 5400 10200
Wire Wire Line
	11400 8250 11700 8250
Wire Wire Line
	11400 8350 11700 8350
Wire Wire Line
	11400 8450 11700 8450
Wire Wire Line
	11400 8550 11700 8550
Wire Wire Line
	11400 8650 11700 8650
Wire Wire Line
	11400 8750 11700 8750
Wire Wire Line
	11400 8850 11700 8850
Wire Wire Line
	11400 8950 11700 8950
Wire Wire Line
	6950 9150 6600 9150
Wire Wire Line
	6950 9250 6600 9250
Connection ~ 6000 9800
Connection ~ 6000 10200
Connection ~ 6300 9800
Connection ~ 6300 10200
Connection ~ 4800 9800
Connection ~ 4800 10200
Wire Wire Line
	7900 10100 7900 10200
Connection ~ 6600 9800
Connection ~ 6900 9800
Connection ~ 6600 10200
Connection ~ 6900 10200
Connection ~ 8300 10200
Wire Wire Line
	5050 8600 5150 8600
Wire Wire Line
	4850 8000 5150 8000
Wire Wire Line
	4850 8200 5150 8200
Wire Wire Line
	4850 8400 5150 8400
Wire Wire Line
	4050 8000 4050 8100
Wire Wire Line
	7900 6450 7900 6950
Connection ~ 7500 10200
Connection ~ 8650 10200
Connection ~ 8650 9800
Connection ~ 4050 8500
Wire Wire Line
	7300 7700 7600 7700
Wire Wire Line
	11700 9150 11600 9150
Wire Wire Line
	11600 9150 11600 9300
Wire Wire Line
	9350 9150 9250 9150
Wire Wire Line
	9250 9150 9250 9300
Wire Wire Line
	9350 9250 9150 9250
Wire Wire Line
	11700 9250 11500 9250
Connection ~ 9000 10200
Connection ~ 9000 9800
Wire Wire Line
	6500 4400 6200 4400
Wire Wire Line
	9100 1250 9100 5000
Wire Wire Line
	9200 1250 9200 4900
Wire Wire Line
	10550 6100 10650 6100
Wire Wire Line
	10500 5200 10700 5200
Wire Wire Line
	10700 5200 10700 5400
Wire Wire Line
	10700 5400 13500 5400
Connection ~ 11500 5300
Wire Wire Line
	11500 5300 11500 5200
Wire Wire Line
	11700 5000 12000 5000
Wire Wire Line
	11700 5300 11700 5000
Wire Wire Line
	11100 5300 11300 5300
Wire Wire Line
	11100 5300 11100 5200
Connection ~ 11500 4600
Wire Wire Line
	11500 4700 11500 4600
Wire Wire Line
	12000 4300 12100 4300
Connection ~ 11100 4200
Wire Wire Line
	11100 4200 11100 4700
Wire Wire Line
	10600 3600 10700 3600
Wire Wire Line
	10700 3600 10700 3800
Wire Wire Line
	11800 4700 11800 6100
Wire Wire Line
	11100 3600 11300 3600
Wire Wire Line
	11800 4700 12100 4700
Connection ~ 8200 2500
Wire Wire Line
	6000 2000 6000 2500
Wire Wire Line
	6000 2500 8200 2500
Wire Wire Line
	8700 3200 7900 3200
Wire Wire Line
	8300 1800 10100 1800
Wire Wire Line
	8300 1800 8300 2600
Connection ~ 8500 1700
Wire Wire Line
	7900 1700 8500 1700
Wire Wire Line
	7600 5600 7500 5600
Wire Wire Line
	7500 5600 7500 5400
Wire Wire Line
	7500 5400 7400 5400
Wire Wire Line
	10000 4600 9700 4600
Wire Wire Line
	9700 4600 9700 4300
Wire Wire Line
	9700 4300 7900 4300
Wire Wire Line
	9800 4400 9800 4200
Wire Wire Line
	9800 4400 10000 4400
Wire Wire Line
	9100 5900 11900 5900
Wire Wire Line
	9200 6300 11900 6300
Connection ~ 9200 4900
Wire Wire Line
	9200 4900 6400 4900
Wire Wire Line
	6500 4700 6400 4700
Wire Wire Line
	10100 2100 10000 2100
Wire Wire Line
	10000 2100 10000 2300
Wire Wire Line
	12550 2000 11700 2000
Wire Wire Line
	12200 1000 12200 1100
Wire Wire Line
	12200 1100 12100 1100
Wire Wire Line
	12100 1400 12200 1400
Wire Wire Line
	9500 1000 9400 1000
Wire Wire Line
	9400 1000 9400 1200
Wire Wire Line
	9400 1200 10100 1200
Wire Wire Line
	9900 1400 10100 1400
Wire Wire Line
	6900 5900 6900 6000
Connection ~ 6900 5400
Wire Wire Line
	6900 5500 6900 5400
Connection ~ 8800 2800
Connection ~ 9000 3000
Wire Wire Line
	9000 1250 9000 3000
Wire Wire Line
	9000 3500 7900 3500
Wire Wire Line
	8800 1250 8800 2800
Wire Wire Line
	8800 3300 7900 3300
Wire Wire Line
	12600 6500 12600 6100
Wire Wire Line
	12600 6100 12700 6100
Wire Wire Line
	12700 6300 12400 6300
Wire Wire Line
	8200 2800 7900 2800
Wire Wire Line
	8200 2000 8200 2500
Wire Wire Line
	8600 1250 8600 1600
Wire Wire Line
	8600 3100 7900 3100
Wire Wire Line
	8000 4800 8000 3900
Wire Wire Line
	8000 3900 7900 3900
Wire Wire Line
	7900 3700 9600 3700
Wire Wire Line
	9600 3700 9600 3600
Connection ~ 12000 5000
Connection ~ 12000 4300
Wire Wire Line
	13100 4800 13400 4800
Wire Wire Line
	13400 4800 13400 5600
Connection ~ 10700 4800
Wire Wire Line
	10500 4800 10700 4800
Connection ~ 10600 4400
Wire Wire Line
	10600 4600 10600 4400
Wire Wire Line
	10600 4600 10500 4600
Connection ~ 10600 4200
Wire Wire Line
	10500 4200 10600 4200
Wire Wire Line
	10000 5400 9300 5400
Wire Wire Line
	9300 5400 9300 4700
Wire Wire Line
	9300 4700 7900 4700
Wire Wire Line
	10000 5000 9500 5000
Wire Wire Line
	9500 5000 9500 4500
Wire Wire Line
	9500 4500 7900 4500
Wire Wire Line
	10000 4200 9900 4200
Wire Wire Line
	6500 4500 6200 4500
Wire Wire Line
	6200 3750 6200 3900
Wire Wire Line
	6200 3900 6500 3900
Wire Wire Line
	10000 4000 7900 4000
Wire Wire Line
	9800 4200 7900 4200
Wire Wire Line
	10000 5200 9400 5200
Wire Wire Line
	9400 5200 9400 4600
Wire Wire Line
	9400 4600 7900 4600
Wire Wire Line
	10500 4000 10600 4000
Wire Wire Line
	10600 4000 10600 4200
Wire Wire Line
	10500 4400 10600 4400
Wire Wire Line
	10700 5000 10500 5000
Wire Wire Line
	10700 4600 10700 4800
Wire Wire Line
	10700 4600 11500 4600
Wire Wire Line
	13500 5400 13500 4600
Wire Wire Line
	13500 4600 13100 4600
Wire Wire Line
	12000 4100 12000 4300
Connection ~ 12000 4500
Wire Wire Line
	12000 4900 12100 4900
Connection ~ 12000 4900
Wire Wire Line
	7900 4100 9900 4100
Wire Wire Line
	9900 4100 9900 4200
Wire Wire Line
	8500 3000 7900 3000
Wire Wire Line
	8500 1250 8500 1700
Wire Wire Line
	8200 1300 8200 1350
Wire Wire Line
	8200 1350 8300 1350
Wire Wire Line
	8300 1350 8300 1250
Wire Wire Line
	8300 2900 7900 2900
Wire Wire Line
	12400 5900 12700 5900
Wire Wire Line
	8700 1250 8700 2600
Wire Wire Line
	8900 3400 7900 3400
Wire Wire Line
	7900 3600 9400 3600
Wire Wire Line
	9400 3600 9400 3500
Wire Wire Line
	13500 3200 8900 3200
Connection ~ 8700 2600
Wire Wire Line
	11800 3600 13300 3600
Wire Wire Line
	4400 6500 3850 6500
Wire Wire Line
	7600 5800 7500 5800
Wire Wire Line
	6800 5400 6900 5400
Wire Wire Line
	6900 6000 7500 6000
Wire Wire Line
	7500 6000 7500 5800
Connection ~ 6900 6000
Wire Wire Line
	10100 1500 10000 1500
Wire Wire Line
	10000 1500 10000 1600
Wire Wire Line
	10000 1600 9400 1600
Wire Wire Line
	9400 1600 9400 1400
Wire Wire Line
	9400 1400 9500 1400
Wire Wire Line
	9900 1000 10000 1000
Wire Wire Line
	10000 1000 10000 1100
Wire Wire Line
	10000 1100 10100 1100
Wire Wire Line
	12200 1400 12200 1500
Connection ~ 12200 1400
Wire Wire Line
	11700 1800 12450 1800
Wire Wire Line
	6500 4600 6300 4600
Wire Wire Line
	6400 4700 6400 4900
Wire Wire Line
	6300 4600 6300 5000
Wire Wire Line
	6300 5000 9100 5000
Connection ~ 9100 5000
Wire Wire Line
	6300 5400 6200 5400
Wire Wire Line
	6200 5400 6200 4500
Wire Wire Line
	10000 4800 9600 4800
Wire Wire Line
	9600 4800 9600 4400
Wire Wire Line
	9600 4400 7900 4400
Wire Wire Line
	10000 2000 10100 2000
Wire Wire Line
	6500 3800 6100 3800
Wire Wire Line
	7900 1600 8600 1600
Connection ~ 8600 1600
Connection ~ 6500 2100
Wire Wire Line
	8000 2100 8000 1900
Wire Wire Line
	6200 2100 6200 2000
Wire Wire Line
	6200 2100 6500 2100
Wire Wire Line
	5900 2000 5900 2600
Wire Wire Line
	5900 2600 8300 2600
Connection ~ 8300 2600
Wire Wire Line
	8900 1250 8900 3200
Connection ~ 8900 3200
Connection ~ 11800 6100
Wire Wire Line
	9600 3600 10000 3600
Wire Wire Line
	10700 3800 7900 3800
Wire Wire Line
	11150 6100 11800 6100
Wire Wire Line
	11800 6100 12500 6100
Wire Wire Line
	12000 4100 12100 4100
Wire Wire Line
	11300 4400 11300 4700
Connection ~ 11300 4400
Wire Wire Line
	12000 4500 12100 4500
Wire Wire Line
	11300 5200 11300 5300
Connection ~ 11300 5300
Wire Wire Line
	10500 5400 10600 5400
Wire Wire Line
	10600 5400 10600 5600
Wire Wire Line
	10600 5600 13400 5600
Wire Wire Line
	12350 1500 13000 1500
Wire Wire Line
	6500 3500 6000 3500
Wire Wire Line
	8500 6300 8500 6450
Connection ~ 8500 6450
Wire Wire Line
	7900 6450 8500 6450
Connection ~ 9300 9800
Connection ~ 9300 10200
Connection ~ 5100 9800
Connection ~ 5100 10200
Connection ~ 9600 9800
Connection ~ 9600 10200
Connection ~ 9900 9800
Connection ~ 9900 10200
Wire Wire Line
	12550 2000 12550 1700
Wire Wire Line
	12550 1700 13000 1700
Wire Wire Line
	12450 1800 12450 1600
Wire Wire Line
	12450 1600 13000 1600
Wire Wire Line
	13800 1700 14150 1700
Wire Wire Line
	11700 2100 14150 2100
Wire Wire Line
	14150 1700 14150 1250
Wire Wire Line
	8400 1250 8400 1500
Wire Wire Line
	8400 1500 8100 1500
Wire Wire Line
	6500 3600 6500 3700
Wire Wire Line
	6350 3600 6500 3600
Wire Wire Line
	6350 3700 6350 3600
Wire Wire Line
	11300 3600 11300 3400
Wire Wire Line
	11100 3600 11100 3450
Wire Wire Line
	6500 1700 6500 1800
Connection ~ 8000 1900
Wire Wire Line
	7900 1900 8000 1900
Connection ~ 6500 1800
Wire Wire Line
	8000 1500 7900 1500
Connection ~ 6500 1900
Wire Wire Line
	6500 1500 6500 1400
$Comp
L power:VDD #PWR015
U 1 1 52640126
P 6500 1400
F 0 "#PWR015" H 6500 1500 30  0001 C CNN
F 1 "VDD" H 6500 1510 30  0000 C CNN
F 2 "" H 6500 1400 60  0000 C CNN
F 3 "" H 6500 1400 60  0000 C CNN
	1    6500 1400
	1    0    0    -1  
$EndComp
Text Notes 13350 1800 2    15   ~ 0
DCD
Text Notes 13350 1700 2    15   ~ 0
RXD
Text Notes 13350 1600 2    15   ~ 0
TXD
Text Notes 13350 1500 2    15   ~ 0
DTR
Text Notes 13350 1400 2    15   ~ 0
GND
Text Notes 13450 1800 0    15   ~ 0
DSR
Text Notes 13450 1700 0    15   ~ 0
RTS
Text Notes 13450 1600 0    15   ~ 0
CTS
Text Notes 13450 1500 0    15   ~ 0
RI
Text Notes 13450 1400 0    15   ~ 0
NC
Wire Wire Line
	8200 2000 9500 2000
Wire Wire Line
	12500 6100 12500 6200
Wire Wire Line
	12500 6200 12700 6200
Text Notes 7150 10350 0    60   ~ 0
U10
$Comp
L PropIO-V2-rescue:C C12
U 1 1 526475D1
P 7200 10000
F 0 "C12" H 7250 10100 50  0000 L CNN
F 1 "0.1uF" H 7250 9900 50  0000 L CNN
F 2 "C2" H 7200 10000 60  0001 C CNN
F 3 "" H 7200 10000 60  0001 C CNN
	1    7200 10000
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:CONN_3 P1
U 1 1 5265F16F
P 4400 9200
F 0 "P1" V 4350 9200 50  0000 C CNN
F 1 "POWER" V 4450 9200 40  0000 C CNN
F 2 "JACK_ALIM" H 4400 9200 60  0001 C CNN
F 3 "" H 4400 9200 60  0000 C CNN
	1    4400 9200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 9200 4050 9300
$Comp
L PropIO-V2-rescue:GND #PWR08
U 1 1 5265F38D
P 4050 9400
F 0 "#PWR08" H 4050 9400 30  0001 C CNN
F 1 "GND" H 4050 9330 30  0001 C CNN
F 2 "" H 4050 9400 60  0000 C CNN
F 3 "" H 4050 9400 60  0000 C CNN
	1    4050 9400
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR07
U 1 1 5265F39C
P 4050 9100
F 0 "#PWR07" H 4050 9200 30  0001 C CNN
F 1 "VCC" H 4050 9200 30  0000 C CNN
F 2 "" H 4050 9100 60  0000 C CNN
F 3 "" H 4050 9100 60  0000 C CNN
	1    4050 9100
	1    0    0    -1  
$EndComp
Text Notes 4550 9200 0    60   ~ 0
Optional power connector\nfor standalone operation
$Comp
L PropIO-V2-rescue:74LS682 U2
U 1 1 5266D112
P 5850 8000
F 0 "U2" H 5850 8950 60  0000 C CNN
F 1 "74LS682" H 5850 7000 60  0000 C CNN
F 2 "DIP20_300" H 5850 8000 60  0001 C CNN
F 3 "" H 5850 8000 60  0000 C CNN
	1    5850 8000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 7150 7000 7150
$Comp
L PropIO-V2-rescue:CP C1
U 1 1 52AF559C
P 4450 10000
F 0 "C1" H 4500 10100 50  0000 L CNN
F 1 "22uF" H 4500 9900 50  0000 L CNN
F 2 "C1V7" H 4450 10000 60  0001 C CNN
F 3 "" H 4450 10000 60  0001 C CNN
	1    4450 10000
	1    0    0    -1  
$EndComp
Text Notes 4450 10350 0    60   ~ 0
P8
Connection ~ 4450 9800
Connection ~ 4450 10200
$Comp
L PropIO-V2-rescue:R R3
U 1 1 52B1C715
P 6850 6500
F 0 "R3" V 6930 6500 50  0000 C CNN
F 1 "330" V 6850 6500 50  0000 C CNN
F 2 "R3" H 6850 6500 60  0001 C CNN
F 3 "" H 6850 6500 60  0001 C CNN
	1    6850 6500
	0    1    -1   0   
$EndComp
Wire Wire Line
	10100 1700 10000 1700
Wire Wire Line
	10000 1700 10000 1850
$Comp
L PropIO-V2-rescue:GND #PWR027
U 1 1 52B1C976
P 10000 1850
F 0 "#PWR027" H 10000 1850 30  0001 C CNN
F 1 "GND" H 10000 1780 30  0001 C CNN
F 2 "" H 10000 1850 60  0000 C CNN
F 3 "" H 10000 1850 60  0000 C CNN
	1    10000 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	14150 1250 12350 1250
Wire Wire Line
	12350 1250 12350 1500
Wire Wire Line
	12350 1700 11700 1700
Connection ~ 12350 1500
Connection ~ 4050 9300
Text Label 4850 7850 0    60   ~ 0
/M1
$Comp
L PropIO-V2-rescue:LED D3
U 1 1 52B4757A
P 11250 6950
F 0 "D3" H 11250 7050 50  0000 C CNN
F 1 "5V" H 11250 6850 50  0000 C CNN
F 2 "LED_5mm" H 11250 6950 60  0001 C CNN
F 3 "" H 11250 6950 60  0001 C CNN
	1    11250 6950
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR035
U 1 1 52B47580
P 11950 6950
F 0 "#PWR035" H 11950 7050 30  0001 C CNN
F 1 "VCC" H 11950 7050 30  0000 C CNN
F 2 "" H 11950 6950 60  0001 C CNN
F 3 "" H 11950 6950 60  0001 C CNN
	1    11950 6950
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:R R20
U 1 1 52B47586
P 11700 6950
F 0 "R20" V 11780 6950 50  0000 C CNN
F 1 "330" V 11700 6950 50  0000 C CNN
F 2 "R3" H 11700 6950 60  0001 C CNN
F 3 "" H 11700 6950 60  0001 C CNN
	1    11700 6950
	0    1    -1   0   
$EndComp
$Comp
L PropIO-V2-rescue:GND #PWR030
U 1 1 52B4759D
P 10900 7050
F 0 "#PWR030" H 10900 7050 30  0001 C CNN
F 1 "GND" H 10900 6980 30  0001 C CNN
F 2 "" H 10900 7050 60  0000 C CNN
F 3 "" H 10900 7050 60  0000 C CNN
	1    10900 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	11050 6950 10900 6950
Wire Wire Line
	10900 6950 10900 7050
Text Notes 5850 6300 0    60   ~ 0
SD Card Activity Indicator
Text Notes 11000 6800 0    60   ~ 0
Power Indicators
$Comp
L PropIO-V2-rescue:LED D4
U 1 1 52B477B4
P 11250 7250
F 0 "D4" H 11250 7350 50  0000 C CNN
F 1 "3V3" H 11250 7150 50  0000 C CNN
F 2 "LED_5mm" H 11250 7250 60  0001 C CNN
F 3 "" H 11250 7250 60  0001 C CNN
	1    11250 7250
	-1   0    0    1   
$EndComp
$Comp
L PropIO-V2-rescue:R R21
U 1 1 52B477C0
P 11700 7250
F 0 "R21" V 11780 7250 50  0000 C CNN
F 1 "150" V 11700 7250 50  0000 C CNN
F 2 "R3" H 11700 7250 60  0001 C CNN
F 3 "" H 11700 7250 60  0001 C CNN
	1    11700 7250
	0    1    -1   0   
$EndComp
$Comp
L PropIO-V2-rescue:GND #PWR031
U 1 1 52B477C6
P 10900 7350
F 0 "#PWR031" H 10900 7350 30  0001 C CNN
F 1 "GND" H 10900 7280 30  0001 C CNN
F 2 "" H 10900 7350 60  0000 C CNN
F 3 "" H 10900 7350 60  0000 C CNN
	1    10900 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	11050 7250 10900 7250
Wire Wire Line
	10900 7250 10900 7350
$Comp
L power:VDD #PWR036
U 1 1 52B477E0
P 11950 7250
F 0 "#PWR036" H 11950 7350 30  0001 C CNN
F 1 "VDD" H 11950 7360 30  0000 C CNN
F 2 "" H 11950 7250 60  0000 C CNN
F 3 "" H 11950 7250 60  0000 C CNN
	1    11950 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 8600 5050 8800
Wire Wire Line
	5150 8700 4950 8700
$Comp
L power:VCC #PWR09
U 1 1 52B4DBA7
P 4950 8700
F 0 "#PWR09" H 4950 8800 30  0001 C CNN
F 1 "VCC" H 4950 8800 30  0000 C CNN
F 2 "" H 4950 8700 60  0000 C CNN
F 3 "" H 4950 8700 60  0000 C CNN
	1    4950 8700
	1    0    0    -1  
$EndComp
Text Label 13850 1800 0    60   ~ 0
DSR
Text Label 12800 1700 0    60   ~ 0
RXD
Text Label 12800 1600 0    60   ~ 0
TXD
Text Label 12800 1500 0    60   ~ 0
DTR
Text Label 13850 1700 0    60   ~ 0
RTS
Wire Wire Line
	13800 1600 14050 1600
Wire Wire Line
	13800 1500 14050 1500
Text Label 13850 1600 0    60   ~ 0
CTS
Text Label 13850 1500 0    60   ~ 0
RI
NoConn ~ 13800 1400
NoConn ~ 14050 1500
NoConn ~ 14050 1600
Wire Wire Line
	13800 1800 14150 1800
Wire Wire Line
	14150 1800 14150 2100
Wire Wire Line
	13000 1800 12650 1800
Text Label 12800 1800 0    60   ~ 0
DCD
Wire Wire Line
	8300 9800 8650 9800
Wire Wire Line
	4000 9800 4450 9800
$Comp
L PropIO-V2-rescue:R R4
U 1 1 52BC9BB1
P 9350 7350
F 0 "R4" V 9430 7350 50  0000 C CNN
F 1 "330" V 9350 7350 50  0000 C CNN
F 2 "R3" H 9350 7350 60  0001 C CNN
F 3 "" H 9350 7350 60  0001 C CNN
	1    9350 7350
	0    1    -1   0   
$EndComp
$Comp
L PropIO-V2-rescue:LED D2
U 1 1 52BC9BB7
P 9800 7350
F 0 "D2" H 9800 7450 50  0000 C CNN
F 1 "PROP" H 9800 7250 50  0000 C CNN
F 2 "LED_5mm" H 9800 7350 60  0001 C CNN
F 3 "" H 9800 7350 60  0001 C CNN
	1    9800 7350
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR028
U 1 1 52BC9E12
P 10100 7350
F 0 "#PWR028" H 10100 7450 30  0001 C CNN
F 1 "VCC" H 10100 7450 30  0000 C CNN
F 2 "" H 10100 7350 60  0001 C CNN
F 3 "" H 10100 7350 60  0001 C CNN
	1    10100 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 7350 10100 7350
$Comp
L PropIO-V2-rescue:SW_PUSH SW1
U 1 1 52DDFE76
P 5300 1150
F 0 "SW1" H 5450 1260 50  0000 C CNN
F 1 "RESET" H 5300 1070 50  0000 C CNN
F 2 "SW_PUSH_SMALL" H 5300 1150 60  0001 C CNN
F 3 "~" H 5300 1150 60  0000 C CNN
	1    5300 1150
	1    0    0    -1  
$EndComp
$Comp
L PropIO-V2-rescue:GND #PWR012
U 1 1 52DE006E
P 5000 1200
F 0 "#PWR012" H 5000 1200 30  0001 C CNN
F 1 "GND" H 5000 1130 30  0001 C CNN
F 2 "" H 5000 1200 60  0000 C CNN
F 3 "" H 5000 1200 60  0000 C CNN
	1    5000 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1150 5000 1200
Connection ~ 8300 9800
Connection ~ 7500 9800
Connection ~ 7200 9800
Connection ~ 7200 10200
Connection ~ 7900 10200
Wire Wire Line
	4050 8100 4050 8200
Wire Wire Line
	4050 8200 4050 8300
Wire Wire Line
	4050 8300 4050 8400
Wire Wire Line
	4050 8400 4050 8500
Wire Wire Line
	5400 9800 5700 9800
Wire Wire Line
	5700 9800 6000 9800
Wire Wire Line
	5700 10200 6000 10200
Wire Wire Line
	5400 10200 5700 10200
Wire Wire Line
	6000 9800 6300 9800
Wire Wire Line
	6000 10200 6300 10200
Wire Wire Line
	6300 9800 6600 9800
Wire Wire Line
	6300 10200 6600 10200
Wire Wire Line
	4800 9800 5100 9800
Wire Wire Line
	4800 10200 5100 10200
Wire Wire Line
	6600 9800 6900 9800
Wire Wire Line
	6900 9800 7200 9800
Wire Wire Line
	6600 10200 6900 10200
Wire Wire Line
	6900 10200 7200 10200
Wire Wire Line
	8300 10200 8650 10200
Wire Wire Line
	7500 10200 7900 10200
Wire Wire Line
	8650 10200 9000 10200
Wire Wire Line
	8650 9800 9000 9800
Wire Wire Line
	4050 8500 4050 8650
Wire Wire Line
	9000 10200 9300 10200
Wire Wire Line
	9000 9800 9300 9800
Wire Wire Line
	11500 5300 11700 5300
Wire Wire Line
	11500 4600 12100 4600
Wire Wire Line
	11100 4200 12100 4200
Wire Wire Line
	8200 2500 8200 2800
Wire Wire Line
	6100 3800 6100 2150
Wire Wire Line
	8500 1700 8500 3000
Wire Wire Line
	9200 4900 9200 6300
Wire Wire Line
	6900 5400 7000 5400
Wire Wire Line
	8800 2800 8800 3300
Wire Wire Line
	9000 3000 9000 3500
Wire Wire Line
	12000 5000 12100 5000
Wire Wire Line
	12000 5000 12000 5050
Wire Wire Line
	12000 4300 12000 4500
Wire Wire Line
	10700 4800 10700 5000
Wire Wire Line
	10600 4400 11300 4400
Wire Wire Line
	10600 4200 11100 4200
Wire Wire Line
	12000 4500 12000 4900
Wire Wire Line
	12000 4900 12000 5000
Wire Wire Line
	8700 2600 8700 3200
Wire Wire Line
	6900 6000 6900 6100
Wire Wire Line
	12200 1400 13000 1400
Wire Wire Line
	9100 5000 9100 5900
Wire Wire Line
	8600 1600 8600 3100
Wire Wire Line
	6500 2100 8000 2100
Wire Wire Line
	6500 2100 6500 2200
Wire Wire Line
	8300 2600 8300 2900
Wire Wire Line
	8900 3200 8900 3400
Wire Wire Line
	11800 6100 12450 6100
Wire Wire Line
	11300 4400 12100 4400
Wire Wire Line
	11300 5300 11500 5300
Wire Wire Line
	8500 6450 8500 6600
Wire Wire Line
	8500 6450 10000 6450
Wire Wire Line
	9300 9800 9600 9800
Wire Wire Line
	9300 10200 9600 10200
Wire Wire Line
	5100 9800 5400 9800
Wire Wire Line
	5100 10200 5400 10200
Wire Wire Line
	9600 9800 9900 9800
Wire Wire Line
	9600 10200 9900 10200
Wire Wire Line
	9900 9800 10400 9800
Wire Wire Line
	9900 10200 10400 10200
Wire Wire Line
	8000 1900 8000 1500
Wire Wire Line
	6500 1800 6500 1900
Wire Wire Line
	6500 1900 6500 2100
Wire Wire Line
	4450 9800 4800 9800
Wire Wire Line
	4450 10200 4800 10200
Wire Wire Line
	12350 1500 12350 1700
Wire Wire Line
	4050 9300 4050 9400
Wire Wire Line
	7200 9800 7500 9800
Wire Wire Line
	7200 10200 7500 10200
Wire Wire Line
	7900 10200 7900 10250
Wire Wire Line
	7900 10200 8300 10200
$Comp
L Connector_Generic:Conn_01x24 JPB1
U 1 1 535944CA
P 1300 6050
F 0 "JPB1" H 1050 7275 50  0000 L BNN
F 1 "PINHD-1X24" H 1050 4650 50  0000 L BNN
F 2 "Pin_Headers:Pin_Header_Angled_1x24" H 1300 6200 50  0001 C CNN
F 3 "" H 1300 6050 60  0000 C CNN
	1    1300 6050
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x24 JPA1
U 1 1 5359460E
P 1300 2900
F 0 "JPA1" H 1050 4125 50  0000 L BNN
F 1 "PINHD-1X24" H 1050 1500 50  0000 L BNN
F 2 "Pin_Headers:Pin_Header_Angled_1x24" H 1300 3050 50  0001 C CNN
F 3 "" H 1300 2900 60  0000 C CNN
	1    1300 2900
	-1   0    0    -1  
$EndComp
Text GLabel 1700 6550 2    60   BiDi ~ 0
B_D7
Text GLabel 1700 6650 2    60   BiDi ~ 0
B_D6
Text GLabel 1700 6750 2    60   BiDi ~ 0
B_D5
Text GLabel 1700 6850 2    60   BiDi ~ 0
B_D4
Text GLabel 1700 6950 2    60   BiDi ~ 0
B_D3
Text GLabel 1700 7050 2    60   BiDi ~ 0
B_D2
Text GLabel 1700 7150 2    60   BiDi ~ 0
B_D1
Text GLabel 1700 7250 2    60   BiDi ~ 0
B_D0
NoConn ~ 1750 1800
NoConn ~ 1750 1900
$Comp
L power:-12V #PWR05
U 1 1 535A7B8F
P 2100 3400
F 0 "#PWR05" H 2100 3530 20  0001 C CNN
F 1 "-12V" H 2100 3500 30  0000 C CNN
F 2 "" H 2100 3400 60  0000 C CNN
F 3 "" H 2100 3400 60  0000 C CNN
	1    2100 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 535A7BFD
P 1850 3000
F 0 "#PWR01" H 1850 3090 20  0001 C CNN
F 1 "+5V" H 1850 3090 30  0000 C CNN
F 2 "" H 1850 3000 60  0000 C CNN
F 3 "" H 1850 3000 60  0000 C CNN
	1    1850 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 535A7C0C
P 1850 3150
F 0 "#PWR02" H 1850 3150 30  0001 C CNN
F 1 "GND" H 1850 3080 30  0001 C CNN
F 2 "" H 1850 3150 60  0000 C CNN
F 3 "" H 1850 3150 60  0000 C CNN
	1    1850 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR03
U 1 1 535A8003
P 1950 3300
F 0 "#PWR03" H 1950 3250 20  0001 C CNN
F 1 "+12V" H 1950 3400 30  0000 C CNN
F 2 "" H 1950 3300 60  0000 C CNN
F 3 "" H 1950 3300 60  0000 C CNN
	1    1950 3300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR04
U 1 1 535A94C5
P 2000 3000
F 0 "#PWR04" H 2000 3100 30  0001 C CNN
F 1 "VCC" H 2000 3100 30  0000 C CNN
F 2 "" H 2000 3000 60  0000 C CNN
F 3 "" H 2000 3000 60  0000 C CNN
	1    2000 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 6550 1500 6550
Wire Wire Line
	1400 6650 1500 6650
Wire Wire Line
	1400 6750 1500 6750
Wire Wire Line
	1400 6850 1500 6850
Wire Wire Line
	1400 6950 1500 6950
Wire Wire Line
	1400 7050 1500 7050
Wire Wire Line
	1400 7150 1500 7150
Wire Wire Line
	1400 7250 1500 7250
Wire Wire Line
	1400 6450 1500 6450
Wire Wire Line
	1400 6350 1500 6350
Wire Wire Line
	1400 6250 1500 6250
Wire Wire Line
	1400 6150 1500 6150
Wire Wire Line
	1400 6050 1500 6050
Wire Wire Line
	1400 5950 1500 5950
Wire Wire Line
	1400 5850 1500 5850
Wire Wire Line
	1400 1800 1500 1800
Wire Wire Line
	1400 1900 1500 1900
Wire Wire Line
	1400 2000 1500 2000
Wire Wire Line
	1400 2100 1500 2100
Wire Wire Line
	1400 3100 1500 3100
Wire Wire Line
	1400 3200 1500 3200
Wire Wire Line
	1750 3200 1750 3100
Wire Wire Line
	1850 3100 1850 3150
Connection ~ 1750 3100
Wire Wire Line
	1400 2900 1500 2900
Wire Wire Line
	1750 2900 1750 3000
Wire Wire Line
	1400 3000 1500 3000
Connection ~ 1750 3000
Wire Wire Line
	1400 3700 1500 3700
Wire Wire Line
	1400 2800 1500 2800
Wire Wire Line
	1400 2600 1500 2600
Wire Wire Line
	1400 2500 1500 2500
Wire Wire Line
	1400 2400 1500 2400
Wire Wire Line
	1400 2700 1500 2700
Wire Wire Line
	1950 3300 1500 3300
Wire Wire Line
	1750 3100 1850 3100
Wire Wire Line
	1400 2300 1500 2300
Wire Wire Line
	1400 4100 1500 4100
Wire Wire Line
	1400 2200 1500 2200
Wire Wire Line
	1400 5750 1500 5750
Text GLabel 1700 4000 2    60   Input ~ 0
B_CLK
Text GLabel 1700 3700 2    60   Input ~ 0
B_/WR
Text GLabel 1700 3800 2    60   Input ~ 0
B_/M1
Text GLabel 1700 3900 2    60   Input ~ 0
B_/IORQ
Text GLabel 1700 4100 2    60   Input ~ 0
B_/MREQ
Text GLabel 1700 6450 2    60   Input ~ 0
B_A15
Text GLabel 1700 6350 2    60   Input ~ 0
B_A14
Text GLabel 1700 6250 2    60   Input ~ 0
B_A13
Text GLabel 1700 6150 2    60   Input ~ 0
B_A12
Text GLabel 1700 6050 2    60   Input ~ 0
B_A11
Text GLabel 1700 5950 2    60   Input ~ 0
B_A10
Text GLabel 1700 5850 2    60   Input ~ 0
B_A9
Text GLabel 1700 5750 2    60   Input ~ 0
B_A8
Text GLabel 1700 5650 2    60   Input ~ 0
B_A7
Text GLabel 1700 5550 2    60   Input ~ 0
B_A6
Text GLabel 1700 5450 2    60   Input ~ 0
B_A5
Text GLabel 1700 5350 2    60   Input ~ 0
B_A4
Text GLabel 1700 5250 2    60   Input ~ 0
B_A3
Text GLabel 1700 5150 2    60   Input ~ 0
B_A2
Text GLabel 1700 5050 2    60   Input ~ 0
B_A1
Text GLabel 1700 4950 2    60   Input ~ 0
B_A0
Wire Wire Line
	1400 4000 1500 4000
Wire Wire Line
	1400 3600 1500 3600
Wire Wire Line
	1400 3500 1500 3500
Wire Wire Line
	1400 3900 1500 3900
Wire Wire Line
	1400 3800 1500 3800
Wire Wire Line
	1400 3400 1500 3400
Wire Wire Line
	1700 5250 1500 5250
Wire Wire Line
	1400 5650 1500 5650
Wire Wire Line
	1400 4950 1500 4950
Wire Wire Line
	1400 5350 1500 5350
Wire Wire Line
	1400 5050 1500 5050
Wire Wire Line
	1400 5450 1500 5450
Wire Wire Line
	1400 5150 1500 5150
Wire Wire Line
	1400 5550 1500 5550
Text GLabel 1700 3600 2    60   Input ~ 0
B_/RD
Text GLabel 1700 3500 2    60   Input ~ 0
B_/RESET
Text GLabel 1700 2400 2    60   Input ~ 0
B_/INT
Text GLabel 1700 2100 2    60   Input ~ 0
B_/RFH
Text GLabel 1700 2000 2    60   Input ~ 0
B_/HLT
Text GLabel 1700 2800 2    60   Input ~ 0
B_/BUSREQ
Text GLabel 1700 2700 2    60   Input ~ 0
B_/BUSAK
Text GLabel 1700 2600 2    60   Input ~ 0
B_/NMI
Text GLabel 1700 2500 2    60   Input ~ 0
B_/WAIT
Text GLabel 1700 2300 2    60   Input ~ 0
B_/IEO
Text GLabel 1700 2200 2    60   Input ~ 0
B_/IEI
$Comp
L Connector:SD_Card J4
U 1 1 5D49C79A
P 14900 3000
F 0 "J4" H 14900 3665 50  0000 C CNN
F 1 "SD_Card" H 14900 3574 50  0000 C CNN
F 2 "" H 14900 3000 50  0001 C CNN
F 3 "http://portal.fciconnect.com/Comergent//fci/drawing/10067847.pdf" H 14900 3000 50  0001 C CNN
	1    14900 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	14000 3000 13850 3000
Wire Wire Line
	13850 3000 13850 2300
Wire Wire Line
	13850 2300 14350 2300
Wire Wire Line
	14350 2300 14350 2000
Wire Wire Line
	8800 2800 14000 2800
Wire Wire Line
	13800 3000 13800 3300
Wire Wire Line
	13800 3300 14000 3300
Wire Wire Line
	9000 3000 13800 3000
Wire Wire Line
	13500 3200 13500 3100
Wire Wire Line
	13500 3100 14000 3100
Wire Wire Line
	11800 3400 14000 3400
Wire Wire Line
	13500 2600 8700 2600
Wire Wire Line
	13500 2600 13500 2700
Wire Wire Line
	13500 2700 14000 2700
Wire Wire Line
	13300 3600 13300 2500
Wire Wire Line
	13300 2500 14000 2500
Wire Wire Line
	14000 2500 14000 2600
Wire Wire Line
	14000 2900 13950 2900
Wire Wire Line
	13950 2900 13950 3200
Wire Wire Line
	13950 3200 14000 3200
$Comp
L PropIO-V2-rescue:GND #PWR042
U 1 1 5D9496B5
P 13950 3800
F 0 "#PWR042" H 13950 3800 30  0001 C CNN
F 1 "GND" H 13950 3730 30  0001 C CNN
F 2 "" H 13950 3800 60  0000 C CNN
F 3 "" H 13950 3800 60  0000 C CNN
	1    13950 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	13950 3800 13950 3200
Connection ~ 13950 3200
Wire Wire Line
	1750 3000 1850 3000
Connection ~ 1500 1800
Wire Wire Line
	1500 1800 1750 1800
Connection ~ 1500 1900
Wire Wire Line
	1500 1900 1750 1900
Connection ~ 1500 2000
Wire Wire Line
	1500 2000 1700 2000
Connection ~ 1500 2100
Wire Wire Line
	1500 2100 1700 2100
Connection ~ 1500 2200
Wire Wire Line
	1500 2200 1700 2200
Connection ~ 1500 2300
Wire Wire Line
	1500 2300 1700 2300
Connection ~ 1500 2400
Wire Wire Line
	1500 2400 1700 2400
Connection ~ 1500 2500
Wire Wire Line
	1500 2500 1700 2500
Connection ~ 1500 2600
Wire Wire Line
	1500 2600 1700 2600
Connection ~ 1500 2700
Wire Wire Line
	1500 2700 1700 2700
Connection ~ 1500 2800
Wire Wire Line
	1500 2800 1700 2800
Connection ~ 1500 2900
Wire Wire Line
	1500 2900 1750 2900
Connection ~ 1500 3000
Wire Wire Line
	1500 3000 1750 3000
Connection ~ 1500 3100
Wire Wire Line
	1500 3100 1750 3100
Connection ~ 1500 3200
Wire Wire Line
	1500 3200 1750 3200
Connection ~ 1500 3300
Wire Wire Line
	1500 3300 1400 3300
Connection ~ 1500 3400
Wire Wire Line
	1500 3400 2100 3400
Connection ~ 1500 3500
Wire Wire Line
	1500 3500 1700 3500
Connection ~ 1500 3600
Wire Wire Line
	1500 3600 1700 3600
Connection ~ 1500 3700
Wire Wire Line
	1500 3700 1700 3700
Connection ~ 1500 3800
Wire Wire Line
	1500 3800 1700 3800
Connection ~ 1500 3900
Wire Wire Line
	1500 3900 1700 3900
Connection ~ 1500 4000
Wire Wire Line
	1500 4000 1700 4000
Connection ~ 1500 4100
Wire Wire Line
	1500 4100 1700 4100
Connection ~ 1500 4950
Wire Wire Line
	1500 4950 1700 4950
Connection ~ 1500 5050
Wire Wire Line
	1500 5050 1700 5050
Connection ~ 1500 5150
Wire Wire Line
	1500 5150 1700 5150
Connection ~ 1500 5250
Wire Wire Line
	1500 5250 1400 5250
Connection ~ 1500 5350
Wire Wire Line
	1500 5350 1700 5350
Connection ~ 1500 5450
Wire Wire Line
	1500 5450 1700 5450
Connection ~ 1500 5550
Wire Wire Line
	1500 5550 1700 5550
Connection ~ 1500 5650
Wire Wire Line
	1500 5650 1700 5650
Connection ~ 1500 5750
Wire Wire Line
	1500 5750 1700 5750
Connection ~ 1500 5850
Wire Wire Line
	1500 5850 1700 5850
Connection ~ 1500 5950
Wire Wire Line
	1500 5950 1700 5950
Connection ~ 1500 6050
Wire Wire Line
	1500 6050 1700 6050
Connection ~ 1500 6150
Wire Wire Line
	1500 6150 1700 6150
Connection ~ 1500 6250
Wire Wire Line
	1500 6250 1700 6250
Connection ~ 1500 6350
Wire Wire Line
	1500 6350 1700 6350
Connection ~ 1500 6450
Wire Wire Line
	1500 6450 1700 6450
Connection ~ 1500 6550
Wire Wire Line
	1500 6550 1700 6550
Connection ~ 1500 6650
Wire Wire Line
	1500 6650 1700 6650
Connection ~ 1500 6750
Wire Wire Line
	1500 6750 1700 6750
Connection ~ 1500 6850
Wire Wire Line
	1500 6850 1700 6850
Connection ~ 1500 6950
Wire Wire Line
	1500 6950 1700 6950
Connection ~ 1500 7050
Wire Wire Line
	1500 7050 1700 7050
Connection ~ 1500 7150
Wire Wire Line
	1500 7150 1700 7150
Connection ~ 1500 7250
Wire Wire Line
	1500 7250 1700 7250
Connection ~ 1850 3000
Wire Wire Line
	1850 3000 2000 3000
$Comp
L Connector_Generic2:Conn_02x06_Top_Bottom J1
U 1 1 5BFD2E79
P 5100 2800
F 0 "J1" H 5150 3217 50  0000 C CNN
F 1 "Conn_02x06" H 5150 3126 50  0000 C CNN
F 2 "" H 5100 2800 50  0001 C CNN
F 3 "" H 5100 2800 50  0001 C CNN
	1    5100 2800
	1    0    0    -1  
$EndComp
Connection ~ 6100 2150
Wire Wire Line
	6100 2150 6100 2000
$Comp
L PropIO-V2-rescue:JUMPER3 JP1
U 1 1 5CD72B9B
P 5150 2100
F 0 "JP1" H 5200 2000 40  0000 L CNN
F 1 "NORM/LOAD" H 5150 2200 40  0000 C BNN
F 2 "PIN_ARRAY_3X1" H 5150 2100 60  0001 C CNN
F 3 "" H 5150 2100 60  0001 C CNN
	1    5150 2100
	1    0    0    1   
$EndComp
Wire Wire Line
	4450 2100 4900 2100
Wire Wire Line
	5400 2100 5400 2300
Wire Wire Line
	6500 2800 5800 2800
Wire Wire Line
	5800 2800 5800 2600
Wire Wire Line
	5800 2600 5400 2600
Wire Wire Line
	6500 2900 5750 2900
Wire Wire Line
	5750 2900 5750 2700
Wire Wire Line
	5750 2700 5400 2700
Wire Wire Line
	6500 3000 5400 3000
Wire Wire Line
	6500 3100 5400 3100
$Comp
L Connector_Generic2:Conn_02x06_Top_Bottom J2
U 1 1 5D383AC5
P 5150 3650
F 0 "J2" H 5200 4067 50  0000 C CNN
F 1 "Conn_02x06" H 5200 3976 50  0000 C CNN
F 2 "" H 5150 3650 50  0001 C CNN
F 3 "" H 5150 3650 50  0001 C CNN
	1    5150 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3450 5450 3450
Wire Wire Line
	5450 3450 5450 3200
Wire Wire Line
	5450 3200 6500 3200
Wire Wire Line
	6500 3300 5500 3300
Wire Wire Line
	5500 3300 5500 3550
Wire Wire Line
	5400 3550 5500 3550
Wire Wire Line
	5450 3850 5950 3850
Wire Wire Line
	5950 3850 5950 3400
Wire Wire Line
	5950 3400 6500 3400
Wire Wire Line
	5450 3950 6000 3950
Wire Wire Line
	6000 3500 6000 3950
$Comp
L Connector_Generic2:Conn_02x06_Top_Bottom J3
U 1 1 5DAEC9C2
P 5150 4550
F 0 "J3" H 5200 4967 50  0000 C CNN
F 1 "Conn_02x06" H 5200 4876 50  0000 C CNN
F 2 "" H 5150 4550 50  0001 C CNN
F 3 "" H 5150 4550 50  0001 C CNN
	1    5150 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4300 6050 4300
Wire Wire Line
	6500 4200 6000 4200
Wire Wire Line
	5450 4850 6050 4850
Wire Wire Line
	6050 4300 6050 4850
Wire Wire Line
	5450 4750 6000 4750
Wire Wire Line
	6000 4200 6000 4750
Wire Wire Line
	6500 4100 5950 4100
Wire Wire Line
	5950 4100 5950 4450
Wire Wire Line
	5950 4450 5450 4450
Wire Wire Line
	5450 4350 5900 4350
Wire Wire Line
	5900 4350 5900 4000
Wire Wire Line
	5900 4000 6500 4000
Wire Wire Line
	5400 2300 10000 2300
$Comp
L Device:R R24
U 1 1 5E27D8E6
P 5150 1750
F 0 "R24" H 5220 1796 50  0000 L CNN
F 1 "1K" H 5220 1705 50  0000 L CNN
F 2 "" V 5080 1750 50  0001 C CNN
F 3 "~" H 5150 1750 50  0001 C CNN
	1    5150 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2000 5150 1900
Wire Wire Line
	5600 1150 5600 1550
Wire Wire Line
	5600 2150 6100 2150
Wire Wire Line
	5150 1600 5150 1550
Wire Wire Line
	5150 1550 5600 1550
Connection ~ 5600 1550
Wire Wire Line
	5600 1550 5600 2150
$Comp
L power:VDD #PWR?
U 1 1 5E4E345C
P 5700 5500
F 0 "#PWR?" H 5700 5350 50  0001 C CNN
F 1 "VDD" H 5717 5673 50  0000 C CNN
F 2 "" H 5700 5500 50  0001 C CNN
F 3 "" H 5700 5500 50  0001 C CNN
	1    5700 5500
	1    0    0    1   
$EndComp
Wire Wire Line
	5400 2900 5550 2900
Wire Wire Line
	5550 2900 5550 3750
$Comp
L power:GND #PWR?
U 1 1 5E6183C9
P 5550 5200
F 0 "#PWR?" H 5550 4950 50  0001 C CNN
F 1 "GND" H 5555 5027 50  0000 C CNN
F 2 "" H 5550 5200 50  0001 C CNN
F 3 "" H 5550 5200 50  0001 C CNN
	1    5550 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 2800 5700 2800
Wire Wire Line
	5700 2800 5700 3650
Wire Wire Line
	5450 3650 5700 3650
Connection ~ 5700 3650
Wire Wire Line
	5700 3650 5700 4550
Wire Wire Line
	5450 3750 5550 3750
Connection ~ 5550 3750
Wire Wire Line
	5550 3750 5550 4650
Wire Wire Line
	5450 4550 5700 4550
Connection ~ 5700 4550
Wire Wire Line
	5700 4550 5700 5500
Wire Wire Line
	5450 4650 5550 4650
Connection ~ 5550 4650
Wire Wire Line
	4300 2600 4900 2600
Wire Wire Line
	4300 2700 4900 2700
Wire Wire Line
	4300 3000 4900 3000
Wire Wire Line
	4300 3100 4900 3100
Wire Wire Line
	4350 3450 4950 3450
Wire Wire Line
	4350 3550 4950 3550
Wire Wire Line
	4350 3850 4950 3850
Wire Wire Line
	4350 3950 4950 3950
Wire Wire Line
	4350 4350 4950 4350
Wire Wire Line
	4350 4450 4950 4450
Wire Wire Line
	4350 4750 4950 4750
Wire Wire Line
	4350 4850 4950 4850
Wire Wire Line
	4900 2800 4650 2800
Wire Wire Line
	4900 2900 4800 2900
Wire Wire Line
	4800 2900 4800 3750
Wire Wire Line
	4800 5100 5550 5100
Wire Wire Line
	5550 4650 5550 5100
Connection ~ 5550 5100
Wire Wire Line
	5550 5100 5550 5200
$Comp
L power:VCC #PWR?
U 1 1 5EFAE88A
P 4650 5500
F 0 "#PWR?" H 4650 5350 50  0001 C CNN
F 1 "VCC" H 4667 5673 50  0000 C CNN
F 2 "" H 4650 5500 50  0001 C CNN
F 3 "" H 4650 5500 50  0001 C CNN
	1    4650 5500
	1    0    0    1   
$EndComp
Wire Wire Line
	4650 5500 4650 4550
Wire Wire Line
	4950 3650 4650 3650
Connection ~ 4650 3650
Wire Wire Line
	4650 3650 4650 2800
Wire Wire Line
	4950 4550 4650 4550
Connection ~ 4650 4550
Wire Wire Line
	4650 4550 4650 3650
Wire Wire Line
	4950 4650 4800 4650
Connection ~ 4800 4650
Wire Wire Line
	4800 4650 4800 5100
Wire Wire Line
	4950 3750 4800 3750
Connection ~ 4800 3750
Wire Wire Line
	4800 3750 4800 4650
$EndSCHEMATC
