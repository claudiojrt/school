opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F690
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 3 "C:\Users\Cláudio\Dropbox\Escola\Programação\Micros\Tarefas\2º Trimestre\2 - PWM\Tarefa_PWM_Fernanda.C"
	psect config,class=CONFIG,delta=2 ;#
# 3 "C:\Users\Cláudio\Dropbox\Escola\Programação\Micros\Tarefas\2º Trimestre\2 - PWM\Tarefa_PWM_Fernanda.C"
	dw 0xFFFC & 0xFFF7 & 0xFFEF & 0xFFFF ;#
	FNROOT	_main
	FNCALL	intlevel1,_batata
	global	intlevel1
	FNROOT	intlevel1
	global	_soma
	global	_troca
	global	_CCP1CON
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_CCP1CON	set	23
	global	_CCPR1L
_CCPR1L	set	21
	global	_INTCON
_INTCON	set	11
	global	_PORTA
_PORTA	set	5
	global	_T2CON
_T2CON	set	18
	global	_TMR2
_TMR2	set	17
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RA0
_RA0	set	40
	global	_RABIF
_RABIF	set	88
	global	_TMR2IF
_TMR2IF	set	97
	global	_TMR2ON
_TMR2ON	set	146
	global	_OSCCON
_OSCCON	set	143
	global	_PR2
_PR2	set	146
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_IOCA0
_IOCA0	set	1200
	global	_TMR2IE
_TMR2IE	set	1121
	global	_nRABPU
_nRABPU	set	1039
	global	_ANSEL
_ANSEL	set	286
	global	_ANSELH
_ANSELH	set	287
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
	file	"Tarefa_PWM.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bitbssCOMMON,class=COMMON,bit,space=1
global __pbitbssCOMMON
__pbitbssCOMMON:
_soma:
       ds      1

_troca:
       ds      1

; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_batata
?_batata:	; 0 bytes @ 0x0
	global	??_batata
??_batata:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	5
	global	??_main
??_main:	; 0 bytes @ 0x5
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7       8
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK2           80      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _batata in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _batata in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _batata in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _batata in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0       0
;;                                              5 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (1) _batata                                               5     5      0       0
;;                                              0 COMMON     5     5      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;
;; _batata (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       1       0        7.1%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      7       8       1       57.1%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       0       2        0.0%
;;BANK0               50      0       0       3        0.0%
;;BITBANK1            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK1               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK2            50      0       0       6        0.0%
;;BANK2               50      0       0       7        0.0%
;;ABS                  0      0       8       8        0.0%
;;BITBANK0            50      0       0       9        0.0%
;;DATA                 0      0       8      10        0.0%

	global	_main
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 59 in file "C:\Users\Cláudio\Dropbox\Escola\Programação\Micros\Tarefas\2º Trimestre\2 - PWM\Tarefa_PWM_Fernanda.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Cláudio\Dropbox\Escola\Programação\Micros\Tarefas\2º Trimestre\2 - PWM\Tarefa_PWM_Fernanda.C"
	line	59
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2]
	line	60
	
l3042:	
;Tarefa_PWM_Fernanda.C: 60: ANSEL=0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(286)^0100h	;volatile
	line	61
;Tarefa_PWM_Fernanda.C: 61: ANSELH=0;
	clrf	(287)^0100h	;volatile
	line	62
	
l3044:	
;Tarefa_PWM_Fernanda.C: 62: TRISA=0b00000001;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	63
	
l3046:	
;Tarefa_PWM_Fernanda.C: 63: TRISB=0;
	clrf	(134)^080h	;volatile
	line	64
	
l3048:	
;Tarefa_PWM_Fernanda.C: 64: TRISC=0;
	clrf	(135)^080h	;volatile
	line	65
	
l3050:	
;Tarefa_PWM_Fernanda.C: 65: OSCCON=0b01010001;
	movlw	(051h)
	movwf	(143)^080h	;volatile
	line	66
	
l3052:	
;Tarefa_PWM_Fernanda.C: 66: nRABPU=0;
	bcf	(1039/8)^080h,(1039)&7
	line	67
	
l3054:	
;Tarefa_PWM_Fernanda.C: 67: INTCON=0b11001000;
	movlw	(0C8h)
	movwf	(11)	;volatile
	line	68
	
l3056:	
;Tarefa_PWM_Fernanda.C: 68: T2CON=0b00000010;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(18)	;volatile
	line	69
;Tarefa_PWM_Fernanda.C: 69: TMR2=0;
	clrf	(17)	;volatile
	line	70
	
l3058:	
;Tarefa_PWM_Fernanda.C: 70: PR2=129;
	movlw	(081h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	71
	
l3060:	
;Tarefa_PWM_Fernanda.C: 71: CCP1CON=0b00001111;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(23)	;volatile
	line	72
	
l3062:	
;Tarefa_PWM_Fernanda.C: 72: CCPR1L=130;
	movlw	(082h)
	movwf	(21)	;volatile
	line	73
	
l3064:	
;Tarefa_PWM_Fernanda.C: 73: TMR2IE=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1121/8)^080h,(1121)&7
	line	74
	
l3066:	
;Tarefa_PWM_Fernanda.C: 74: TMR2IF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(97/8),(97)&7
	line	75
	
l3068:	
;Tarefa_PWM_Fernanda.C: 75: TMR2ON=1;
	bsf	(146/8),(146)&7
	line	76
	
l3070:	
;Tarefa_PWM_Fernanda.C: 76: IOCA0=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1200/8)^080h,(1200)&7
	line	77
	
l3072:	
;Tarefa_PWM_Fernanda.C: 77: troca=0;
	bcf	(_troca/8),(_troca)&7
	line	78
	
l3074:	
;Tarefa_PWM_Fernanda.C: 78: soma=0;
	bcf	(_soma/8),(_soma)&7
	goto	l3076
	line	79
;Tarefa_PWM_Fernanda.C: 79: while(1)
	
l906:	
	line	81
	
l3076:	
;Tarefa_PWM_Fernanda.C: 80: {
;Tarefa_PWM_Fernanda.C: 81: if(RA0==0)
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(40/8),(40)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l3076
u2310:
	line	83
	
l3078:	
;Tarefa_PWM_Fernanda.C: 82: {
;Tarefa_PWM_Fernanda.C: 83: _delay((unsigned long)((100)*(2000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u2337:
	decfsz	((??_main+0)+0),f
	goto	u2337
	decfsz	((??_main+0)+0+1),f
	goto	u2337
	clrwdt
opt asmopt_on

	line	84
;Tarefa_PWM_Fernanda.C: 84: while(RA0==0);
	goto	l908
	
l909:	
	
l908:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l908
u2320:
	goto	l3080
	
l910:	
	line	85
	
l3080:	
;Tarefa_PWM_Fernanda.C: 85: _delay((unsigned long)((100)*(2000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u2347:
	decfsz	((??_main+0)+0),f
	goto	u2347
	decfsz	((??_main+0)+0+1),f
	goto	u2347
	clrwdt
opt asmopt_on

	line	86
	
l3082:	
;Tarefa_PWM_Fernanda.C: 86: IOCA0=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1200/8)^080h,(1200)&7
	goto	l3076
	line	87
	
l907:	
	goto	l3076
	line	88
	
l911:	
	line	79
	goto	l3076
	
l912:	
	line	89
	
l913:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_batata
psect	text71,local,class=CODE,delta=2
global __ptext71
__ptext71:

;; *************** function _batata *****************
;; Defined at:
;;		line 11 in file "C:\Users\Cláudio\Dropbox\Escola\Programação\Micros\Tarefas\2º Trimestre\2 - PWM\Tarefa_PWM_Fernanda.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          5       0       0       0
;;      Totals:         5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text71
	file	"C:\Users\Cláudio\Dropbox\Escola\Programação\Micros\Tarefas\2º Trimestre\2 - PWM\Tarefa_PWM_Fernanda.C"
	line	11
	global	__size_of_batata
	__size_of_batata	equ	__end_of_batata-_batata
	
_batata:	
	opt	stack 7
; Regs used in _batata: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_batata+1)
	movf	fsr0,w
	movwf	(??_batata+2)
	movf	pclath,w
	movwf	(??_batata+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_batata+4)
	ljmp	_batata
psect	text71
	line	12
	
i1l2136:	
;Tarefa_PWM_Fernanda.C: 12: if(RABIF==1 && RA0==0)
	btfss	(88/8),(88)&7
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l2180
u1_20:
	
i1l2138:	
	btfsc	(40/8),(40)&7
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l2180
u2_20:
	line	14
	
i1l2140:	
;Tarefa_PWM_Fernanda.C: 13: {
;Tarefa_PWM_Fernanda.C: 14: if(!troca)
	btfsc	(_troca/8),(_troca)&7
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l894
u3_20:
	line	16
	
i1l2142:	
;Tarefa_PWM_Fernanda.C: 15: {
;Tarefa_PWM_Fernanda.C: 16: if(!soma)
	btfsc	(_soma/8),(_soma)&7
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l2156
u4_20:
	line	18
	
i1l2144:	
;Tarefa_PWM_Fernanda.C: 17: {
;Tarefa_PWM_Fernanda.C: 18: CCPR1L-=6;
	movlw	low(06h)
	subwf	(21),f	;volatile
	line	19
	
i1l2146:	
;Tarefa_PWM_Fernanda.C: 19: CCP1CON=0b00101111;
	movlw	(02Fh)
	movwf	(23)	;volatile
	line	20
	
i1l2148:	
;Tarefa_PWM_Fernanda.C: 20: soma=1;
	bsf	(_soma/8),(_soma)&7
	line	21
	
i1l2150:	
;Tarefa_PWM_Fernanda.C: 21: if(CCPR1L<=1)
	movlw	(02h)
	subwf	(21),w	;volatile
	skipnc
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l2176
u5_20:
	line	23
	
i1l2152:	
;Tarefa_PWM_Fernanda.C: 22: {
;Tarefa_PWM_Fernanda.C: 23: CCPR1L=0;
	clrf	(21)	;volatile
	line	24
	
i1l2154:	
;Tarefa_PWM_Fernanda.C: 24: troca=1;
	bsf	(_troca/8),(_troca)&7
	goto	i1l2176
	line	25
	
i1l896:	
	line	26
;Tarefa_PWM_Fernanda.C: 25: }
;Tarefa_PWM_Fernanda.C: 26: }
	goto	i1l2176
	line	27
	
i1l895:	
	line	29
	
i1l2156:	
;Tarefa_PWM_Fernanda.C: 27: else
;Tarefa_PWM_Fernanda.C: 28: {
;Tarefa_PWM_Fernanda.C: 29: CCPR1L-=7;
	movlw	low(07h)
	subwf	(21),f	;volatile
	line	30
	
i1l2158:	
;Tarefa_PWM_Fernanda.C: 30: CCP1CON=0b00001111;
	movlw	(0Fh)
	movwf	(23)	;volatile
	line	31
	
i1l2160:	
;Tarefa_PWM_Fernanda.C: 31: soma=0;
	bcf	(_soma/8),(_soma)&7
	line	32
	
i1l2162:	
;Tarefa_PWM_Fernanda.C: 32: if(CCPR1L<=1)
	movlw	(02h)
	subwf	(21),w	;volatile
	skipnc
	goto	u6_21
	goto	u6_20
u6_21:
	goto	i1l2176
u6_20:
	line	34
	
i1l2164:	
;Tarefa_PWM_Fernanda.C: 33: {
;Tarefa_PWM_Fernanda.C: 34: CCPR1L=0;
	clrf	(21)	;volatile
	line	35
	
i1l2166:	
;Tarefa_PWM_Fernanda.C: 35: troca=1;
	bsf	(_troca/8),(_troca)&7
	goto	i1l2176
	line	36
	
i1l898:	
	goto	i1l2176
	line	37
	
i1l897:	
	line	38
;Tarefa_PWM_Fernanda.C: 36: }
;Tarefa_PWM_Fernanda.C: 37: }
;Tarefa_PWM_Fernanda.C: 38: }
	goto	i1l2176
	line	39
	
i1l894:	
;Tarefa_PWM_Fernanda.C: 39: else if(troca)
	btfss	(_troca/8),(_troca)&7
	goto	u7_21
	goto	u7_20
u7_21:
	goto	i1l2176
u7_20:
	line	41
	
i1l2168:	
;Tarefa_PWM_Fernanda.C: 40: {
;Tarefa_PWM_Fernanda.C: 41: CCPR1L+=13;
	movlw	(0Dh)
	movwf	(??_batata+0)+0
	movf	(??_batata+0)+0,w
	addwf	(21),f	;volatile
	line	42
	
i1l2170:	
;Tarefa_PWM_Fernanda.C: 42: if(CCPR1L>=129)
	movlw	(081h)
	subwf	(21),w	;volatile
	skipc
	goto	u8_21
	goto	u8_20
u8_21:
	goto	i1l2176
u8_20:
	line	44
	
i1l2172:	
;Tarefa_PWM_Fernanda.C: 43: {
;Tarefa_PWM_Fernanda.C: 44: CCPR1L=130;
	movlw	(082h)
	movwf	(21)	;volatile
	line	45
	
i1l2174:	
;Tarefa_PWM_Fernanda.C: 45: troca=0;
	bcf	(_troca/8),(_troca)&7
	goto	i1l2176
	line	46
	
i1l901:	
	goto	i1l2176
	line	47
	
i1l900:	
	goto	i1l2176
	line	48
	
i1l899:	
	
i1l2176:	
;Tarefa_PWM_Fernanda.C: 46: }
;Tarefa_PWM_Fernanda.C: 47: }
;Tarefa_PWM_Fernanda.C: 48: IOCA0=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1200/8)^080h,(1200)&7
	line	49
;Tarefa_PWM_Fernanda.C: 49: PORTA=PORTA;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(5),w	;volatile
	movwf	(5)	;volatile
	line	50
	
i1l2178:	
;Tarefa_PWM_Fernanda.C: 50: RABIF=0;
	bcf	(88/8),(88)&7
	goto	i1l2180
	line	51
	
i1l893:	
	line	52
	
i1l2180:	
;Tarefa_PWM_Fernanda.C: 51: }
;Tarefa_PWM_Fernanda.C: 52: if(TMR2IF==1)
	btfss	(97/8),(97)&7
	goto	u9_21
	goto	u9_20
u9_21:
	goto	i1l903
u9_20:
	line	54
	
i1l2182:	
;Tarefa_PWM_Fernanda.C: 53: {
;Tarefa_PWM_Fernanda.C: 54: TMR2IF=0;
	bcf	(97/8),(97)&7
	goto	i1l903
	line	55
	
i1l902:	
	line	56
	
i1l903:	
	movf	(??_batata+4),w
	movwf	btemp+1
	movf	(??_batata+3),w
	movwf	pclath
	movf	(??_batata+2),w
	movwf	fsr0
	swapf	(??_batata+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_batata
	__end_of_batata:
;; =============== function _batata ends ============

	signat	_batata,88
psect	text72,local,class=CODE,delta=2
global __ptext72
__ptext72:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
