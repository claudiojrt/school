opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 10920"

opt pagewidth 120

	opt pm

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
# 15 "D:\Dropbox\Escola\Programação\Micros\Tarefas\2º Trimestre\4 - ADC\Tarefa_ADC.c"
	psect config,class=CONFIG,delta=2 ;#
# 15 "D:\Dropbox\Escola\Programação\Micros\Tarefas\2º Trimestre\4 - ADC\Tarefa_ADC.c"
	dw 0xFFFC & 0xFFF7 & 0xFFEF & 0xFFFF ;#
	FNCALL	_main,_adc_init
	FNCALL	_main,_T1_init
	FNCALL	_main,_lcd_init
	FNCALL	_main,___awdiv
	FNCALL	_main,_printf
	FNCALL	_main,___awmod
	FNCALL	_main,_lcd_goto
	FNCALL	_printf,_putch
	FNCALL	_printf,___bmul
	FNCALL	_printf,_isdigit
	FNCALL	_printf,___lwdiv
	FNCALL	_printf,___lwmod
	FNCALL	_putch,_lcd_putc
	FNCALL	_lcd_init,_Enable
	FNCALL	_lcd_init,_Write
	FNCALL	_lcd_init,_Clear
	FNCALL	_lcd_putc,_Clear
	FNCALL	_lcd_putc,_lcd_goto
	FNCALL	_lcd_putc,_Write
	FNCALL	_lcd_putc,_lcd_putc
	FNCALL	_lcd_goto,_Write
	FNCALL	_Clear,_Write
	FNCALL	_Write,_Enable
	FNROOT	_main
	FNCALL	intlevel1,_interrupts
	global	intlevel1
	FNROOT	intlevel1
	global	_dpowers
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
	line	350
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global	_dpowers
	global	_Temperatura
	global	_Voltimetro
	global	_cont
	global	_set
	global	_TMR1
_TMR1	set	14
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
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
	global	_ADIF
_ADIF	set	102
	global	_GO
_GO	set	249
	global	_RC6
_RC6	set	62
	global	_RC7
_RC7	set	63
	global	_TMR1IF
_TMR1IF	set	96
	global	_TMR1ON
_TMR1ON	set	128
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_ADIE
_ADIE	set	1126
	global	_TMR1IE
_TMR1IE	set	1120
	global	_ANSEL
_ANSEL	set	286
	global	_ANSELH
_ANSELH	set	287
	
STR_2:	
	retlw	10
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	37	;'%'
	retlw	105	;'i'
	retlw	44	;','
	retlw	37	;'%'
	retlw	46	;'.'
	retlw	50	;'2'
	retlw	105	;'i'
	retlw	32	;' '
	retlw	86	;'V'
	retlw	0
psect	strings
	
STR_1:	
	retlw	12
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	37	;'%'
	retlw	105	;'i'
	retlw	39	;'''
	retlw	67	;'C'
	retlw	0
psect	strings
	file	"ADC.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bitbssCOMMON,class=COMMON,bit,space=1
global __pbitbssCOMMON
__pbitbssCOMMON:
_set:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_Temperatura:
       ds      2

_Voltimetro:
       ds      2

_cont:
       ds      1

; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x0
	global	?_isdigit
?_isdigit:	; 1 bit 
	global	?_Enable
?_Enable:	; 0 bytes @ 0x0
	global	?_Write
?_Write:	; 0 bytes @ 0x0
	global	?_Clear
?_Clear:	; 0 bytes @ 0x0
	global	?_lcd_putc
?_lcd_putc:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_putch
?_putch:	; 0 bytes @ 0x0
	global	?_interrupts
?_interrupts:	; 0 bytes @ 0x0
	global	??_interrupts
??_interrupts:	; 0 bytes @ 0x0
	global	?_adc_init
?_adc_init:	; 0 bytes @ 0x0
	global	?_T1_init
?_T1_init:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	2
	global	??_isdigit
??_isdigit:	; 0 bytes @ 0x2
	global	??_Enable
??_Enable:	; 0 bytes @ 0x2
	global	??_Write
??_Write:	; 0 bytes @ 0x2
	global	??_adc_init
??_adc_init:	; 0 bytes @ 0x2
	global	??_T1_init
??_T1_init:	; 0 bytes @ 0x2
	global	?___bmul
?___bmul:	; 1 bytes @ 0x2
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x2
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x2
	global	?___awmod
?___awmod:	; 2 bytes @ 0x2
	global	_isdigit$2081
_isdigit$2081:	; 1 bytes @ 0x2
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x2
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x2
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x2
	ds	1
	global	??___bmul
??___bmul:	; 0 bytes @ 0x3
	global	Write@c
Write@c:	; 1 bytes @ 0x3
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x3
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x3
	ds	1
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x4
	global	??_Clear
??_Clear:	; 0 bytes @ 0x4
	global	lcd_goto@pos
lcd_goto@pos:	; 1 bytes @ 0x4
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x4
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x4
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x4
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x4
	ds	2
	global	??_lcd_putc
??_lcd_putc:	; 0 bytes @ 0x6
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x6
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x6
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x6
	global	??___awmod
??___awmod:	; 0 bytes @ 0x6
	global	lcd_putc@c
lcd_putc@c:	; 1 bytes @ 0x6
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x6
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x6
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x6
	ds	1
	global	??_putch
??_putch:	; 0 bytes @ 0x7
	global	putch@c
putch@c:	; 1 bytes @ 0x7
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x7
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x7
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x8
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x8
	ds	1
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x9
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x9
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	ds	2
	global	?_printf
?_printf:	; 2 bytes @ 0x4
	ds	4
	global	??_printf
??_printf:	; 0 bytes @ 0x8
	ds	2
	global	printf@ap
printf@ap:	; 1 bytes @ 0xA
	ds	1
	global	printf@flag
printf@flag:	; 1 bytes @ 0xB
	ds	1
	global	printf@_val
printf@_val:	; 4 bytes @ 0xC
	ds	4
	global	printf@f
printf@f:	; 1 bytes @ 0x10
	ds	1
	global	printf@prec
printf@prec:	; 1 bytes @ 0x11
	ds	1
	global	printf@c
printf@c:	; 1 bytes @ 0x12
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x13
	ds	5
;;Data sizes: Strings 28, constant 10, data 0, bss 5, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      11
;; BANK0           80     24      29
;; BANK1           80      0       0
;; BANK2           80      0       0

;;
;; Pointer list with targets:

;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; printf@f	PTR const unsigned char  size(1) Largest target is 16
;;		 -> STR_2(CODE[16]), STR_1(CODE[12]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_printf(BANK0[2]), 
;;
;; S1628$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___awdiv
;;   _printf->___lwmod
;;   _printf->___awdiv
;;   _putch->_lcd_putc
;;   _lcd_init->_Clear
;;   _lcd_putc->_Clear
;;   _lcd_goto->_Write
;;   _Clear->_Write
;;   ___lwmod->___lwdiv
;;
;; Critical Paths under _interrupts in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_printf
;;   _printf->___lwmod
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
;;Main: autosize = 0, tempsize = 5, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 5     5      0    2574
;;                                             19 BANK0      5     5      0
;;                           _adc_init
;;                            _T1_init
;;                           _lcd_init
;;                            ___awdiv
;;                             _printf
;;                            ___awmod
;;                           _lcd_goto
;; ---------------------------------------------------------------------------------
;; (1) _printf                                              15    11      4    1824
;;                                              4 BANK0     15    11      4
;;                              _putch
;;                             ___bmul
;;                            _isdigit
;;                            ___lwdiv
;;                            ___lwmod
;;                            ___awdiv (ARG)
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _putch                                                1     1      0     418
;;                                              7 COMMON     1     1      0
;;                           _lcd_putc
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             2     2      0      88
;;                                              6 COMMON     2     2      0
;;                             _Enable
;;                              _Write
;;                              _Clear
;; ---------------------------------------------------------------------------------
;; (3) _lcd_putc                                             1     1      0     396
;;                                              6 COMMON     1     1      0
;;                              _Clear
;;                           _lcd_goto
;;                              _Write
;;                           _lcd_putc
;; ---------------------------------------------------------------------------------
;; (1) _lcd_goto                                             1     1      0      66
;;                                              4 COMMON     1     1      0
;;                              _Write
;; ---------------------------------------------------------------------------------
;; (4) _Clear                                                2     2      0      44
;;                                              4 COMMON     2     2      0
;;                              _Write
;; ---------------------------------------------------------------------------------
;; (2) _Write                                                2     2      0      44
;;                                              2 COMMON     2     2      0
;;                             _Enable
;; ---------------------------------------------------------------------------------
;; (1) _adc_init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _Enable                                               0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) ___awmod                                              6     2      4     296
;;                                              2 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              8     4      4     300
;;                                              2 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              5     1      4     159
;;                                              9 COMMON     1     1      0
;;                                              0 BANK0      4     0      4
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              7     3      4     162
;;                                              2 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (2) ___bmul                                               3     2      1      92
;;                                              2 COMMON     3     2      1
;; ---------------------------------------------------------------------------------
;; (2) _isdigit                                              2     2      0      68
;;                                              2 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _T1_init                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (7) _interrupts                                           2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 7
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _adc_init
;;   _T1_init
;;   _lcd_init
;;     _Enable
;;     _Write
;;       _Enable
;;     _Clear
;;       _Write
;;         _Enable
;;   ___awdiv
;;   _printf
;;     _putch
;;       _lcd_putc
;;         _Clear
;;           _Write
;;             _Enable
;;         _lcd_goto
;;           _Write
;;             _Enable
;;         _Write
;;           _Enable
;;     ___bmul
;;     _isdigit
;;     ___lwdiv
;;     ___lwmod
;;       ___lwdiv (ARG)
;;     ___awdiv (ARG)
;;     ___awmod (ARG)
;;   ___awmod
;;   _lcd_goto
;;     _Write
;;       _Enable
;;
;; _interrupts (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       1       0        7.1%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      A       B       1       78.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       7       2        0.0%
;;BANK0               50     18      1D       3       36.3%
;;BITBANK1            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK1               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK2            50      0       0       6        0.0%
;;BANK2               50      0       0       7        0.0%
;;ABS                  0      0      28       8        0.0%
;;BITBANK0            50      0       0       9        0.0%
;;DATA                 0      0      2F      10        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 56 in file "D:\Dropbox\Escola\Programação\Micros\Tarefas\2º Trimestre\4 - ADC\Tarefa_ADC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       5       0       0
;;      Totals:         0       5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_adc_init
;;		_T1_init
;;		_lcd_init
;;		___awdiv
;;		_printf
;;		___awmod
;;		_lcd_goto
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Dropbox\Escola\Programação\Micros\Tarefas\2º Trimestre\4 - ADC\Tarefa_ADC.c"
	line	56
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	57
	
l3162:	
;Tarefa_ADC.c: 57: ANSEL=0b00000011;
	movlw	(03h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(286)^0100h	;volatile
	line	58
	
l3164:	
;Tarefa_ADC.c: 58: ANSELH=0;
	clrf	(287)^0100h	;volatile
	line	59
	
l3166:	
;Tarefa_ADC.c: 59: TRISA=0b00001011;
	movlw	(0Bh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	60
;Tarefa_ADC.c: 60: TRISB=0;
	clrf	(134)^080h	;volatile
	line	61
;Tarefa_ADC.c: 61: TRISC=0;
	clrf	(135)^080h	;volatile
	line	62
;Tarefa_ADC.c: 62: PORTA=PORTB=PORTC=0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(7)	;volatile
	clrf	(6)	;volatile
	clrf	(5)	;volatile
	line	63
	
l3168:	
;Tarefa_ADC.c: 63: INTCON=0b11000000;
	movlw	(0C0h)
	movwf	(11)	;volatile
	line	64
	
l3170:	
;Tarefa_ADC.c: 64: adc_init();
	fcall	_adc_init
	line	65
	
l3172:	
;Tarefa_ADC.c: 65: T1_init();
	fcall	_T1_init
	line	66
	
l3174:	
;Tarefa_ADC.c: 66: lcd_init();
	fcall	_lcd_init
	line	67
	
l3176:	
;Tarefa_ADC.c: 67: _delay((unsigned long)((5)*(4000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	clrwdt
	opt asmopt_on

	line	70
	
l3178:	
;Tarefa_ADC.c: 70: if(set){
	btfss	(_set/8),(_set)&7
	goto	u1061
	goto	u1060
u1061:
	goto	l3178
u1060:
	line	71
	
l3180:	
;Tarefa_ADC.c: 71: if(ADCON0==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decf	(31),w	;volatile
	skipz
	goto	u1071
	goto	u1070
u1071:
	goto	l3188
u1070:
	line	72
	
l3182:	
;Tarefa_ADC.c: 72: Temperatura+=(ADRESH<<2)+(ADRESL>>6);
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_main+0)+0
	movlw	06h
u1085:
	clrc
	rrf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u1085
	movf	(30),w	;volatile
	movwf	(??_main+1)+0
	clrf	(??_main+1)+0+1
	clrc
	rlf	(??_main+1)+0,f
	rlf	(??_main+1)+1,f
	clrc
	rlf	(??_main+1)+0,f
	rlf	(??_main+1)+1,f
	movf	0+(??_main+0)+0,w
	addwf	0+(??_main+1)+0,w
	movwf	(??_main+3)+0
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_main+1)+0,w
	movwf	1+(??_main+3)+0
	movf	0+(??_main+3)+0,w
	addwf	(_Temperatura),f
	skipnc
	incf	(_Temperatura+1),f
	movf	1+(??_main+3)+0,w
	addwf	(_Temperatura+1),f
	line	73
	
l3184:	
;Tarefa_ADC.c: 73: ADCON0=5;
	movlw	(05h)
	movwf	(31)	;volatile
	line	74
	
l3186:	
;Tarefa_ADC.c: 74: set=0;
	bcf	(_set/8),(_set)&7
	line	75
;Tarefa_ADC.c: 75: }
	goto	l3178
	line	76
	
l3188:	
;Tarefa_ADC.c: 76: else if(ADCON0==5){
	movf	(31),w	;volatile
	xorlw	05h
	skipz
	goto	u1091
	goto	u1090
u1091:
	goto	l3178
u1090:
	line	77
	
l3190:	
;Tarefa_ADC.c: 77: Voltimetro=(ADRESH<<2)+(ADRESL>>6);
	movf	(30),w	;volatile
	movwf	(_Voltimetro)
	clrf	(_Voltimetro+1)
	
l3192:	
	clrc
	rlf	(_Voltimetro),f
	rlf	(_Voltimetro+1),f
	clrc
	rlf	(_Voltimetro),f
	rlf	(_Voltimetro+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_main+0)+0
	movlw	06h
u1105:
	clrc
	rrf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u1105
	movf	0+(??_main+0)+0,w
	addwf	(_Voltimetro),f
	skipnc
	incf	(_Voltimetro+1),f
	line	78
	
l3194:	
;Tarefa_ADC.c: 78: ADCON0=1;
	movlw	(01h)
	movwf	(31)	;volatile
	line	79
	
l3196:	
;Tarefa_ADC.c: 79: set=0;
	bcf	(_set/8),(_set)&7
	line	80
	
l3198:	
;Tarefa_ADC.c: 80: if(++cont>10){
	movlw	(0Bh)
	incf	(_cont),f
	subwf	((_cont)),w
	skipc
	goto	u1111
	goto	u1110
u1111:
	goto	l948
u1110:
	line	81
	
l3200:	
;Tarefa_ADC.c: 81: Temperatura-=45;
	movlw	-45
	addwf	(_Temperatura),f
	skipc
	decf	(_Temperatura+1),f
	line	82
	
l3202:	
;Tarefa_ADC.c: 82: printf("\f      %i'C",Temperatura/20);
	movlw	014h
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(_Temperatura+1),w
	movwf	1+(?___awdiv)+02h
	movf	(_Temperatura),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	movwf	(?_printf+1)
	movf	(0+(?___awdiv)),w
	movwf	(?_printf)
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_printf
	line	83
	
l3204:	
;Tarefa_ADC.c: 83: printf("\n     %i,%.2i V",Voltimetro/50,Voltimetro%50);
	movlw	032h
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(_Voltimetro+1),w
	movwf	1+(?___awdiv)+02h
	movf	(_Voltimetro),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	movwf	(?_printf+1)
	movf	(0+(?___awdiv)),w
	movwf	(?_printf)
	movlw	032h
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	movf	(_Voltimetro+1),w
	movwf	1+(?___awmod)+02h
	movf	(_Voltimetro),w
	movwf	0+(?___awmod)+02h
	fcall	___awmod
	movf	(1+(?___awmod)),w
	movwf	1+(?_printf)+02h
	movf	(0+(?___awmod)),w
	movwf	0+(?_printf)+02h
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_printf
	line	84
	
l3206:	
;Tarefa_ADC.c: 84: lcd_goto(21);
	movlw	(015h)
	fcall	_lcd_goto
	line	85
	
l3208:	
;Tarefa_ADC.c: 85: cont=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_cont)
	line	86
	
l3210:	
;Tarefa_ADC.c: 86: Temperatura=0;
	clrf	(_Temperatura)
	clrf	(_Temperatura+1)
	goto	l3178
	line	89
	
l948:	
	goto	l3178
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	91
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_printf
psect	text497,local,class=CODE,delta=2
global __ptext497
__ptext497:

;; *************** function _printf *****************
;; Defined at:
;;		line 461 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_2(16), STR_1(12), 
;; Auto vars:     Size  Location     Type
;;  f               1   16[BANK0 ] PTR const unsigned char 
;;		 -> STR_2(16), STR_1(12), 
;;  _val            4   12[BANK0 ] struct .
;;  c               1   18[BANK0 ] char 
;;  prec            1   17[BANK0 ] char 
;;  flag            1   11[BANK0 ] unsigned char 
;;  ap              1   10[BANK0 ] PTR void [1]
;;		 -> ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2    4[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       4       0       0
;;      Locals:         0       9       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0      15       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_putch
;;		___bmul
;;		_isdigit
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text497
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	461
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
	opt	stack 1
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;printf@f stored from wreg
	line	537
	movwf	(printf@f)
	
l3088:	
	movlw	(?_printf)&0ffh
	movwf	(printf@ap)
	line	540
	goto	l3160
	line	542
	
l3090:	
	movf	(printf@c),w
	xorlw	025h
	skipnz
	goto	u931
	goto	u930
u931:
	goto	l3094
u930:
	line	545
	
l3092:	
	movf	(printf@c),w
	fcall	_putch
	line	546
	goto	l3160
	line	552
	
l3094:	
	clrf	(printf@flag)
	line	614
	
l3096:	
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Eh
	skipz
	goto	u941
	goto	u940
u941:
	goto	l3108
u940:
	line	616
	
l3098:	
	incf	(printf@f),f
	line	624
	
l3100:	
	clrf	(printf@prec)
	line	625
	goto	l3106
	line	626
	
l3102:	
	movlw	(0Ah)
	movwf	(?___bmul)
	movf	(printf@prec),w
	fcall	___bmul
	movwf	(??_printf+0)+0
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	addwf	0+(??_printf+0)+0,w
	addlw	-48
	movwf	(printf@prec)
	
l3104:	
	incf	(printf@f),f
	line	625
	
l3106:	
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u951
	goto	u950
u951:
	goto	l3102
u950:
	goto	l3112
	line	629
	
l3108:	
	clrf	(printf@prec)
	line	638
	
l3112:	
	movf	(printf@f),w
	incf	(printf@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte          219     7 (fixed)
; jumptable            260     6 (fixed)
; rangetable           110     6 (fixed)
; spacedrange          218     9 (fixed)
; locatedrange         106     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l996
	xorlw	100^0	; case 100
	skipnz
	goto	l3114
	xorlw	105^100	; case 105
	skipnz
	goto	l3114
	goto	l3160
	opt asmopt_on

	line	1254
	
l3114:	
	movf	(printf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(printf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(printf@_val+1)
	
l3116:	
	incf	(printf@ap),f
	incf	(printf@ap),f
	line	1256
	
l3118:	
	btfss	(printf@_val+1),7
	goto	u961
	goto	u960
u961:
	goto	l3124
u960:
	line	1257
	
l3120:	
	movlw	(03h)
	iorwf	(printf@flag),f
	line	1258
	
l3122:	
	comf	(printf@_val),f
	comf	(printf@_val+1),f
	incf	(printf@_val),f
	skipnz
	incf	(printf@_val+1),f
	line	1285
	
l3124:	
	movf	(printf@prec),f
	skipz
	goto	u971
	goto	u970
u971:
	goto	l3130
u970:
	
l3126:	
	movf	((printf@_val+1)),w
	iorwf	((printf@_val)),w
	skipz
	goto	u981
	goto	u980
u981:
	goto	l3130
u980:
	line	1286
	
l3128:	
	incf	(printf@prec),f
	line	1300
	
l3130:	
	clrf	(printf@c)
	incf	(printf@c),f
	line	1301
	
l3136:	
	clrc
	rlf	(printf@c),w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_printf+0)+0
	fcall	stringdir
	movwf	(??_printf+0)+0+1
	movf	1+(??_printf+0)+0,w
	subwf	(printf@_val+1),w
	skipz
	goto	u995
	movf	0+(??_printf+0)+0,w
	subwf	(printf@_val),w
u995:
	skipnc
	goto	u991
	goto	u990
u991:
	goto	l3140
u990:
	goto	l3144
	line	1300
	
l3140:	
	incf	(printf@c),f
	
l3142:	
	movf	(printf@c),w
	xorlw	05h
	skipz
	goto	u1001
	goto	u1000
u1001:
	goto	l3136
u1000:
	line	1334
	
l3144:	
	movf	(printf@c),w
	xorlw	80h
	movwf	(??_printf+0)+0
	movf	(printf@prec),w
	xorlw	80h
	subwf	(??_printf+0)+0
	skipnc
	goto	u1011
	goto	u1010
u1011:
	goto	l3148
u1010:
	line	1335
	
l3146:	
	goto	l3152
	line	1336
	
l3148:	
	movf	(printf@prec),w
	xorlw	80h
	movwf	(??_printf+0)+0
	movf	(printf@c),w
	xorlw	80h
	subwf	(??_printf+0)+0
	skipnc
	goto	u1021
	goto	u1020
u1021:
	goto	l3152
u1020:
	line	1337
	
l3150:	
	movf	(printf@c),w
	movwf	(printf@prec)
	line	1433
	
l3152:	
	movf	(printf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u1031
	goto	u1030
u1031:
	goto	l3158
u1030:
	line	1434
	
l3154:	
	movlw	(02Dh)
	fcall	_putch
	goto	l3158
	line	1484
	
l3156:	
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	clrc
	rlf	(printf@prec),w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lwdiv)
	fcall	stringdir
	movwf	(?___lwdiv+1)
	movf	(printf@_val+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(printf@_val),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(printf@c)
	line	1516
	movf	(printf@c),w
	fcall	_putch
	line	1469
	
l3158:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decf	(printf@prec),f
	incf	((printf@prec)),w
	skipz
	goto	u1041
	goto	u1040
u1041:
	goto	l3156
u1040:
	line	540
	
l3160:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printf@f),w
	incf	(printf@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)
	movf	((printf@c)),f
	skipz
	goto	u1051
	goto	u1050
u1051:
	goto	l3090
u1050:
	line	1533
	
l996:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_putch
psect	text498,local,class=CODE,delta=2
global __ptext498
__ptext498:

;; *************** function _putch *****************
;; Defined at:
;;		line 107 in file "D:\Dropbox\Escola\Programação\Micros\Tarefas\2º Trimestre\4 - ADC\LCD_Claudio.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_putc
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text498
	file	"D:\Dropbox\Escola\Programação\Micros\Tarefas\2º Trimestre\4 - ADC\LCD_Claudio.c"
	line	107
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 1
; Regs used in _putch: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;putch@c stored from wreg
	movwf	(putch@c)
	line	108
	
l2950:	
;LCD_Claudio.c: 108: lcd_putc(c);
	movf	(putch@c),w
	fcall	_lcd_putc
	line	109
	
l933:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_lcd_init
psect	text499,local,class=CODE,delta=2
global __ptext499
__ptext499:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 87 in file "D:\Dropbox\Escola\Programação\Micros\Tarefas\2º Trimestre\4 - ADC\LCD_Claudio.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Enable
;;		_Write
;;		_Clear
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text499
	file	"D:\Dropbox\Escola\Programação\Micros\Tarefas\2º Trimestre\4 - ADC\LCD_Claudio.c"
	line	87
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 3
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	88
	
l2918:	
;LCD_Claudio.c: 88: _delay((unsigned long)((15)*(4000000/4000.0)));
	opt asmopt_off
movlw	20
movwf	((??_lcd_init+0)+0+1),f
	movlw	121
movwf	((??_lcd_init+0)+0),f
u1127:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1127
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1127
	nop2
opt asmopt_on

	line	89
	
l2920:	
;LCD_Claudio.c: 89: PORTC&=0xF0;
	movlw	(0F0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(7),f	;volatile
	line	90
	
l2922:	
;LCD_Claudio.c: 90: PORTC|=0X03;
	movlw	(03h)
	iorwf	(7),f	;volatile
	line	91
	
l2924:	
;LCD_Claudio.c: 91: Enable();
	fcall	_Enable
	line	92
	
l2926:	
;LCD_Claudio.c: 92: _delay((unsigned long)((5)*(4000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_lcd_init+0)+0+1),f
	movlw	125
movwf	((??_lcd_init+0)+0),f
u1137:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1137
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1137
opt asmopt_on

	line	93
	
l2928:	
;LCD_Claudio.c: 93: PORTC&=0xF0;
	movlw	(0F0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(7),f	;volatile
	line	94
	
l2930:	
;LCD_Claudio.c: 94: PORTC|=0X03;
	movlw	(03h)
	iorwf	(7),f	;volatile
	line	95
;LCD_Claudio.c: 95: Enable();
	fcall	_Enable
	line	96
	
l2932:	
;LCD_Claudio.c: 96: _delay((unsigned long)((100)*(4000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_init+0)+0,f
u1147:
decfsz	(??_lcd_init+0)+0,f
	goto	u1147
opt asmopt_on

	line	97
	
l2934:	
;LCD_Claudio.c: 97: PORTC&=0xF0;
	movlw	(0F0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(7),f	;volatile
	line	98
	
l2936:	
;LCD_Claudio.c: 98: PORTC|=0X02;
	bsf	(7)+(1/8),(1)&7	;volatile
	line	99
	
l2938:	
;LCD_Claudio.c: 99: Enable();
	fcall	_Enable
	line	100
	
l2940:	
;LCD_Claudio.c: 100: _delay((unsigned long)((40)*(4000000/4000000.0)));
	opt asmopt_off
movlw	13
movwf	(??_lcd_init+0)+0,f
u1157:
decfsz	(??_lcd_init+0)+0,f
	goto	u1157
opt asmopt_on

	line	101
	
l2942:	
;LCD_Claudio.c: 101: Write(0x28);
	movlw	(028h)
	fcall	_Write
	line	102
	
l2944:	
;LCD_Claudio.c: 102: Write(0x0D);
	movlw	(0Dh)
	fcall	_Write
	line	103
	
l2946:	
;LCD_Claudio.c: 103: Write(0x06);
	movlw	(06h)
	fcall	_Write
	line	104
	
l2948:	
;LCD_Claudio.c: 104: Clear();
	fcall	_Clear
	line	105
	
l930:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_putc
psect	text500,local,class=CODE,delta=2
global __ptext500
__ptext500:

;; *************** function _lcd_putc *****************
;; Defined at:
;;		line 50 in file "D:\Dropbox\Escola\Programação\Micros\Tarefas\2º Trimestre\4 - ADC\LCD_Claudio.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Clear
;;		_lcd_goto
;;		_Write
;;		_lcd_putc
;; This function is called by:
;;		_putch
;; This function uses a non-reentrant model
;;
psect	text500
	file	"D:\Dropbox\Escola\Programação\Micros\Tarefas\2º Trimestre\4 - ADC\LCD_Claudio.c"
	line	50
	global	__size_of_lcd_putc
	__size_of_lcd_putc	equ	__end_of_lcd_putc-_lcd_putc
	
_lcd_putc:	
	opt	stack 1
; Regs used in _lcd_putc: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_putc@c stored from wreg
	movwf	(lcd_putc@c)
	line	51
	
l2896:	
;LCD_Claudio.c: 51: switch (c){
	goto	l2916
	line	53
	
l2898:	
;LCD_Claudio.c: 53: Clear();
	fcall	_Clear
	line	54
;LCD_Claudio.c: 54: break;
	goto	l924
	line	56
	
l2900:	
;LCD_Claudio.c: 56: lcd_goto(0x40);
	movlw	(040h)
	fcall	_lcd_goto
	line	57
;LCD_Claudio.c: 57: break;
	goto	l924
	line	58
;LCD_Claudio.c: 58: case '\r':
	
l920:	
	line	59
;LCD_Claudio.c: 59: RC6 = 0;
	bcf	(62/8),(62)&7
	line	60
	
l2902:	
;LCD_Claudio.c: 60: Write(0x80);
	movlw	(080h)
	fcall	_Write
	line	61
;LCD_Claudio.c: 61: break;
	goto	l924
	line	62
;LCD_Claudio.c: 62: case '\b':
	
l921:	
	line	63
;LCD_Claudio.c: 63: RC6=0;
	bcf	(62/8),(62)&7
	line	64
	
l2904:	
;LCD_Claudio.c: 64: Write(0b0000010000);
	movlw	(010h)
	fcall	_Write
	line	65
	
l2906:	
;LCD_Claudio.c: 65: RC6=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(62/8),(62)&7
	line	66
;LCD_Claudio.c: 66: lcd_putc(32);
	movlw	(020h)
	fcall	_lcd_putc
	line	67
	
l2908:	
;LCD_Claudio.c: 67: RC6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7
	line	68
;LCD_Claudio.c: 68: Write(0b0000010000);
	movlw	(010h)
	fcall	_Write
	line	69
;LCD_Claudio.c: 69: break;
	goto	l924
	line	70
;LCD_Claudio.c: 70: case '\t':
	
l922:	
	line	71
;LCD_Claudio.c: 71: RC6=0;
	bcf	(62/8),(62)&7
	line	72
	
l2910:	
;LCD_Claudio.c: 72: Write(0b0000010100);
	movlw	(014h)
	fcall	_Write
	line	73
;LCD_Claudio.c: 73: Write(0b0000010100);
	movlw	(014h)
	fcall	_Write
	line	74
;LCD_Claudio.c: 74: break;
	goto	l924
	line	75
;LCD_Claudio.c: 75: default:
	
l923:	
	line	76
;LCD_Claudio.c: 76: RC6 = 1;
	bsf	(62/8),(62)&7
	line	77
	
l2912:	
;LCD_Claudio.c: 77: Write( c );
	movf	(lcd_putc@c),w
	fcall	_Write
	line	78
;LCD_Claudio.c: 78: break;
	goto	l924
	line	51
	
l2916:	
	movf	(lcd_putc@c),w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 8 to 13
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
; direct_byte           22    10 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	8^0	; case 8
	skipnz
	goto	l921
	xorlw	9^8	; case 9
	skipnz
	goto	l922
	xorlw	10^9	; case 10
	skipnz
	goto	l2900
	xorlw	12^10	; case 12
	skipnz
	goto	l2898
	xorlw	13^12	; case 13
	skipnz
	goto	l920
	goto	l923
	opt asmopt_on

	line	80
	
l924:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putc
	__end_of_lcd_putc:
;; =============== function _lcd_putc ends ============

	signat	_lcd_putc,4216
	global	_lcd_goto
psect	text501,local,class=CODE,delta=2
global __ptext501
__ptext501:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 82 in file "D:\Dropbox\Escola\Programação\Micros\Tarefas\2º Trimestre\4 - ADC\LCD_Claudio.c"
;; Parameters:    Size  Location     Type
;;  pos             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pos             1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Write
;; This function is called by:
;;		_lcd_putc
;;		_main
;; This function uses a non-reentrant model
;;
psect	text501
	file	"D:\Dropbox\Escola\Programação\Micros\Tarefas\2º Trimestre\4 - ADC\LCD_Claudio.c"
	line	82
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 4
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@pos stored from wreg
	movwf	(lcd_goto@pos)
	line	83
	
l2892:	
;LCD_Claudio.c: 83: RC6 = 0;
	bcf	(62/8),(62)&7
	line	84
	
l2894:	
;LCD_Claudio.c: 84: Write(0x80+pos);
	movf	(lcd_goto@pos),w
	addlw	080h
	fcall	_Write
	line	85
	
l927:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_Clear
psect	text502,local,class=CODE,delta=2
global __ptext502
__ptext502:

;; *************** function _Clear *****************
;; Defined at:
;;		line 38 in file "D:\Dropbox\Escola\Programação\Micros\Tarefas\2º Trimestre\4 - ADC\LCD_Claudio.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Write
;; This function is called by:
;;		_lcd_putc
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text502
	file	"D:\Dropbox\Escola\Programação\Micros\Tarefas\2º Trimestre\4 - ADC\LCD_Claudio.c"
	line	38
	global	__size_of_Clear
	__size_of_Clear	equ	__end_of_Clear-_Clear
	
_Clear:	
	opt	stack 1
; Regs used in _Clear: [wreg+status,2+status,0+pclath+cstack]
	line	39
	
l2886:	
;LCD_Claudio.c: 39: RC6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7
	line	40
	
l2888:	
;LCD_Claudio.c: 40: Write(0x01);
	movlw	(01h)
	fcall	_Write
	line	41
	
l2890:	
;LCD_Claudio.c: 41: _delay((unsigned long)((2)*(4000000/4000.0)));
	opt asmopt_off
movlw	3
movwf	((??_Clear+0)+0+1),f
	movlw	151
movwf	((??_Clear+0)+0),f
u1167:
	decfsz	((??_Clear+0)+0),f
	goto	u1167
	decfsz	((??_Clear+0)+0+1),f
	goto	u1167
	nop2
opt asmopt_on

	line	42
	
l907:	
	return
	opt stack 0
GLOBAL	__end_of_Clear
	__end_of_Clear:
;; =============== function _Clear ends ============

	signat	_Clear,88
	global	_Write
psect	text503,local,class=CODE,delta=2
global __ptext503
__ptext503:

;; *************** function _Write *****************
;; Defined at:
;;		line 28 in file "D:\Dropbox\Escola\Programação\Micros\Tarefas\2º Trimestre\4 - ADC\LCD_Claudio.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Enable
;; This function is called by:
;;		_Clear
;;		_lcd_putc
;;		_lcd_goto
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text503
	file	"D:\Dropbox\Escola\Programação\Micros\Tarefas\2º Trimestre\4 - ADC\LCD_Claudio.c"
	line	28
	global	__size_of_Write
	__size_of_Write	equ	__end_of_Write-_Write
	
_Write:	
	opt	stack 4
; Regs used in _Write: [wreg+status,2+status,0+pclath+cstack]
;Write@c stored from wreg
	movwf	(Write@c)
	line	29
	
l2874:	
;LCD_Claudio.c: 29: PORTC&=0XF0;
	movlw	(0F0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(7),f	;volatile
	line	30
;LCD_Claudio.c: 30: PORTC|=c >> 4;
	swapf	(Write@c),w
	andlw	(0ffh shr 4) & 0ffh
	iorwf	(7),f	;volatile
	line	31
	
l2876:	
;LCD_Claudio.c: 31: Enable();
	fcall	_Enable
	line	32
	
l2878:	
;LCD_Claudio.c: 32: PORTC&=0XF0;
	movlw	(0F0h)
	andwf	(7),f	;volatile
	line	33
	
l2880:	
;LCD_Claudio.c: 33: PORTC|=(c & 0X0F);
	movf	(Write@c),w
	andlw	0Fh
	iorwf	(7),f	;volatile
	line	34
	
l2882:	
;LCD_Claudio.c: 34: Enable();
	fcall	_Enable
	line	35
	
l2884:	
;LCD_Claudio.c: 35: _delay((unsigned long)((40)*(4000000/4000000.0)));
	opt asmopt_off
movlw	13
movwf	(??_Write+0)+0,f
u1177:
decfsz	(??_Write+0)+0,f
	goto	u1177
opt asmopt_on

	line	36
	
l904:	
	return
	opt stack 0
GLOBAL	__end_of_Write
	__end_of_Write:
;; =============== function _Write ends ============

	signat	_Write,4216
	global	_adc_init
psect	text504,local,class=CODE,delta=2
global __ptext504
__ptext504:

;; *************** function _adc_init *****************
;; Defined at:
;;		line 40 in file "D:\Dropbox\Escola\Programação\Micros\Tarefas\2º Trimestre\4 - ADC\Tarefa_ADC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 60/20
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
psect	text504
	file	"D:\Dropbox\Escola\Programação\Micros\Tarefas\2º Trimestre\4 - ADC\Tarefa_ADC.c"
	line	40
	global	__size_of_adc_init
	__size_of_adc_init	equ	__end_of_adc_init-_adc_init
	
_adc_init:	
	opt	stack 6
; Regs used in _adc_init: [wreg]
	line	41
	
l2866:	
;Tarefa_ADC.c: 41: ADCON1=0b01110000;
	movlw	(070h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(159)^080h	;volatile
	line	42
;Tarefa_ADC.c: 42: ADCON0=0b00000001;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(31)	;volatile
	line	43
	
l2868:	
;Tarefa_ADC.c: 43: _delay((unsigned long)((5)*(4000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	clrwdt
	opt asmopt_on

	line	44
	
l2870:	
;Tarefa_ADC.c: 44: ADIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(102/8),(102)&7
	line	45
	
l2872:	
;Tarefa_ADC.c: 45: ADIE=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1126/8)^080h,(1126)&7
	line	46
	
l941:	
	return
	opt stack 0
GLOBAL	__end_of_adc_init
	__end_of_adc_init:
;; =============== function _adc_init ends ============

	signat	_adc_init,88
	global	_Enable
psect	text505,local,class=CODE,delta=2
global __ptext505
__ptext505:

;; *************** function _Enable *****************
;; Defined at:
;;		line 22 in file "D:\Dropbox\Escola\Programação\Micros\Tarefas\2º Trimestre\4 - ADC\LCD_Claudio.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
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
;;		_Write
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text505
	file	"D:\Dropbox\Escola\Programação\Micros\Tarefas\2º Trimestre\4 - ADC\LCD_Claudio.c"
	line	22
	global	__size_of_Enable
	__size_of_Enable	equ	__end_of_Enable-_Enable
	
_Enable:	
	opt	stack 4
; Regs used in _Enable: []
	line	23
	
l2864:	
;LCD_Claudio.c: 23: RC7=1;
	bsf	(63/8),(63)&7
	line	24
;LCD_Claudio.c: 24: _delay((unsigned long)((2)*(4000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	25
;LCD_Claudio.c: 25: RC7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(63/8),(63)&7
	line	26
	
l901:	
	return
	opt stack 0
GLOBAL	__end_of_Enable
	__end_of_Enable:
;; =============== function _Enable ends ============

	signat	_Enable,88
	global	___awmod
psect	text506,local,class=CODE,delta=2
global __ptext506
__ptext506:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] int 
;;  dividend        2    4[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    7[COMMON] unsigned char 
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         4       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text506
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2828:	
	clrf	(___awmod@sign)
	line	9
	
l2830:	
	btfss	(___awmod@dividend+1),7
	goto	u671
	goto	u670
u671:
	goto	l2836
u670:
	line	10
	
l2832:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	
l2834:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	line	13
	
l2836:	
	btfss	(___awmod@divisor+1),7
	goto	u681
	goto	u680
u681:
	goto	l2840
u680:
	line	14
	
l2838:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	15
	
l2840:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u691
	goto	u690
u691:
	goto	l2856
u690:
	line	16
	
l2842:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	17
	goto	l2846
	line	18
	
l2844:	
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	line	19
	incf	(___awmod@counter),f
	line	17
	
l2846:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u701
	goto	u700
u701:
	goto	l2844
u700:
	line	22
	
l2848:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u715
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u715:
	skipc
	goto	u711
	goto	u710
u711:
	goto	l2852
u710:
	line	23
	
l2850:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	24
	
l2852:	
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	line	25
	
l2854:	
	decfsz	(___awmod@counter),f
	goto	u721
	goto	u720
u721:
	goto	l2848
u720:
	line	27
	
l2856:	
	movf	(___awmod@sign),w
	skipz
	goto	u730
	goto	l2860
u730:
	line	28
	
l2858:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	29
	
l2860:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	30
	
l2078:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text507,local,class=CODE,delta=2
global __ptext507
__ptext507:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] int 
;;  dividend        2    4[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    8[COMMON] int 
;;  sign            1    7[COMMON] unsigned char 
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         4       0       0       0
;;      Locals:         4       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text507
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2784:	
	clrf	(___awdiv@sign)
	line	10
	
l2786:	
	btfss	(___awdiv@divisor+1),7
	goto	u601
	goto	u600
u601:
	goto	l2792
u600:
	line	11
	
l2788:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	
l2790:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	14
	
l2792:	
	btfss	(___awdiv@dividend+1),7
	goto	u611
	goto	u610
u611:
	goto	l2798
u610:
	line	15
	
l2794:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2796:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	18
	
l2798:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2800:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u621
	goto	u620
u621:
	goto	l2820
u620:
	line	20
	
l2802:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	21
	goto	l2806
	line	22
	
l2804:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	23
	incf	(___awdiv@counter),f
	line	21
	
l2806:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u631
	goto	u630
u631:
	goto	l2804
u630:
	line	26
	
l2808:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	27
	
l2810:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u645
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u645:
	skipc
	goto	u641
	goto	u640
u641:
	goto	l2816
u640:
	line	28
	
l2812:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2814:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	31
	
l2816:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	32
	
l2818:	
	decfsz	(___awdiv@counter),f
	goto	u651
	goto	u650
u651:
	goto	l2808
u650:
	line	34
	
l2820:	
	movf	(___awdiv@sign),w
	skipz
	goto	u660
	goto	l2824
u660:
	line	35
	
l2822:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	36
	
l2824:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	37
	
l2010:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lwmod
psect	text508,local,class=CODE,delta=2
global __ptext508
__ptext508:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       4       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       4       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text508
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l2764:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u561
	goto	u560
u561:
	goto	l2780
u560:
	line	9
	
l2766:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	10
	goto	l2770
	line	11
	
l2768:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	12
	incf	(___lwmod@counter),f
	line	10
	
l2770:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u571
	goto	u570
u571:
	goto	l2768
u570:
	line	15
	
l2772:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u585
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u585:
	skipc
	goto	u581
	goto	u580
u581:
	goto	l2776
u580:
	line	16
	
l2774:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	17
	
l2776:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	18
	
l2778:	
	decfsz	(___lwmod@counter),f
	goto	u591
	goto	u590
u591:
	goto	l2772
u590:
	line	20
	
l2780:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	21
	
l1883:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text509,local,class=CODE,delta=2
global __ptext509
__ptext509:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] unsigned int 
;;  dividend        2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[COMMON] unsigned int 
;;  counter         1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         4       0       0       0
;;      Locals:         3       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text509
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l2738:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l2740:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u521
	goto	u520
u521:
	goto	l2760
u520:
	line	11
	
l2742:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l2746
	line	13
	
l2744:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l2746:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u531
	goto	u530
u531:
	goto	l2744
u530:
	line	17
	
l2748:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l2750:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u545
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u545:
	skipc
	goto	u541
	goto	u540
u541:
	goto	l2756
u540:
	line	19
	
l2752:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l2754:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l2756:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l2758:	
	decfsz	(___lwdiv@counter),f
	goto	u551
	goto	u550
u551:
	goto	l2748
u550:
	line	25
	
l2760:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l1873:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___bmul
psect	text510,local,class=CODE,delta=2
global __ptext510
__ptext510:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    4[COMMON] unsigned char 
;;  product         1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text510
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 5
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	4
	
l2722:	
	clrf	(___bmul@product)
	line	7
	
l2724:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u501
	goto	u500
u501:
	goto	l2728
u500:
	line	8
	
l2726:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	9
	
l2728:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	10
	
l2730:	
	clrc
	rrf	(___bmul@multiplier),f
	line	11
	
l2732:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u511
	goto	u510
u511:
	goto	l2724
u510:
	line	12
	
l2734:	
	movf	(___bmul@product),w
	line	13
	
l1857:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	_isdigit
psect	text511,local,class=CODE,delta=2
global __ptext511
__ptext511:

;; *************** function _isdigit *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text511
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 5
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	movwf	(isdigit@c)
	line	14
	
l2710:	
	clrf	(_isdigit$2081)
	
l2712:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u481
	goto	u480
u481:
	goto	l2718
u480:
	
l2714:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u491
	goto	u490
u491:
	goto	l2718
u490:
	
l2716:	
	clrf	(_isdigit$2081)
	incf	(_isdigit$2081),f
	
l2718:	
	rrf	(_isdigit$2081),w
	
	line	15
	
l1851:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_T1_init
psect	text512,local,class=CODE,delta=2
global __ptext512
__ptext512:

;; *************** function _T1_init *****************
;; Defined at:
;;		line 48 in file "D:\Dropbox\Escola\Programação\Micros\Tarefas\2º Trimestre\4 - ADC\Tarefa_ADC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
psect	text512
	file	"D:\Dropbox\Escola\Programação\Micros\Tarefas\2º Trimestre\4 - ADC\Tarefa_ADC.c"
	line	48
	global	__size_of_T1_init
	__size_of_T1_init	equ	__end_of_T1_init-_T1_init
	
_T1_init:	
	opt	stack 6
; Regs used in _T1_init: [wreg]
	line	49
	
l2702:	
;Tarefa_ADC.c: 49: T1CON=0b00110100;
	movlw	(034h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(16)	;volatile
	line	50
	
l2704:	
;Tarefa_ADC.c: 50: TMR1IF=0;
	bcf	(96/8),(96)&7
	line	51
	
l2706:	
;Tarefa_ADC.c: 51: TMR1IE=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	52
;Tarefa_ADC.c: 52: TMR1=64000;
	movlw	low(0FA00h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(14)	;volatile
	movlw	high(0FA00h)
	movwf	((14))+1	;volatile
	line	53
	
l2708:	
;Tarefa_ADC.c: 53: TMR1ON=1;
	bsf	(128/8),(128)&7
	line	54
	
l944:	
	return
	opt stack 0
GLOBAL	__end_of_T1_init
	__end_of_T1_init:
;; =============== function _T1_init ends ============

	signat	_T1_init,88
	global	_interrupts
psect	text513,local,class=CODE,delta=2
global __ptext513
__ptext513:

;; *************** function _interrupts *****************
;; Defined at:
;;		line 28 in file "D:\Dropbox\Escola\Programação\Micros\Tarefas\2º Trimestre\4 - ADC\Tarefa_ADC.c"
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
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text513
	file	"D:\Dropbox\Escola\Programação\Micros\Tarefas\2º Trimestre\4 - ADC\Tarefa_ADC.c"
	line	28
	global	__size_of_interrupts
	__size_of_interrupts	equ	__end_of_interrupts-_interrupts
	
_interrupts:	
	opt	stack 1
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
	movf	pclath,w
	movwf	(??_interrupts+1)
	ljmp	_interrupts
psect	text513
	line	29
	
i1l2308:	
;Tarefa_ADC.c: 29: if(ADIF){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(102/8),(102)&7
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l936
u1_20:
	line	30
	
i1l2310:	
;Tarefa_ADC.c: 30: set=1;
	bsf	(_set/8),(_set)&7
	line	31
;Tarefa_ADC.c: 31: ADIF=0;
	bcf	(102/8),(102)&7
	line	32
	
i1l936:	
	line	33
;Tarefa_ADC.c: 32: }
;Tarefa_ADC.c: 33: if(TMR1IF){
	btfss	(96/8),(96)&7
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l938
u2_20:
	line	34
	
i1l2312:	
;Tarefa_ADC.c: 34: GO=1;
	bsf	(249/8),(249)&7
	line	35
;Tarefa_ADC.c: 35: TMR1IF=0;
	bcf	(96/8),(96)&7
	line	36
	
i1l2314:	
;Tarefa_ADC.c: 36: TMR1=64000;
	movlw	low(0FA00h)
	movwf	(14)	;volatile
	movlw	high(0FA00h)
	movwf	((14))+1	;volatile
	line	38
	
i1l938:	
	movf	(??_interrupts+1),w
	movwf	pclath
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
psect	text514,local,class=CODE,delta=2
global __ptext514
__ptext514:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
