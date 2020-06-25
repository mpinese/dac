<QucsStudio Schematic 2.5.7>
<Properties>
  <View=-180,-46,1730,1159,0.846154,0,110>
  <Grid=10,10,1>
  <DataSet=emi_filter.dat>
  <DataDisplay=emi_filter.dpl>
  <OpenDisplay=1>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <.SP SP1 1 70 0 0 60 0 0 "log" 1 "1Hz" 1 "100MHz" 1 "801" 1 "no" 0 "1" 0 "2" 0 "none" 0>
  <GND * 1 80 330 0 0 0 0>
  <C C7 1 190 300 17 -26 0 1 "7.623�F" 1 "" 0 "neutral" 0 "SMD0603" 0>
  <GND * 1 190 330 0 0 0 0>
  <L L4 1 260 220 -26 10 0 0 "15.25�H" 1 "" 0 "SELF-WE-PD3S" 0>
  <C C8 1 260 180 -26 -48 0 0 "13.85nF" 1 "" 0 "neutral" 0 "SMD0603" 0>
  <C C9 1 330 300 17 -26 0 1 "7.623�F" 1 "" 0 "neutral" 0 "SMD0603" 0>
  <GND * 1 330 330 0 0 0 0>
  <GND * 1 440 330 0 0 0 0>
  <Pac P1 1 80 300 18 -26 0 0 "1" 1 "1 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "SUBCLICK" 0>
  <Pac P2 1 440 300 18 -26 0 0 "2" 1 "1 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "SUBCLICK" 0>
  <.MC MC1 1 660 30 0 61 0 0 "SP1" 1 "20" 1>
  <GND * 1 -80 770 0 0 0 0>
  <Pac P3 1 -80 740 18 -26 0 0 "3" 1 "1 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "SUBCLICK" 0>
  <C C10 1 60 850 17 -26 0 1 "tol(6.8�F,20,1)" 1 "" 0 "neutral" 0 "SMD0603" 0>
  <R R2 1 60 770 15 -26 0 1 "0.8" 1 "26.85" 0 "0" 0 "0" 0 "26.85" 0 "european" 0 "SMD0603" 0>
  <GND * 1 180 940 0 0 0 0>
  <GND * 1 240 820 0 0 0 0>
  <SPfile X1 1 300 810 21 -26 0 3 "CL31B225KBHNFN_Series_Precise_DC12V_25degC.s2p" 1 "polar" 0 "linear" 0 "short" 0 "no" 0 "2" 0 "block" 0 "SOT23" 0>
  <R R1 1 550 660 -26 15 0 0 "0.198" 1 "26.85" 0 "0" 0 "0" 0 "26.85" 0 "european" 0 "SMD0603" 0>
  <L L5 1 650 660 -26 10 0 0 "tol(15uH,20,1)" 1 "" 0 "SELF-WE-PD3S" 0>
  <GND * 1 1420 770 0 0 0 0>
  <Pac P4 1 1420 740 18 -26 0 0 "4" 1 "1 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "SUBCLICK" 0>
  <C C12 1 960 850 17 -26 0 1 "tol(6.8�F,20,1)" 1 "" 0 "neutral" 0 "SMD0603" 0>
  <R R3 1 960 770 15 -26 0 1 "0.8" 1 "26.85" 0 "0" 0 "0" 0 "26.85" 0 "european" 0 "SMD0603" 0>
  <GND * 1 1080 940 0 0 0 0>
  <GND * 1 1140 820 0 0 0 0>
  <SPfile X2 1 1200 810 21 -26 0 3 "CL31B225KBHNFN_Series_Precise_DC12V_25degC.s2p" 1 "polar" 0 "linear" 0 "short" 0 "no" 0 "2" 0 "block" 0 "SOT23" 0>
  <C C11 1 620 520 -26 -48 0 0 "tol(15nF,10,1)" 1 "" 0 "neutral" 0 "SMD0603" 0>
</Components>
<Wires>
  <80 220 80 270 "" 0 0 0 "">
  <80 220 190 220 "" 0 0 0 "">
  <190 220 190 270 "" 0 0 0 "">
  <190 220 230 220 "" 0 0 0 "">
  <290 220 330 220 "" 0 0 0 "">
  <230 180 230 220 "" 0 0 0 "">
  <290 180 290 220 "" 0 0 0 "">
  <330 220 330 270 "" 0 0 0 "">
  <440 220 440 270 "" 0 0 0 "">
  <330 220 440 220 "" 0 0 0 "">
  <-80 660 180 660 "" 0 0 0 "">
  <-80 660 -80 710 "" 0 0 0 "">
  <60 880 60 920 "" 0 0 0 "">
  <60 800 60 820 "" 0 0 0 "">
  <180 920 180 940 "" 0 0 0 "">
  <60 920 180 920 "" 0 0 0 "">
  <180 920 300 920 "" 0 0 0 "">
  <180 700 300 700 "" 0 0 0 "">
  <180 660 180 700 "" 0 0 0 "">
  <60 700 60 740 "" 0 0 0 "">
  <60 700 180 700 "" 0 0 0 "">
  <240 810 240 820 "" 0 0 0 "">
  <240 810 270 810 "" 0 0 0 "">
  <300 700 300 780 "" 0 0 0 "">
  <300 840 300 920 "" 0 0 0 "">
  <780 660 1080 660 "" 0 0 0 "">
  <180 660 440 660 "" 0 0 0 "">
  <440 520 590 520 "" 0 0 0 "">
  <440 520 440 660 "" 0 0 0 "">
  <650 520 780 520 "" 0 0 0 "">
  <780 520 780 660 "" 0 0 0 "">
  <440 660 520 660 "" 0 0 0 "">
  <680 660 780 660 "" 0 0 0 "">
  <580 660 620 660 "" 0 0 0 "">
  <1420 660 1420 710 "" 0 0 0 "">
  <960 880 960 920 "" 0 0 0 "">
  <960 800 960 820 "" 0 0 0 "">
  <1080 920 1080 940 "" 0 0 0 "">
  <960 920 1080 920 "" 0 0 0 "">
  <1080 920 1200 920 "" 0 0 0 "">
  <960 700 960 740 "" 0 0 0 "">
  <960 700 1080 700 "" 0 0 0 "">
  <1140 810 1140 820 "" 0 0 0 "">
  <1140 810 1170 810 "" 0 0 0 "">
  <1200 700 1200 780 "" 0 0 0 "">
  <1200 840 1200 920 "" 0 0 0 "">
  <1080 660 1420 660 "" 0 0 0 "">
  <1080 700 1200 700 "" 0 0 0 "">
  <1080 660 1080 700 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 270 30 12 #000000 0 "Chebyshev 2 lowpass filter of order 3  \n 30kHz cutoff/center frequency \n impedance matching Z_{IN}=1\\Omega, Z_{OUT}=1\\Omega">
  <Text -25 991 12 #000000 0 "EKYB101ELL6R8ME11D">
  <Text 215 991 12 #000000 0 "CL31B225KBHNFNE">
  <Text 525 611 12 #000000 0 "NRS5020T150MMGJ">
  <Text 875 991 12 #000000 0 "EKYB101ELL6R8ME11D">
  <Text 1115 991 12 #000000 0 "CL31B225KBHNFNE">
  <Text 565 431 12 #000000 0 "885012207123">
  <Text 1295 621 12 #000000 0 "Add 4700-008MLF">
</Paintings>