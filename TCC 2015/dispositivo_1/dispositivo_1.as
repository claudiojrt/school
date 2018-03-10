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
# 4 "D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\Dispositivo_1.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\Dispositivo_1.c"
	dw 0xFFFC & 0xFFF7 & 0xFFEF & 0xFFFF ;#
	FNCALL	_main,_T1_init
	FNCALL	_main,_T2_init
	FNCALL	_main,_serial_init
	FNCALL	_main,_lcd_init
	FNCALL	_main,_protocol
	FNCALL	_main,_send
	FNCALL	_lcd_init,_Enable
	FNCALL	_lcd_init,_Write
	FNCALL	_lcd_init,_Clear
	FNCALL	_Clear,_Write
	FNCALL	_Write,_Enable
	FNROOT	_main
	FNCALL	_interrupts,_printf
	FNCALL	_printf,_putch
	FNCALL	_printf,___lwdiv
	FNCALL	_printf,___lwmod
	FNCALL	_putch,_lcd_putc
	FNCALL	_lcd_putc,i1_Clear
	FNCALL	_lcd_putc,_lcd_goto
	FNCALL	_lcd_putc,i1_Write
	FNCALL	_lcd_putc,_lcd_putc
	FNCALL	i1_Clear,i1_Write
	FNCALL	_lcd_goto,i1_Write
	FNCALL	i1_Write,i1_Enable
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
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
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
	global	_cont
	global	_dado_rx
	global	_enviando
	global	_enviar
	global	_flag
	global	_lixo
	global	_bt_flag
	global	_recebeu
	global	_testa
	global	_TMR1
_TMR1	set	14
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCPR1L
_CCPR1L	set	21
	global	_INTCON
_INTCON	set	11
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_RCREG
_RCREG	set	26
	global	_T1CON
_T1CON	set	16
	global	_T2CON
_T2CON	set	18
	global	_TMR2
_TMR2	set	17
	global	_CARRY
_CARRY	set	24
	global	_CREN
_CREN	set	196
	global	_FERR
_FERR	set	194
	global	_GIE
_GIE	set	95
	global	_INTF
_INTF	set	89
	global	_OERR
_OERR	set	193
	global	_PEIE
_PEIE	set	94
	global	_RA4
_RA4	set	44
	global	_RC6
_RC6	set	62
	global	_RC7
_RC7	set	63
	global	_RCIF
_RCIF	set	101
	global	_RX9
_RX9	set	198
	global	_SPEN
_SPEN	set	199
	global	_TMR1IF
_TMR1IF	set	96
	global	_TMR1ON
_TMR1ON	set	128
	global	_TMR2ON
_TMR2ON	set	146
	global	_OSCCON
_OSCCON	set	143
	global	_PR2
_PR2	set	146
	global	_SPBRG
_SPBRG	set	153
	global	_SPBRGH
_SPBRGH	set	154
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_BRG16
_BRG16	set	1243
	global	_BRGH
_BRGH	set	1218
	global	_INTEDG
_INTEDG	set	1038
	global	_RCIE
_RCIE	set	1125
	global	_SYNC
_SYNC	set	1220
	global	_TMR1IE
_TMR1IE	set	1120
	global	_TX9
_TX9	set	1222
	global	_TXEN
_TXEN	set	1221
	global	_TXIE
_TXIE	set	1124
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
	
STR_1:	
	retlw	12
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	0
psect	strings
	file	"Dispositivo_1.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_cont:
       ds      1

_dado_rx:
       ds      1

_enviando:
       ds      1

_enviar:
       ds      1

_flag:
       ds      1

_lixo:
       ds      1

psect	bitbssBANK1,class=BANK1,bit,space=1
global __pbitbssBANK1
__pbitbssBANK1:
_bt_flag:
       ds      1

_recebeu:
       ds      1

_testa:
       ds      1

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
; Clear objects allocated to BITBANK1
psect cinit,class=CODE,delta=2
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	((__pbitbssBANK1/8)+0)&07Fh
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
	global	?_send
?_send:	; 0 bytes @ 0x0
	global	?_protocol
?_protocol:	; 0 bytes @ 0x0
	global	?_interrupts
?_interrupts:	; 0 bytes @ 0x0
	global	?_T1_init
?_T1_init:	; 0 bytes @ 0x0
	global	?_T2_init
?_T2_init:	; 0 bytes @ 0x0
	global	?_serial_init
?_serial_init:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?i1_Enable
?i1_Enable:	; 0 bytes @ 0x0
	global	??i1_Enable
??i1_Enable:	; 0 bytes @ 0x0
	global	?i1_Write
?i1_Write:	; 0 bytes @ 0x0
	global	??i1_Write
??i1_Write:	; 0 bytes @ 0x0
	global	?i1_Clear
?i1_Clear:	; 0 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	2
	global	i1Write@c
i1Write@c:	; 1 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x3
	global	??i1_Clear
??i1_Clear:	; 0 bytes @ 0x3
	global	lcd_goto@pos
lcd_goto@pos:	; 1 bytes @ 0x3
	ds	1
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	ds	1
	global	??_lcd_putc
??_lcd_putc:	; 0 bytes @ 0x5
	global	lcd_putc@c
lcd_putc@c:	; 1 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
	global	??_putch
??_putch:	; 0 bytes @ 0x6
	global	putch@c
putch@c:	; 1 bytes @ 0x6
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x8
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x8
	ds	2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xA
	ds	2
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0xC
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_printf
?_printf:	; 2 bytes @ 0x0
	ds	2
	global	??_printf
??_printf:	; 0 bytes @ 0x2
	ds	3
	global	printf@ap
printf@ap:	; 1 bytes @ 0x5
	ds	1
	global	printf@flag
printf@flag:	; 1 bytes @ 0x6
	ds	1
	global	printf@f
printf@f:	; 1 bytes @ 0x7
	ds	1
	global	printf@prec
printf@prec:	; 1 bytes @ 0x8
	ds	1
	global	printf@_val
printf@_val:	; 4 bytes @ 0x9
	ds	4
	global	printf@c
printf@c:	; 1 bytes @ 0xD
	ds	1
	global	??_interrupts
??_interrupts:	; 0 bytes @ 0xE
	ds	6
	global	??_Enable
??_Enable:	; 0 bytes @ 0x14
	global	??_Write
??_Write:	; 0 bytes @ 0x14
	global	??_send
??_send:	; 0 bytes @ 0x14
	global	??_protocol
??_protocol:	; 0 bytes @ 0x14
	global	??_T1_init
??_T1_init:	; 0 bytes @ 0x14
	global	??_T2_init
??_T2_init:	; 0 bytes @ 0x14
	global	??_serial_init
??_serial_init:	; 0 bytes @ 0x14
	ds	2
	global	Write@c
Write@c:	; 1 bytes @ 0x16
	ds	1
	global	??_Clear
??_Clear:	; 0 bytes @ 0x17
	ds	2
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x19
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x1B
	ds	2
;;Data sizes: Strings 4, constant 10, data 0, bss 6, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     29      35
;; BANK1           80      0       1
;; BANK2           80      0       0

;;
;; Pointer list with targets:

;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; printf@f	PTR const unsigned char  size(1) Largest target is 4
;;		 -> STR_1(CODE[4]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_printf(BANK0[2]), 
;;
;; S1630$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _interrupts in COMMON
;;
;;   _printf->___lwmod
;;   _putch->_lcd_putc
;;   _lcd_putc->i1_Clear
;;   i1_Clear->i1_Write
;;   _lcd_goto->i1_Write
;;   ___lwmod->___lwdiv
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_lcd_init
;;   _lcd_init->_Clear
;;   _Clear->_Write
;;
;; Critical Paths under _interrupts in BANK0
;;
;;   _interrupts->_printf
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
;; (0) _main                                                 2     2      0      88
;;                                             27 BANK0      2     2      0
;;                            _T1_init
;;                            _T2_init
;;                        _serial_init
;;                           _lcd_init
;;                           _protocol
;;                               _send
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             2     2      0      88
;;                                             25 BANK0      2     2      0
;;                             _Enable
;;                              _Write
;;                              _Clear
;; ---------------------------------------------------------------------------------
;; (2) _Clear                                                2     2      0      44
;;                                             23 BANK0      2     2      0
;;                              _Write
;; ---------------------------------------------------------------------------------
;; (3) _Write                                                3     3      0      44
;;                                             20 BANK0      3     3      0
;;                             _Enable
;; ---------------------------------------------------------------------------------
;; (1) _send                                                 2     2      0       0
;;                                             20 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (4) _Enable                                               0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _serial_init                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _T2_init                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _T1_init                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _protocol                                             1     1      0       0
;;                                             20 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (5) _interrupts                                           6     6      0    1737
;;                                             14 BANK0      6     6      0
;;                             _printf
;; ---------------------------------------------------------------------------------
;; (6) _printf                                              14    12      2    1737
;;                                              0 BANK0     14    12      2
;;                              _putch
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (7) _putch                                                1     1      0    1030
;;                                              6 COMMON     1     1      0
;;                           _lcd_putc
;; ---------------------------------------------------------------------------------
;; (8) _lcd_putc                                             1     1      0    1008
;;                                              5 COMMON     1     1      0
;;                            i1_Clear
;;                           _lcd_goto
;;                            i1_Write
;;                           _lcd_putc
;; ---------------------------------------------------------------------------------
;; (9) i1_Clear                                              2     2      0     146
;;                                              3 COMMON     2     2      0
;;                            i1_Write
;; ---------------------------------------------------------------------------------
;; (9) _lcd_goto                                             1     1      0     168
;;                                              3 COMMON     1     1      0
;;                            i1_Write
;; ---------------------------------------------------------------------------------
;; (9) i1_Write                                              3     3      0     146
;;                                              0 COMMON     3     3      0
;;                           i1_Enable
;; ---------------------------------------------------------------------------------
;; (10) i1_Enable                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (7) ___lwmod                                              6     2      4     159
;;                                              8 COMMON     6     2      4
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (7) ___lwdiv                                              8     4      4     162
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 10
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _T1_init
;;   _T2_init
;;   _serial_init
;;   _lcd_init
;;     _Enable
;;     _Write
;;       _Enable
;;     _Clear
;;       _Write
;;         _Enable
;;   _protocol
;;   _send
;;
;; _interrupts (ROOT)
;;   _printf
;;     _putch
;;       _lcd_putc
;;         i1_Clear
;;           i1_Write
;;             i1_Enable
;;         _lcd_goto
;;           i1_Write
;;             i1_Enable
;;         i1_Write
;;           i1_Enable
;;     ___lwdiv
;;     ___lwmod
;;       ___lwdiv (ARG)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0      14       2        0.0%
;;BANK0               50     1D      23       3       43.8%
;;BITBANK1            50      0       1       4        1.3%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK1               50      0       1       5        1.3%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK2            50      0       0       6        0.0%
;;BANK2               50      0       0       7        0.0%
;;ABS                  0      0      32       8        0.0%
;;BITBANK0            50      0       0       9        0.0%
;;DATA                 0      0      46      10        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 124 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\Dispositivo_1.c"
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
;;      Temps:          0       2       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:   11
;; This function calls:
;;		_T1_init
;;		_T2_init
;;		_serial_init
;;		_lcd_init
;;		_protocol
;;		_send
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\Dispositivo_1.c"
	line	124
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	125
	
l3767:	
;Dispositivo_1.c: 125: OSCCON=0b01110000;
	movlw	(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	126
	
l3769:	
;Dispositivo_1.c: 126: ANSEL=0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(286)^0100h	;volatile
	line	127
	
l3771:	
;Dispositivo_1.c: 127: ANSELH=0;
	clrf	(287)^0100h	;volatile
	line	128
;Dispositivo_1.c: 128: TRISA=0b00000100;
	movlw	(04h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	129
	
l3773:	
;Dispositivo_1.c: 129: TRISB=0;
	clrf	(134)^080h	;volatile
	line	130
	
l3775:	
;Dispositivo_1.c: 130: TRISC=0;
	clrf	(135)^080h	;volatile
	line	131
	
l3777:	
;Dispositivo_1.c: 131: PORTA=PORTB=PORTC=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	clrf	(6)	;volatile
	clrf	(5)	;volatile
	line	132
	
l3779:	
;Dispositivo_1.c: 132: INTCON=0b11010000;
	movlw	(0D0h)
	movwf	(11)	;volatile
	line	133
	
l3781:	
;Dispositivo_1.c: 133: INTEDG=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1038/8)^080h,(1038)&7
	line	134
	
l3783:	
;Dispositivo_1.c: 134: T1_init();
	fcall	_T1_init
	line	135
	
l3785:	
;Dispositivo_1.c: 135: T2_init();
	fcall	_T2_init
	line	136
	
l3787:	
;Dispositivo_1.c: 136: serial_init();
	fcall	_serial_init
	line	137
	
l3789:	
;Dispositivo_1.c: 137: lcd_init();
	fcall	_lcd_init
	line	138
	
l3791:	
;Dispositivo_1.c: 138: _delay((unsigned long)((5)*(4000000/4000.0)));
	opt asmopt_off
movlw	7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u2907:
	decfsz	((??_main+0)+0),f
	goto	u2907
	decfsz	((??_main+0)+0+1),f
	goto	u2907
opt asmopt_on

	goto	l3793
	line	140
;Dispositivo_1.c: 140: while(1){
	
l983:	
	line	141
	
l3793:	
;Dispositivo_1.c: 141: if(bt_flag){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(_bt_flag/8)^080h,(_bt_flag)&7
	goto	u2881
	goto	u2880
u2881:
	goto	l3799
u2880:
	line	142
	
l3795:	
;Dispositivo_1.c: 142: protocol();
	fcall	_protocol
	line	143
	
l3797:	
;Dispositivo_1.c: 143: bt_flag=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(_bt_flag/8)^080h,(_bt_flag)&7
	goto	l3799
	line	144
	
l984:	
	line	145
	
l3799:	
;Dispositivo_1.c: 144: }
;Dispositivo_1.c: 145: if(enviar){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_enviar),w
	skipz
	goto	u2890
	goto	l3793
u2890:
	line	146
	
l3801:	
;Dispositivo_1.c: 146: send();
	fcall	_send
	goto	l3793
	line	147
	
l985:	
	goto	l3793
	line	148
	
l986:	
	line	140
	goto	l3793
	
l987:	
	line	149
	
l988:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_init
psect	text505,local,class=CODE,delta=2
global __ptext505
__ptext505:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 87 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\LCD_Claudio.c"
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
;;      Temps:          0       2       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_Enable
;;		_Write
;;		_Clear
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text505
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\LCD_Claudio.c"
	line	87
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	88
	
l3735:	
;LCD_Claudio.c: 88: _delay((unsigned long)((15)*(4000000/4000.0)));
	opt asmopt_off
movlw	20
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	121
movwf	((??_lcd_init+0)+0),f
u2917:
	decfsz	((??_lcd_init+0)+0),f
	goto	u2917
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u2917
	nop2
opt asmopt_on

	line	89
	
l3737:	
;LCD_Claudio.c: 89: PORTC&=0xF0;
	movlw	(0F0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	andwf	(7),f	;volatile
	line	90
	
l3739:	
;LCD_Claudio.c: 90: PORTC|=0X03;
	movlw	(03h)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	iorwf	(7),f	;volatile
	line	91
	
l3741:	
;LCD_Claudio.c: 91: Enable();
	fcall	_Enable
	line	92
	
l3743:	
;LCD_Claudio.c: 92: _delay((unsigned long)((5)*(4000000/4000.0)));
	opt asmopt_off
movlw	7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	125
movwf	((??_lcd_init+0)+0),f
u2927:
	decfsz	((??_lcd_init+0)+0),f
	goto	u2927
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u2927
opt asmopt_on

	line	93
	
l3745:	
;LCD_Claudio.c: 93: PORTC&=0xF0;
	movlw	(0F0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	andwf	(7),f	;volatile
	line	94
	
l3747:	
;LCD_Claudio.c: 94: PORTC|=0X03;
	movlw	(03h)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	iorwf	(7),f	;volatile
	line	95
;LCD_Claudio.c: 95: Enable();
	fcall	_Enable
	line	96
	
l3749:	
;LCD_Claudio.c: 96: _delay((unsigned long)((100)*(4000000/4000000.0)));
	opt asmopt_off
movlw	33
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_lcd_init+0)+0,f
u2937:
decfsz	(??_lcd_init+0)+0,f
	goto	u2937
opt asmopt_on

	line	97
	
l3751:	
;LCD_Claudio.c: 97: PORTC&=0xF0;
	movlw	(0F0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	andwf	(7),f	;volatile
	line	98
	
l3753:	
;LCD_Claudio.c: 98: PORTC|=0X02;
	bsf	(7)+(1/8),(1)&7	;volatile
	line	99
	
l3755:	
;LCD_Claudio.c: 99: Enable();
	fcall	_Enable
	line	100
	
l3757:	
;LCD_Claudio.c: 100: _delay((unsigned long)((40)*(4000000/4000000.0)));
	opt asmopt_off
movlw	13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_lcd_init+0)+0,f
u2947:
decfsz	(??_lcd_init+0)+0,f
	goto	u2947
opt asmopt_on

	line	101
	
l3759:	
;LCD_Claudio.c: 101: Write(0x28);
	movlw	(028h)
	fcall	_Write
	line	102
	
l3761:	
;LCD_Claudio.c: 102: Write(0x0D);
	movlw	(0Dh)
	fcall	_Write
	line	103
	
l3763:	
;LCD_Claudio.c: 103: Write(0x06);
	movlw	(06h)
	fcall	_Write
	line	104
	
l3765:	
;LCD_Claudio.c: 104: Clear();
	fcall	_Clear
	line	105
	
l940:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_Clear
psect	text506,local,class=CODE,delta=2
global __ptext506
__ptext506:

;; *************** function _Clear *****************
;; Defined at:
;;		line 38 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\LCD_Claudio.c"
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
;;      Temps:          0       2       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_Write
;; This function is called by:
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text506
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\LCD_Claudio.c"
	line	38
	global	__size_of_Clear
	__size_of_Clear	equ	__end_of_Clear-_Clear
	
_Clear:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _Clear: [wreg+status,2+status,0+pclath+cstack]
	line	39
	
l3729:	
;LCD_Claudio.c: 39: RC6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7
	line	40
	
l3731:	
;LCD_Claudio.c: 40: Write(0x01);
	movlw	(01h)
	fcall	_Write
	line	41
	
l3733:	
;LCD_Claudio.c: 41: _delay((unsigned long)((2)*(4000000/4000.0)));
	opt asmopt_off
movlw	3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_Clear+0)+0+1),f
	movlw	151
movwf	((??_Clear+0)+0),f
u2957:
	decfsz	((??_Clear+0)+0),f
	goto	u2957
	decfsz	((??_Clear+0)+0+1),f
	goto	u2957
	nop2
opt asmopt_on

	line	42
	
l917:	
	return
	opt stack 0
GLOBAL	__end_of_Clear
	__end_of_Clear:
;; =============== function _Clear ends ============

	signat	_Clear,88
	global	_Write
psect	text507,local,class=CODE,delta=2
global __ptext507
__ptext507:

;; *************** function _Write *****************
;; Defined at:
;;		line 28 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\LCD_Claudio.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   22[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_Enable
;; This function is called by:
;;		_Clear
;;		_lcd_init
;;		_lcd_puts
;; This function uses a non-reentrant model
;;
psect	text507
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\LCD_Claudio.c"
	line	28
	global	__size_of_Write
	__size_of_Write	equ	__end_of_Write-_Write
	
_Write:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _Write: [wreg+status,2+status,0+pclath+cstack]
;Write@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Write@c)
	line	29
	
l3717:	
;LCD_Claudio.c: 29: PORTC&=0XF0;
	movlw	(0F0h)
	movwf	(??_Write+0)+0
	movf	(??_Write+0)+0,w
	andwf	(7),f	;volatile
	line	30
;LCD_Claudio.c: 30: PORTC|=c >> 4;
	movf	(Write@c),w
	movwf	(??_Write+0)+0
	movlw	04h
u2875:
	clrc
	rrf	(??_Write+0)+0,f
	addlw	-1
	skipz
	goto	u2875
	movf	0+(??_Write+0)+0,w
	movwf	(??_Write+1)+0
	movf	(??_Write+1)+0,w
	iorwf	(7),f	;volatile
	line	31
	
l3719:	
;LCD_Claudio.c: 31: Enable();
	fcall	_Enable
	line	32
	
l3721:	
;LCD_Claudio.c: 32: PORTC&=0XF0;
	movlw	(0F0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Write+0)+0
	movf	(??_Write+0)+0,w
	andwf	(7),f	;volatile
	line	33
	
l3723:	
;LCD_Claudio.c: 33: PORTC|=(c & 0X0F);
	movf	(Write@c),w
	andlw	0Fh
	movwf	(??_Write+0)+0
	movf	(??_Write+0)+0,w
	iorwf	(7),f	;volatile
	line	34
	
l3725:	
;LCD_Claudio.c: 34: Enable();
	fcall	_Enable
	line	35
	
l3727:	
;LCD_Claudio.c: 35: _delay((unsigned long)((40)*(4000000/4000000.0)));
	opt asmopt_off
movlw	13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_Write+0)+0,f
u2967:
decfsz	(??_Write+0)+0,f
	goto	u2967
opt asmopt_on

	line	36
	
l914:	
	return
	opt stack 0
GLOBAL	__end_of_Write
	__end_of_Write:
;; =============== function _Write ends ============

	signat	_Write,4216
	global	_send
psect	text508,local,class=CODE,delta=2
global __ptext508
__ptext508:

;; *************** function _send *****************
;; Defined at:
;;		line 25 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\Dispositivo_1.c"
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
;;      Temps:          0       2       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text508
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\Dispositivo_1.c"
	line	25
	global	__size_of_send
	__size_of_send	equ	__end_of_send-_send
	
_send:	
	opt	stack 0
; Regs used in _send: [wreg+status,2+status,0]
	line	26
	
l3711:	
;Dispositivo_1.c: 26: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_send+0)+0,f
u2977:
	clrwdt
decfsz	(??_send+0)+0,f
	goto	u2977
	nop2	;nop
	clrwdt
opt asmopt_on

	line	27
;Dispositivo_1.c: 27: CCPR1L=10;
	movlw	(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	28
;Dispositivo_1.c: 28: _delay((unsigned long)((2)*(4000000/4000.0)));
	opt asmopt_off
movlw	3
movwf	((??_send+0)+0+1),f
	movlw	151
movwf	((??_send+0)+0),f
u2987:
	decfsz	((??_send+0)+0),f
	goto	u2987
	decfsz	((??_send+0)+0+1),f
	goto	u2987
	nop2
opt asmopt_on

	line	29
;Dispositivo_1.c: 29: CCPR1L=20;
	movlw	(014h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	30
	
l3713:	
;Dispositivo_1.c: 30: enviar=0;
	clrf	(_enviar)
	line	31
	
l3715:	
;Dispositivo_1.c: 31: enviando--;
	movlw	low(01h)
	subwf	(_enviando),f
	line	32
	
l946:	
	return
	opt stack 0
GLOBAL	__end_of_send
	__end_of_send:
;; =============== function _send ends ============

	signat	_send,88
	global	_Enable
psect	text509,local,class=CODE,delta=2
global __ptext509
__ptext509:

;; *************** function _Enable *****************
;; Defined at:
;;		line 22 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\LCD_Claudio.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
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
;; Hardware stack levels required when called:    7
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Write
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text509
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\LCD_Claudio.c"
	line	22
	global	__size_of_Enable
	__size_of_Enable	equ	__end_of_Enable-_Enable
	
_Enable:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _Enable: []
	line	23
	
l3709:	
;LCD_Claudio.c: 23: RC7=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	
l911:	
	return
	opt stack 0
GLOBAL	__end_of_Enable
	__end_of_Enable:
;; =============== function _Enable ends ============

	signat	_Enable,88
	global	_serial_init
psect	text510,local,class=CODE,delta=2
global __ptext510
__ptext510:

;; *************** function _serial_init *****************
;; Defined at:
;;		line 108 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\Dispositivo_1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
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
;; Hardware stack levels required when called:    7
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text510
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\Dispositivo_1.c"
	line	108
	global	__size_of_serial_init
	__size_of_serial_init	equ	__end_of_serial_init-_serial_init
	
_serial_init:	
	opt	stack 0
; Regs used in _serial_init: [wreg+status,2]
	line	109
	
l3619:	
;Dispositivo_1.c: 109: SYNC=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1220/8)^080h,(1220)&7
	line	110
;Dispositivo_1.c: 110: BRGH=1;
	bsf	(1218/8)^080h,(1218)&7
	line	111
;Dispositivo_1.c: 111: BRG16=0;
	bcf	(1243/8)^080h,(1243)&7
	line	112
	
l3621:	
;Dispositivo_1.c: 112: SPBRGH=0;
	clrf	(154)^080h	;volatile
	line	113
	
l3623:	
;Dispositivo_1.c: 113: SPBRG=51;
	movlw	(033h)
	movwf	(153)^080h	;volatile
	line	114
	
l3625:	
;Dispositivo_1.c: 114: SPEN=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	115
	
l3627:	
;Dispositivo_1.c: 115: TX9=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1222/8)^080h,(1222)&7
	line	116
	
l3629:	
;Dispositivo_1.c: 116: TXEN=1;
	bsf	(1221/8)^080h,(1221)&7
	line	117
	
l3631:	
;Dispositivo_1.c: 117: TXIE=0;
	bcf	(1124/8)^080h,(1124)&7
	line	118
	
l3633:	
;Dispositivo_1.c: 118: RCIE=1;
	bsf	(1125/8)^080h,(1125)&7
	line	119
	
l3635:	
;Dispositivo_1.c: 119: PEIE=1;
	bsf	(94/8),(94)&7
	line	120
	
l3637:	
;Dispositivo_1.c: 120: RX9=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(198/8),(198)&7
	line	121
	
l3639:	
;Dispositivo_1.c: 121: CREN=1;
	bsf	(196/8),(196)&7
	line	122
	
l980:	
	return
	opt stack 0
GLOBAL	__end_of_serial_init
	__end_of_serial_init:
;; =============== function _serial_init ends ============

	signat	_serial_init,88
	global	_T2_init
psect	text511,local,class=CODE,delta=2
global __ptext511
__ptext511:

;; *************** function _T2_init *****************
;; Defined at:
;;		line 99 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\Dispositivo_1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
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
;; Hardware stack levels required when called:    7
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text511
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\Dispositivo_1.c"
	line	99
	global	__size_of_T2_init
	__size_of_T2_init	equ	__end_of_T2_init-_T2_init
	
_T2_init:	
	opt	stack 0
; Regs used in _T2_init: [wreg+status,2]
	line	100
	
l3609:	
;Dispositivo_1.c: 100: T2CON=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(18)	;volatile
	line	101
;Dispositivo_1.c: 101: TMR2=0;
	clrf	(17)	;volatile
	line	102
	
l3611:	
;Dispositivo_1.c: 102: PR2=19;
	movlw	(013h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	103
	
l3613:	
;Dispositivo_1.c: 103: CCP1CON=0b00001111;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(23)	;volatile
	line	104
	
l3615:	
;Dispositivo_1.c: 104: CCPR1L=20;
	movlw	(014h)
	movwf	(21)	;volatile
	line	105
	
l3617:	
;Dispositivo_1.c: 105: TMR2ON=1;
	bsf	(146/8),(146)&7
	line	106
	
l977:	
	return
	opt stack 0
GLOBAL	__end_of_T2_init
	__end_of_T2_init:
;; =============== function _T2_init ends ============

	signat	_T2_init,88
	global	_T1_init
psect	text512,local,class=CODE,delta=2
global __ptext512
__ptext512:

;; *************** function _T1_init *****************
;; Defined at:
;;		line 92 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\Dispositivo_1.c"
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
;; Hardware stack levels required when called:    7
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text512
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\Dispositivo_1.c"
	line	92
	global	__size_of_T1_init
	__size_of_T1_init	equ	__end_of_T1_init-_T1_init
	
_T1_init:	
	opt	stack 0
; Regs used in _T1_init: [wreg]
	line	93
	
l3603:	
;Dispositivo_1.c: 93: T1CON=0b00110100;
	movlw	(034h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(16)	;volatile
	line	94
	
l3605:	
;Dispositivo_1.c: 94: TMR1IF=0;
	bcf	(96/8),(96)&7
	line	95
	
l3607:	
;Dispositivo_1.c: 95: TMR1IE=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	96
;Dispositivo_1.c: 96: TMR1=51536;
	movlw	low(0C950h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(14)	;volatile
	movlw	high(0C950h)
	movwf	((14))+1	;volatile
	line	97
	
l974:	
	return
	opt stack 0
GLOBAL	__end_of_T1_init
	__end_of_T1_init:
;; =============== function _T1_init ends ============

	signat	_T1_init,88
	global	_protocol
psect	text513,local,class=CODE,delta=2
global __ptext513
__ptext513:

;; *************** function _protocol *****************
;; Defined at:
;;		line 34 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\Dispositivo_1.c"
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
;;      Temps:          0       1       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text513
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\Dispositivo_1.c"
	line	34
	global	__size_of_protocol
	__size_of_protocol	equ	__end_of_protocol-_protocol
	
_protocol:	
	opt	stack 0
; Regs used in _protocol: [wreg+status,2+status,0]
	line	35
	
l3495:	
;Dispositivo_1.c: 35: if(dado_rx==20){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dado_rx),w
	xorlw	014h
	skipz
	goto	u2511
	goto	u2510
u2511:
	goto	l3499
u2510:
	line	36
	
l3497:	
;Dispositivo_1.c: 36: RA4=0;
	bcf	(44/8),(44)&7
	line	37
;Dispositivo_1.c: 37: }
	goto	l956
	line	38
	
l949:	
	
l3499:	
;Dispositivo_1.c: 38: else if(dado_rx==21){
	movf	(_dado_rx),w
	xorlw	015h
	skipz
	goto	u2521
	goto	u2520
u2521:
	goto	l3503
u2520:
	line	39
	
l3501:	
;Dispositivo_1.c: 39: RA4=1;
	bsf	(44/8),(44)&7
	line	40
;Dispositivo_1.c: 40: }
	goto	l956
	line	41
	
l951:	
	
l3503:	
;Dispositivo_1.c: 41: else if(dado_rx==128){
	movf	(_dado_rx),w
	xorlw	080h
	skipz
	goto	u2531
	goto	u2530
u2531:
	goto	l3509
u2530:
	line	42
	
l3505:	
;Dispositivo_1.c: 42: RA4=0;
	bcf	(44/8),(44)&7
	line	43
	
l3507:	
;Dispositivo_1.c: 43: enviando=2;
	movlw	(02h)
	movwf	(??_protocol+0)+0
	movf	(??_protocol+0)+0,w
	movwf	(_enviando)
	line	44
;Dispositivo_1.c: 44: }
	goto	l956
	line	45
	
l953:	
	
l3509:	
;Dispositivo_1.c: 45: else if(dado_rx==129){
	movf	(_dado_rx),w
	xorlw	081h
	skipz
	goto	u2541
	goto	u2540
u2541:
	goto	l956
u2540:
	line	46
	
l3511:	
;Dispositivo_1.c: 46: RA4=1;
	bsf	(44/8),(44)&7
	line	47
	
l3513:	
;Dispositivo_1.c: 47: enviando=1;
	clrf	(_enviando)
	bsf	status,0
	rlf	(_enviando),f
	goto	l956
	line	48
	
l955:	
	goto	l956
	line	49
	
l954:	
	goto	l956
	
l952:	
	goto	l956
	
l950:	
	
l956:	
	return
	opt stack 0
GLOBAL	__end_of_protocol
	__end_of_protocol:
;; =============== function _protocol ends ============

	signat	_protocol,88
	global	_interrupts
psect	text514,local,class=CODE,delta=2
global __ptext514
__ptext514:

;; *************** function _interrupts *****************
;; Defined at:
;;		line 51 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\Dispositivo_1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       6       0       0
;;      Totals:         0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_printf
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text514
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\Dispositivo_1.c"
	line	51
	global	__size_of_interrupts
	__size_of_interrupts	equ	__end_of_interrupts-_interrupts
	
_interrupts:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _interrupts: [allreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_interrupts+2)
	movf	fsr0,w
	movwf	(??_interrupts+3)
	movf	pclath,w
	movwf	(??_interrupts+4)
	movf	btemp+1,w
	movwf	(??_interrupts+5)
	ljmp	_interrupts
psect	text514
	line	52
	
i1l3515:	
;Dispositivo_1.c: 52: if(INTF){
	btfss	(89/8),(89)&7
	goto	u255_21
	goto	u255_20
u255_21:
	goto	i1l3527
u255_20:
	line	53
	
i1l3517:	
;Dispositivo_1.c: 53: if(!enviando){
	movf	(_enviando),f
	skipz
	goto	u256_21
	goto	u256_20
u256_21:
	goto	i1l3521
u256_20:
	line	54
	
i1l3519:	
;Dispositivo_1.c: 54: TMR1ON=1;
	bsf	(128/8),(128)&7
	line	55
;Dispositivo_1.c: 55: testa=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(_testa/8)^080h,(_testa)&7
	line	56
;Dispositivo_1.c: 56: }
	goto	i1l3525
	line	57
	
i1l960:	
	
i1l3521:	
;Dispositivo_1.c: 57: else if(enviando){
	bcf	status, 5	;RP0=0, select bank0
	movf	(_enviando),w
	skipz
	goto	u257_20
	goto	i1l3525
u257_20:
	line	58
	
i1l3523:	
;Dispositivo_1.c: 58: enviar=1;
	clrf	(_enviar)
	bsf	status,0
	rlf	(_enviar),f
	goto	i1l3525
	line	59
	
i1l962:	
	goto	i1l3525
	line	60
	
i1l961:	
	
i1l3525:	
;Dispositivo_1.c: 59: }
;Dispositivo_1.c: 60: INTF=0;
	bcf	(89/8),(89)&7
	goto	i1l3527
	line	61
	
i1l959:	
	line	62
	
i1l3527:	
;Dispositivo_1.c: 61: }
;Dispositivo_1.c: 62: if(TMR1IF){
	bcf	status, 5	;RP0=0, select bank0
	btfss	(96/8),(96)&7
	goto	u258_21
	goto	u258_20
u258_21:
	goto	i1l963
u258_20:
	line	63
	
i1l3529:	
;Dispositivo_1.c: 63: TMR1ON=0;
	bcf	(128/8),(128)&7
	line	64
	
i1l3531:	
;Dispositivo_1.c: 64: TMR1=51536;
	movlw	low(0C950h)
	movwf	(14)	;volatile
	movlw	high(0C950h)
	movwf	((14))+1	;volatile
	line	65
	
i1l3533:	
;Dispositivo_1.c: 65: TMR1IF=0;
	bcf	(96/8),(96)&7
	line	66
;Dispositivo_1.c: 66: if(cont==1){
	movf	(_cont),w
	xorlw	01h
	skipz
	goto	u259_21
	goto	u259_20
u259_21:
	goto	i1l3537
u259_20:
	line	67
	
i1l3535:	
;Dispositivo_1.c: 67: RA4=1;
	bsf	(44/8),(44)&7
	goto	i1l3537
	line	68
	
i1l964:	
	line	69
	
i1l3537:	
;Dispositivo_1.c: 68: }
;Dispositivo_1.c: 69: if(cont==2){
	movf	(_cont),w
	xorlw	02h
	skipz
	goto	u260_21
	goto	u260_20
u260_21:
	goto	i1l965
u260_20:
	line	70
	
i1l3539:	
;Dispositivo_1.c: 70: RA4=0;
	bcf	(44/8),(44)&7
	line	71
	
i1l965:	
	line	72
;Dispositivo_1.c: 71: }
;Dispositivo_1.c: 72: cont=0;
	clrf	(_cont)
	line	73
;Dispositivo_1.c: 73: recebeu=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(_recebeu/8)^080h,(_recebeu)&7
	line	74
	
i1l963:	
	line	75
;Dispositivo_1.c: 74: }
;Dispositivo_1.c: 75: if(RCIF==1 && RCIE==1){
	bcf	status, 5	;RP0=0, select bank0
	btfss	(101/8),(101)&7
	goto	u261_21
	goto	u261_20
u261_21:
	goto	i1l971
u261_20:
	
i1l3541:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1125/8)^080h,(1125)&7
	goto	u262_21
	goto	u262_20
u262_21:
	goto	i1l971
u262_20:
	line	76
	
i1l3543:	
;Dispositivo_1.c: 76: if(FERR==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(194/8),(194)&7
	goto	u263_21
	goto	u263_20
u263_21:
	goto	i1l967
u263_20:
	line	77
	
i1l3545:	
;Dispositivo_1.c: 77: lixo=RCREG;
	movf	(26),w	;volatile
	movwf	(??_interrupts+0)+0
	movf	(??_interrupts+0)+0,w
	movwf	(_lixo)
	line	78
;Dispositivo_1.c: 78: }
	goto	i1l3555
	line	79
	
i1l967:	
;Dispositivo_1.c: 79: else if(OERR==1){
	btfss	(193/8),(193)&7
	goto	u264_21
	goto	u264_20
u264_21:
	goto	i1l3549
u264_20:
	line	80
	
i1l3547:	
;Dispositivo_1.c: 80: CREN=0;
	bcf	(196/8),(196)&7
	line	81
;Dispositivo_1.c: 81: CREN=1;
	bsf	(196/8),(196)&7
	line	82
;Dispositivo_1.c: 82: }
	goto	i1l3555
	line	83
	
i1l969:	
	line	84
	
i1l3549:	
;Dispositivo_1.c: 83: else{
;Dispositivo_1.c: 84: dado_rx=RCREG;
	movf	(26),w	;volatile
	movwf	(??_interrupts+0)+0
	movf	(??_interrupts+0)+0,w
	movwf	(_dado_rx)
	line	85
	
i1l3551:	
;Dispositivo_1.c: 85: printf("\f%d",dado_rx);
	movf	(_dado_rx),w
	movwf	(??_interrupts+0)+0
	clrf	(??_interrupts+0)+0+1
	movf	0+(??_interrupts+0)+0,w
	movwf	(?_printf)
	movf	1+(??_interrupts+0)+0,w
	movwf	(?_printf+1)
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_printf
	line	86
	
i1l3553:	
;Dispositivo_1.c: 86: bt_flag=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(_bt_flag/8)^080h,(_bt_flag)&7
	goto	i1l3555
	line	87
	
i1l970:	
	goto	i1l3555
	
i1l968:	
	line	88
	
i1l3555:	
;Dispositivo_1.c: 87: }
;Dispositivo_1.c: 88: RCIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(101/8),(101)&7
	goto	i1l971
	line	89
	
i1l966:	
	line	90
	
i1l971:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(??_interrupts+5),w
	movwf	btemp+1
	movf	(??_interrupts+4),w
	movwf	pclath
	movf	(??_interrupts+3),w
	movwf	fsr0
	swapf	(??_interrupts+2)^00h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_interrupts
	__end_of_interrupts:
;; =============== function _interrupts ends ============

	signat	_interrupts,88
	global	_printf
psect	text515,local,class=CODE,delta=2
global __ptext515
__ptext515:

;; *************** function _printf *****************
;; Defined at:
;;		line 461 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_1(4), 
;; Auto vars:     Size  Location     Type
;;  f               1    7[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(4), 
;;  _val            4    9[BANK0 ] struct .
;;  c               1   13[BANK0 ] char 
;;  prec            1    8[BANK0 ] char 
;;  flag            1    6[BANK0 ] unsigned char 
;;  ap              1    5[BANK0 ] PTR void [1]
;;		 -> ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       9       0       0
;;      Temps:          0       3       0       0
;;      Totals:         0      14       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_putch
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_interrupts
;; This function uses a non-reentrant model
;;
psect	text515
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	461
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;printf@f stored from wreg
	line	537
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printf@f)
	
i1l3557:	
	movlw	(?_printf)&0ffh
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@ap)
	line	540
	goto	i1l3601
	
i1l1000:	
	line	542
	
i1l3559:	
	movf	(printf@c),w
	xorlw	025h
	skipnz
	goto	u265_21
	goto	u265_20
u265_21:
	goto	i1l1001
u265_20:
	line	545
	
i1l3561:	
	movf	(printf@c),w
	fcall	_putch
	line	546
	goto	i1l3601
	line	547
	
i1l1001:	
	line	552
	clrf	(printf@flag)
	line	638
	goto	i1l3565
	line	640
	
i1l1003:	
	line	641
	goto	i1l1018
	line	700
	
i1l1005:	
	goto	i1l3567
	line	701
	
i1l1006:	
	line	702
	goto	i1l3567
	line	805
	
i1l1008:	
	line	816
	goto	i1l3601
	line	825
	
i1l3563:	
	goto	i1l3567
	line	638
	
i1l1002:	
	
i1l3565:	
	movlw	01h
	addwf	(printf@f),f
	movlw	-01h
	addwf	(printf@f),w
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
	goto	i1l1018
	xorlw	100^0	; case 100
	skipnz
	goto	i1l3567
	xorlw	105^100	; case 105
	skipnz
	goto	i1l3567
	goto	i1l3601
	opt asmopt_on

	line	825
	
i1l1007:	
	line	1254
	
i1l3567:	
	movf	(printf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(printf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(printf@_val+1)
	
i1l3569:	
	movlw	(02h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@ap),f
	line	1256
	
i1l3571:	
	btfss	(printf@_val+1),7
	goto	u266_21
	goto	u266_20
u266_21:
	goto	i1l3577
u266_20:
	line	1257
	
i1l3573:	
	movlw	(03h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	iorwf	(printf@flag),f
	line	1258
	
i1l3575:	
	comf	(printf@_val),f
	comf	(printf@_val+1),f
	incf	(printf@_val),f
	skipnz
	incf	(printf@_val+1),f
	goto	i1l3577
	line	1259
	
i1l1009:	
	line	1300
	
i1l3577:	
	clrf	(printf@c)
	bsf	status,0
	rlf	(printf@c),f
	
i1l3579:	
	movf	(printf@c),w
	xorlw	05h
	skipz
	goto	u267_21
	goto	u267_20
u267_21:
	goto	i1l3583
u267_20:
	goto	i1l3591
	
i1l3581:	
	goto	i1l3591
	line	1301
	
i1l1010:	
	
i1l3583:	
	movf	(printf@c),w
	movwf	(??_printf+0)+0
	addwf	(??_printf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_printf+1)+0
	fcall	stringdir
	movwf	(??_printf+1)+0+1
	movf	1+(??_printf+1)+0,w
	subwf	(printf@_val+1),w
	skipz
	goto	u268_25
	movf	0+(??_printf+1)+0,w
	subwf	(printf@_val),w
u268_25:
	skipnc
	goto	u268_21
	goto	u268_20
u268_21:
	goto	i1l3587
u268_20:
	goto	i1l3591
	line	1302
	
i1l3585:	
	goto	i1l3591
	
i1l1012:	
	line	1300
	
i1l3587:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@c),f
	
i1l3589:	
	movf	(printf@c),w
	xorlw	05h
	skipz
	goto	u269_21
	goto	u269_20
u269_21:
	goto	i1l3583
u269_20:
	goto	i1l3591
	
i1l1011:	
	line	1433
	
i1l3591:	
	movf	(printf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u270_21
	goto	u270_20
u270_21:
	goto	i1l3595
u270_20:
	line	1434
	
i1l3593:	
	movlw	(02Dh)
	fcall	_putch
	goto	i1l3595
	
i1l1013:	
	line	1467
	
i1l3595:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printf@c),w
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@prec)
	line	1469
	goto	i1l3599
	
i1l1015:	
	line	1484
	
i1l3597:	
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	movf	(printf@prec),w
	movwf	(??_printf+0)+0
	addwf	(??_printf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lwdiv)
	fcall	stringdir
	movwf	(?___lwdiv+1)
	movf	(printf@_val+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(printf@_val),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_printf+1)+0
	movf	(??_printf+1)+0,w
	movwf	(printf@c)
	line	1516
	movf	(printf@c),w
	fcall	_putch
	goto	i1l3599
	line	1517
	
i1l1014:	
	line	1469
	
i1l3599:	
	movlw	(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@prec),f
	movf	((printf@prec)),w
	xorlw	-1
	skipz
	goto	u271_21
	goto	u271_20
u271_21:
	goto	i1l3597
u271_20:
	goto	i1l3601
	
i1l1016:	
	goto	i1l3601
	line	1525
	
i1l999:	
	line	540
	
i1l3601:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(printf@f),f
	movlw	-01h
	addwf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@c)
	movf	((printf@c)),f
	skipz
	goto	u272_21
	goto	u272_20
u272_21:
	goto	i1l3559
u272_20:
	goto	i1l1018
	
i1l1017:	
	goto	i1l1018
	line	1527
	
i1l1004:	
	line	1533
;	Return value of _printf is never used
	
i1l1018:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_putch
psect	text516,local,class=CODE,delta=2
global __ptext516
__ptext516:

;; *************** function _putch *****************
;; Defined at:
;;		line 107 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\LCD_Claudio.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
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
;;		_lcd_putc
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text516
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\LCD_Claudio.c"
	line	107
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _putch: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;putch@c stored from wreg
	movwf	(putch@c)
	line	108
	
i1l3493:	
;LCD_Claudio.c: 108: lcd_putc(c);
	movf	(putch@c),w
	fcall	_lcd_putc
	line	109
	
i1l943:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_lcd_putc
psect	text517,local,class=CODE,delta=2
global __ptext517
__ptext517:

;; *************** function _lcd_putc *****************
;; Defined at:
;;		line 50 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\LCD_Claudio.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
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
;;		i1_Clear
;;		_lcd_goto
;;		i1_Write
;;		_lcd_putc
;; This function is called by:
;;		_putch
;; This function uses a non-reentrant model
;;
psect	text517
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\LCD_Claudio.c"
	line	50
	global	__size_of_lcd_putc
	__size_of_lcd_putc	equ	__end_of_lcd_putc-_lcd_putc
	
_lcd_putc:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _lcd_putc: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_putc@c stored from wreg
	movwf	(lcd_putc@c)
	line	51
	
i1l3467:	
;LCD_Claudio.c: 51: switch (c){
	goto	i1l3487
	line	52
;LCD_Claudio.c: 52: case '\f':
	
i1l927:	
	line	53
	
i1l3469:	
;LCD_Claudio.c: 53: Clear();
	fcall	i1_Clear
	line	54
;LCD_Claudio.c: 54: break;
	goto	i1l934
	line	55
;LCD_Claudio.c: 55: case '\n':
	
i1l929:	
	line	56
	
i1l3471:	
;LCD_Claudio.c: 56: lcd_goto(0x40);
	movlw	(040h)
	fcall	_lcd_goto
	line	57
;LCD_Claudio.c: 57: break;
	goto	i1l934
	line	58
;LCD_Claudio.c: 58: case '\r':
	
i1l930:	
	line	59
;LCD_Claudio.c: 59: RC6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7
	line	60
	
i1l3473:	
;LCD_Claudio.c: 60: Write(0x80);
	movlw	(080h)
	fcall	i1_Write
	line	61
;LCD_Claudio.c: 61: break;
	goto	i1l934
	line	62
;LCD_Claudio.c: 62: case '\b':
	
i1l931:	
	line	63
;LCD_Claudio.c: 63: RC6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7
	line	64
	
i1l3475:	
;LCD_Claudio.c: 64: Write(0b0000010000);
	movlw	(010h)
	fcall	i1_Write
	line	65
	
i1l3477:	
;LCD_Claudio.c: 65: RC6=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(62/8),(62)&7
	line	66
;LCD_Claudio.c: 66: lcd_putc(32);
	movlw	(020h)
	fcall	_lcd_putc
	line	67
	
i1l3479:	
;LCD_Claudio.c: 67: RC6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7
	line	68
;LCD_Claudio.c: 68: Write(0b0000010000);
	movlw	(010h)
	fcall	i1_Write
	line	69
;LCD_Claudio.c: 69: break;
	goto	i1l934
	line	70
;LCD_Claudio.c: 70: case '\t':
	
i1l932:	
	line	71
;LCD_Claudio.c: 71: RC6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7
	line	72
	
i1l3481:	
;LCD_Claudio.c: 72: Write(0b0000010100);
	movlw	(014h)
	fcall	i1_Write
	line	73
;LCD_Claudio.c: 73: Write(0b0000010100);
	movlw	(014h)
	fcall	i1_Write
	line	74
;LCD_Claudio.c: 74: break;
	goto	i1l934
	line	75
;LCD_Claudio.c: 75: default:
	
i1l933:	
	line	76
;LCD_Claudio.c: 76: RC6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(62/8),(62)&7
	line	77
	
i1l3483:	
;LCD_Claudio.c: 77: Write( c );
	movf	(lcd_putc@c),w
	fcall	i1_Write
	line	78
;LCD_Claudio.c: 78: break;
	goto	i1l934
	line	79
	
i1l3485:	
;LCD_Claudio.c: 79: }
	goto	i1l934
	line	51
	
i1l926:	
	
i1l3487:	
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
	goto	i1l931
	xorlw	9^8	; case 9
	skipnz
	goto	i1l932
	xorlw	10^9	; case 10
	skipnz
	goto	i1l3471
	xorlw	12^10	; case 12
	skipnz
	goto	i1l3469
	xorlw	13^12	; case 13
	skipnz
	goto	i1l930
	goto	i1l933
	opt asmopt_on

	line	79
	
i1l928:	
	line	80
	
i1l934:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putc
	__end_of_lcd_putc:
;; =============== function _lcd_putc ends ============

	signat	_lcd_putc,4216
	global	i1_Clear
psect	text518,local,class=CODE,delta=2
global __ptext518
__ptext518:

;; *************** function i1_Clear *****************
;; Defined at:
;;		line 38 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\LCD_Claudio.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1_Write
;; This function is called by:
;;		_lcd_putc
;; This function uses a non-reentrant model
;;
psect	text518
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\LCD_Claudio.c"
	line	38
	global	__size_ofi1_Clear
	__size_ofi1_Clear	equ	__end_ofi1_Clear-i1_Clear
	
i1_Clear:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1_Clear: [wreg+status,2+status,0+pclath+cstack]
	line	39
	
i1l3703:	
;LCD_Claudio.c: 39: RC6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7
	line	40
	
i1l3705:	
;LCD_Claudio.c: 40: Write(0x01);
	movlw	(01h)
	fcall	i1_Write
	line	41
	
i1l3707:	
;LCD_Claudio.c: 41: _delay((unsigned long)((2)*(4000000/4000.0)));
	opt asmopt_off
movlw	3
movwf	((??i1_Clear+0)+0+1),f
	movlw	151
movwf	((??i1_Clear+0)+0),f
u299_27:
	decfsz	((??i1_Clear+0)+0),f
	goto	u299_27
	decfsz	((??i1_Clear+0)+0+1),f
	goto	u299_27
	nop2
opt asmopt_on

	line	42
	
i1l917:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Clear
	__end_ofi1_Clear:
;; =============== function i1_Clear ends ============

	signat	i1_Clear,88
	global	_lcd_goto
psect	text519,local,class=CODE,delta=2
global __ptext519
__ptext519:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 82 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\LCD_Claudio.c"
;; Parameters:    Size  Location     Type
;;  pos             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pos             1    3[COMMON] unsigned char 
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
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1_Write
;; This function is called by:
;;		_lcd_putc
;; This function uses a non-reentrant model
;;
psect	text519
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\LCD_Claudio.c"
	line	82
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@pos stored from wreg
	movwf	(lcd_goto@pos)
	line	83
	
i1l3489:	
;LCD_Claudio.c: 83: RC6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7
	line	84
	
i1l3491:	
;LCD_Claudio.c: 84: Write(0x80+pos);
	movf	(lcd_goto@pos),w
	addlw	080h
	fcall	i1_Write
	line	85
	
i1l937:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	i1_Write
psect	text520,local,class=CODE,delta=2
global __ptext520
__ptext520:

;; *************** function i1_Write *****************
;; Defined at:
;;		line 28 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\LCD_Claudio.c"
;; Parameters:    Size  Location     Type
;;  Write           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Write           1    2[COMMON] unsigned char 
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
;;      Temps:          2       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_Enable
;; This function is called by:
;;		_lcd_putc
;;		_lcd_goto
;;		i1_Clear
;; This function uses a non-reentrant model
;;
psect	text520
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\LCD_Claudio.c"
	line	28
	global	__size_ofi1_Write
	__size_ofi1_Write	equ	__end_ofi1_Write-i1_Write
	
i1_Write:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1_Write: [wreg+status,2+status,0+pclath+cstack]
;i1Write@c stored from wreg
	movwf	(i1Write@c)
	line	29
	
i1l3691:	
;LCD_Claudio.c: 29: PORTC&=0XF0;
	movlw	(0F0h)
	movwf	(??i1_Write+0)+0
	movf	(??i1_Write+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(7),f	;volatile
	line	30
;LCD_Claudio.c: 30: PORTC|=c >> 4;
	movf	(i1Write@c),w
	movwf	(??i1_Write+0)+0
	movlw	04h
u286_25:
	clrc
	rrf	(??i1_Write+0)+0,f
	addlw	-1
	skipz
	goto	u286_25
	movf	0+(??i1_Write+0)+0,w
	movwf	(??i1_Write+1)+0
	movf	(??i1_Write+1)+0,w
	iorwf	(7),f	;volatile
	line	31
	
i1l3693:	
;LCD_Claudio.c: 31: Enable();
	fcall	i1_Enable
	line	32
	
i1l3695:	
;LCD_Claudio.c: 32: PORTC&=0XF0;
	movlw	(0F0h)
	movwf	(??i1_Write+0)+0
	movf	(??i1_Write+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(7),f	;volatile
	line	33
	
i1l3697:	
;LCD_Claudio.c: 33: PORTC|=(c & 0X0F);
	movf	(i1Write@c),w
	andlw	0Fh
	movwf	(??i1_Write+0)+0
	movf	(??i1_Write+0)+0,w
	iorwf	(7),f	;volatile
	line	34
	
i1l3699:	
;LCD_Claudio.c: 34: Enable();
	fcall	i1_Enable
	line	35
	
i1l3701:	
;LCD_Claudio.c: 35: _delay((unsigned long)((40)*(4000000/4000000.0)));
	opt asmopt_off
movlw	13
movwf	(??i1_Write+0)+0,f
u300_27:
decfsz	(??i1_Write+0)+0,f
	goto	u300_27
opt asmopt_on

	line	36
	
i1l914:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Write
	__end_ofi1_Write:
;; =============== function i1_Write ends ============

	signat	i1_Write,88
	global	i1_Enable
psect	text521,local,class=CODE,delta=2
global __ptext521
__ptext521:

;; *************** function i1_Enable *****************
;; Defined at:
;;		line 22 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\LCD_Claudio.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_Write
;; This function uses a non-reentrant model
;;
psect	text521
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\8 - Dispositivo 1\LCD_Claudio.c"
	line	22
	global	__size_ofi1_Enable
	__size_ofi1_Enable	equ	__end_ofi1_Enable-i1_Enable
	
i1_Enable:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1_Enable: []
	line	23
	
i1l3689:	
;LCD_Claudio.c: 23: RC7=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	
i1l911:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Enable
	__end_ofi1_Enable:
;; =============== function i1_Enable ends ============

	signat	i1_Enable,88
	global	___lwmod
psect	text522,local,class=CODE,delta=2
global __ptext522
__ptext522:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    8[COMMON] unsigned int 
;;  dividend        2   10[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         4       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text522
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 1
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
i1l3667:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u280_21
	goto	u280_20
u280_21:
	goto	i1l3685
u280_20:
	line	9
	
i1l3669:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	i1l3675
	
i1l1895:	
	line	11
	
i1l3671:	
	movlw	01h
	
u281_25:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u281_25
	line	12
	
i1l3673:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	i1l3675
	line	13
	
i1l1894:	
	line	10
	
i1l3675:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u282_21
	goto	u282_20
u282_21:
	goto	i1l3671
u282_20:
	goto	i1l3677
	
i1l1896:	
	goto	i1l3677
	line	14
	
i1l1897:	
	line	15
	
i1l3677:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u283_25
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u283_25:
	skipc
	goto	u283_21
	goto	u283_20
u283_21:
	goto	i1l3681
u283_20:
	line	16
	
i1l3679:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	i1l3681
	
i1l1898:	
	line	17
	
i1l3681:	
	movlw	01h
	
u284_25:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u284_25
	line	18
	
i1l3683:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u285_21
	goto	u285_20
u285_21:
	goto	i1l3677
u285_20:
	goto	i1l3685
	
i1l1899:	
	goto	i1l3685
	line	19
	
i1l1893:	
	line	20
	
i1l3685:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	i1l1900
	
i1l3687:	
	line	21
	
i1l1900:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text523,local,class=CODE,delta=2
global __ptext523
__ptext523:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[COMMON] unsigned int 
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         4       0       0       0
;;      Locals:         3       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text523
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 1
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
i1l3641:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
i1l3643:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u273_21
	goto	u273_20
u273_21:
	goto	i1l3663
u273_20:
	line	11
	
i1l3645:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	i1l3651
	
i1l1885:	
	line	13
	
i1l3647:	
	movlw	01h
	
u274_25:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u274_25
	line	14
	
i1l3649:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	i1l3651
	line	15
	
i1l1884:	
	line	12
	
i1l3651:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u275_21
	goto	u275_20
u275_21:
	goto	i1l3647
u275_20:
	goto	i1l3653
	
i1l1886:	
	goto	i1l3653
	line	16
	
i1l1887:	
	line	17
	
i1l3653:	
	movlw	01h
	
u276_25:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u276_25
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u277_25
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u277_25:
	skipc
	goto	u277_21
	goto	u277_20
u277_21:
	goto	i1l3659
u277_20:
	line	19
	
i1l3655:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
i1l3657:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	i1l3659
	line	21
	
i1l1888:	
	line	22
	
i1l3659:	
	movlw	01h
	
u278_25:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u278_25
	line	23
	
i1l3661:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u279_21
	goto	u279_20
u279_21:
	goto	i1l3653
u279_20:
	goto	i1l3663
	
i1l1889:	
	goto	i1l3663
	line	24
	
i1l1883:	
	line	25
	
i1l3663:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	i1l1890
	
i1l3665:	
	line	26
	
i1l1890:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
psect	text524,local,class=CODE,delta=2
global __ptext524
__ptext524:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
