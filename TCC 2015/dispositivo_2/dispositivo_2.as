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
# 3 "D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 2\Dispositivo_2.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 2\Dispositivo_2.c"
	dw 0xFFFC & 0xFFF7 & 0xFFEF & 0xFFFF ;#
	FNCALL	_main,_T1_init
	FNROOT	_main
	FNCALL	intlevel1,_interrupts
	global	intlevel1
	FNROOT	intlevel1
	global	_cont
	global	_enviar
	global	_flag
	global	_bt_flag
	global	_recebeu
	global	_testa
	global	_TMR1
psect	text82,local,class=CODE,delta=2
global __ptext82
__ptext82:
_TMR1	set	14
	global	_INTCON
_INTCON	set	11
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_T1CON
_T1CON	set	16
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_INTF
_INTF	set	89
	global	_RA0
_RA0	set	40
	global	_RA4
_RA4	set	44
	global	_TMR1IF
_TMR1IF	set	96
	global	_TMR1ON
_TMR1ON	set	128
	global	_OSCCON
_OSCCON	set	143
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_INTEDG
_INTEDG	set	1038
	global	_TMR1IE
_TMR1IE	set	1120
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
	file	"Dispositivo_2.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bitbssCOMMON,class=COMMON,bit,space=1
global __pbitbssCOMMON
__pbitbssCOMMON:
_bt_flag:
       ds      1

_recebeu:
       ds      1

_testa:
       ds      1

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_cont:
       ds      1

_enviar:
       ds      1

_flag:
       ds      1

; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_interrupts
?_interrupts:	; 0 bytes @ 0x0
	global	??_interrupts
??_interrupts:	; 0 bytes @ 0x0
	global	?_T1_init
?_T1_init:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	4
	global	??_T1_init
??_T1_init:	; 0 bytes @ 0x4
	global	??_main
??_main:	; 0 bytes @ 0x4
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 3, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6      10
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
;; Critical Paths under _interrupts in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _interrupts in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _interrupts in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _interrupts in BANK2
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
;;                                              4 COMMON     2     2      0
;;                            _T1_init
;; ---------------------------------------------------------------------------------
;; (1) _T1_init                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (2) _interrupts                                           4     4      0       0
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _T1_init
;;
;; _interrupts (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       1       0        7.1%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      6       A       1       71.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;BANK0               50      0       0       3        0.0%
;;BITBANK1            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK1               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK2            50      0       0       6        0.0%
;;BANK2               50      0       0       7        0.0%
;;ABS                  0      0       A       8        0.0%
;;BITBANK0            50      0       0       9        0.0%
;;DATA                 0      0       B      10        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 54 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 2\Dispositivo_2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_T1_init
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 2\Dispositivo_2.c"
	line	54
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l3029:	
;Dispositivo_2.c: 55: OSCCON=0b01110000;
	movlw	(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	56
	
l3031:	
;Dispositivo_2.c: 56: ANSEL=0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(286)^0100h	;volatile
	line	57
	
l3033:	
;Dispositivo_2.c: 57: ANSELH=0;
	clrf	(287)^0100h	;volatile
	line	58
;Dispositivo_2.c: 58: TRISA=0b00000101;
	movlw	(05h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	59
	
l3035:	
;Dispositivo_2.c: 59: TRISB=0;
	clrf	(134)^080h	;volatile
	line	60
	
l3037:	
;Dispositivo_2.c: 60: TRISC=0;
	clrf	(135)^080h	;volatile
	line	61
	
l3039:	
;Dispositivo_2.c: 61: PORTA=PORTB=PORTC=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	clrf	(6)	;volatile
	clrf	(5)	;volatile
	line	62
	
l3041:	
;Dispositivo_2.c: 62: INTCON=0b11010000;
	movlw	(0D0h)
	movwf	(11)	;volatile
	line	63
	
l3043:	
;Dispositivo_2.c: 63: INTEDG=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1038/8)^080h,(1038)&7
	line	64
	
l3045:	
;Dispositivo_2.c: 64: T1_init();
	fcall	_T1_init
	line	65
	
l3047:	
;Dispositivo_2.c: 65: _delay((unsigned long)((5)*(8000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_main+0)+0+1),f
	movlw	251
movwf	((??_main+0)+0),f
u2307:
	decfsz	((??_main+0)+0),f
	goto	u2307
	decfsz	((??_main+0)+0+1),f
	goto	u2307
	nop2
opt asmopt_on

	goto	l3049
	line	67
;Dispositivo_2.c: 67: while(1){
	
l913:	
	line	68
	
l3049:	
;Dispositivo_2.c: 68: if(testa){
	btfss	(_testa/8),(_testa)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l3049
u2280:
	line	69
	
l3051:	
;Dispositivo_2.c: 69: if(RA0){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l3049
u2290:
	line	70
	
l3053:	
;Dispositivo_2.c: 70: cont++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_cont),f
	line	71
	
l3055:	
;Dispositivo_2.c: 71: testa=0;
	bcf	(_testa/8),(_testa)&7
	goto	l3049
	line	72
	
l915:	
	goto	l3049
	line	73
	
l914:	
	goto	l3049
	line	74
	
l916:	
	line	67
	goto	l3049
	
l917:	
	line	75
	
l918:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_T1_init
psect	text83,local,class=CODE,delta=2
global __ptext83
__ptext83:

;; *************** function _T1_init *****************
;; Defined at:
;;		line 47 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 2\Dispositivo_2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text83
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 2\Dispositivo_2.c"
	line	47
	global	__size_of_T1_init
	__size_of_T1_init	equ	__end_of_T1_init-_T1_init
	
_T1_init:	
	opt	stack 6
; Regs used in _T1_init: [wreg]
	line	48
	
l2165:	
;Dispositivo_2.c: 48: T1CON=0b00110100;
	movlw	(034h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(16)	;volatile
	line	49
	
l2167:	
;Dispositivo_2.c: 49: TMR1IF=0;
	bcf	(96/8),(96)&7
	line	50
	
l2169:	
;Dispositivo_2.c: 50: TMR1IE=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	51
;Dispositivo_2.c: 51: TMR1=37536;
	movlw	low(092A0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(14)	;volatile
	movlw	high(092A0h)
	movwf	((14))+1	;volatile
	line	52
	
l910:	
	return
	opt stack 0
GLOBAL	__end_of_T1_init
	__end_of_T1_init:
;; =============== function _T1_init ends ============

	signat	_T1_init,88
	global	_interrupts
psect	text84,local,class=CODE,delta=2
global __ptext84
__ptext84:

;; *************** function _interrupts *****************
;; Defined at:
;;		line 21 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 2\Dispositivo_2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          4       0       0       0
;;      Totals:         4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text84
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 2\Dispositivo_2.c"
	line	21
	global	__size_of_interrupts
	__size_of_interrupts	equ	__end_of_interrupts-_interrupts
	
_interrupts:	
	opt	stack 6
; Regs used in _interrupts: [wreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_interrupts+0)
	movf	fsr0,w
	movwf	(??_interrupts+1)
	movf	pclath,w
	movwf	(??_interrupts+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_interrupts+3)
	ljmp	_interrupts
psect	text84
	line	22
	
i1l2141:	
;Dispositivo_2.c: 22: if(INTF){
	btfss	(89/8),(89)&7
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l901
u1_20:
	line	23
	
i1l2143:	
;Dispositivo_2.c: 23: testa=1;
	bsf	(_testa/8),(_testa)&7
	line	24
	
i1l2145:	
;Dispositivo_2.c: 24: if(cont){
	movf	(_cont),w
	skipz
	goto	u2_20
	goto	i1l902
u2_20:
	line	25
	
i1l2147:	
;Dispositivo_2.c: 25: recebeu=1;
	bsf	(_recebeu/8),(_recebeu)&7
	line	26
	
i1l902:	
	line	27
;Dispositivo_2.c: 26: }
;Dispositivo_2.c: 27: TMR1ON=1;
	bsf	(128/8),(128)&7
	line	28
;Dispositivo_2.c: 28: INTF=0;
	bcf	(89/8),(89)&7
	line	29
	
i1l901:	
	line	30
;Dispositivo_2.c: 29: }
;Dispositivo_2.c: 30: if(TMR1IF){
	btfss	(96/8),(96)&7
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l907
u3_20:
	line	31
	
i1l2149:	
;Dispositivo_2.c: 31: if(recebeu){
	btfss	(_recebeu/8),(_recebeu)&7
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l2159
u4_20:
	line	32
	
i1l2151:	
;Dispositivo_2.c: 32: if(cont==1){
	movf	(_cont),w
	xorlw	01h
	skipz
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l2155
u5_20:
	line	33
	
i1l2153:	
;Dispositivo_2.c: 33: RA4=1;
	bsf	(44/8),(44)&7
	goto	i1l2155
	line	34
	
i1l905:	
	line	35
	
i1l2155:	
;Dispositivo_2.c: 34: }
;Dispositivo_2.c: 35: if(cont==2){
	movf	(_cont),w
	xorlw	02h
	skipz
	goto	u6_21
	goto	u6_20
u6_21:
	goto	i1l906
u6_20:
	line	36
	
i1l2157:	
;Dispositivo_2.c: 36: RA4=0;
	bcf	(44/8),(44)&7
	line	37
	
i1l906:	
	line	38
;Dispositivo_2.c: 37: }
;Dispositivo_2.c: 38: cont=0;
	clrf	(_cont)
	line	39
;Dispositivo_2.c: 39: recebeu=0;
	bcf	(_recebeu/8),(_recebeu)&7
	goto	i1l2159
	line	40
	
i1l904:	
	line	41
	
i1l2159:	
;Dispositivo_2.c: 40: }
;Dispositivo_2.c: 41: TMR1=62536;
	movlw	low(0F448h)
	movwf	(14)	;volatile
	movlw	high(0F448h)
	movwf	((14))+1	;volatile
	line	42
	
i1l2161:	
;Dispositivo_2.c: 42: TMR1ON=0;
	bcf	(128/8),(128)&7
	line	43
	
i1l2163:	
;Dispositivo_2.c: 43: TMR1IF=0;
	bcf	(96/8),(96)&7
	goto	i1l907
	line	44
	
i1l903:	
	line	45
	
i1l907:	
	movf	(??_interrupts+3),w
	movwf	btemp+1
	movf	(??_interrupts+2),w
	movwf	pclath
	movf	(??_interrupts+1),w
	movwf	fsr0
	swapf	(??_interrupts+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_interrupts
	__end_of_interrupts:
;; =============== function _interrupts ends ============

	signat	_interrupts,88
psect	text85,local,class=CODE,delta=2
global __ptext85
__ptext85:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
