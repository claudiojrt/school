OSCCON: [-/IRCF2/IRCF1/IRCF0/OSTS/HTS/LTS/SCS]		OPTION_REG: [nRABPU/INTEDG/T0CS/T0SE/PSA/PS2/PS1/PS0]
111 = 8 MHz											INTEDG: 1 = Rising 2 = Falling
110 = 4 MHz											T0CS: 1 = RA2/T0CKI 0 = Fosc/4
101 = 2 MHz											PSA: 1 = PS>WTD 0 = PS>TMR0
100 = 1 MHz											000 = 1:2
011 = 500 kHz										001 = 1:4
010 = 250 kHz										010 = 1:8
001 = 125 kHz										011 = 1:16
000 = 31 kHz (LFINTOSC)								100 = 1:32
													101 = 1:64
INTCON: [GIE/PEIE/T0IE/INTE/RABIE/T0IF/INTF/RABIF]	110 = 1:128
													111 = 1:256

T1CON: [T1GINV/TMR1GE/T1CKPS1/T1CKPS0/T1OSCEN/nT1SYNC/TMR1CS/TMR1ON]
00 = 1:1			10 = 1:4
01 = 1:2			11 = 1:8
TMR1CS: 1 = T1CKI 0 = Fosc/4

T2CON: [-/TOUTPS3/TOUTPS2/TOUTPS1/TOUTPS0/TMR2ON/T2CKPS1/T2CKPS0]
0000 = 1:1 | 0100 = 1:5 | 1000 = 1:9  | 1100 = 1:13		00 = 1:1
0001 = 1:2 | 0101 = 1:6 | 1001 = 1:10 | 1101 = 1:14		01 = 1:4
0010 = 1:3 | 0110 = 1:7 | 1010 = 1:11 | 1110 = 1:15		1x = 1:16
0011 = 1:4 | 0111 = 1:8 | 1011 = 1:12 | 1111 = 1:16

ADCON0: [ADFM/VCFG/CHS3/CHS2/CHS1/CHS0/GO|nDONE/ADON]		
ADFM: 1 = Right 0 = Left									
VCFG: 1 = VRef pin 0 = VDD							ADCON1: [-/ADCS2/ADCS1/ADCS0/-/-/-/-]
0000 = AN0 | 1000 = AN8								000 = Fosc/2
0001 = AN1 | 1001 = AN9								001 = Fosc/8
0010 = AN2 | 1010 = AN10							010 = Fosc/32
0011 = AN3 | 1011 = AN11							x11 = FRC
0100 = AN4 | 1100 = CVRef							100 = Fosc/4
0101 = AN5 | 1101 = 0.6V Fixed Ref					101 = Fosc/16
0110 = AN6 | 1110 = Do not use						110 = Fosc/64
0111 = AN7 | 1111 = Do not use

CCP1CON: [P1M1/P1M0/DC1B1/DC1B0/CCP1M3/CCP1M2/CCP1M1/CCP1M0]
00 = Single output, P1B/P1C/P1D as port pins
01 = Full-Bridge output foward, P1D modulated, P1A active P1B/P1C inactive
10 = Half-Bridge output, P1A, P1B modulated, P1C/P1D as port pins
11 = Full-Bridge output reverse, P1B modulated, P1C active, P1A/P1D inactive
DC1B: LSbs PWM duty
1100 = P1A/P1B/P1C/P1D active-high
1101 = P1A/P1C active-high, P1B/P1D active-low
1110 = P1A/P1C active-low, P1B/P1D active-high
1111 = P1A/P1B/P1C/P1D active-low