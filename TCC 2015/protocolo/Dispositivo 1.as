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
# 4 "D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\Dispositivo_1.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\Dispositivo_1.c"
	dw 0xFFFC & 0xFFF7 & 0xFFEF & 0xFFFF ;#
	FNCALL	_main,_T2_init
	FNCALL	_main,_init
	FNCALL	_main,_serial_init
	FNCALL	_main,_lcd_init
	FNCALL	_main,_send
	FNCALL	_main,_protocol_bt
	FNCALL	_lcd_init,_Enable
	FNCALL	_lcd_init,_Write
	FNCALL	_lcd_init,_Clear
	FNCALL	_Clear,_Write
	FNCALL	_send,_scode
	FNCALL	_send,_test_bit
	FNCALL	_send,_end_cycle
	FNCALL	_Write,_Enable
	FNCALL	_protocol_bt,_acao_bt
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
	global	_byte_cont
	global	_cycle
	global	_dado_rx
	global	_dado_rx0
	global	_dado_tx
	global	_flag
	global	_lixo
	global	_start_cont
	global	_bit_tx
	global	_bt_use
	global	_byte_done
	global	_end_startcode
	global	_env
	global	_enviando
	global	_enviar
	global	_recebendo
	global	_recebeu_bit
	global	_start
	global	_testa
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
	global	_RCIE
_RCIE	set	1125
	global	_SYNC
_SYNC	set	1220
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
	file	"Dispositivo 1.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_byte_cont:
       ds      1

_cycle:
       ds      1

_dado_rx:
       ds      1

_dado_rx0:
       ds      1

_dado_tx:
       ds      1

_flag:
       ds      1

_lixo:
       ds      1

_start_cont:
       ds      1

psect	bitbssBANK1,class=BANK1,bit,space=1
global __pbitbssBANK1
__pbitbssBANK1:
_bit_tx:
       ds      1

_bt_use:
       ds      1

_byte_done:
       ds      1

_end_startcode:
       ds      1

_env:
       ds      1

_enviando:
       ds      1

_enviar:
       ds      1

_recebendo:
       ds      1

_recebeu_bit:
       ds      1

_start:
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
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
; Clear objects allocated to BITBANK1
psect cinit,class=CODE,delta=2
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	((__pbitbssBANK1/8)+0)&07Fh
	clrf	((__pbitbssBANK1/8)+1)&07Fh
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
	global	?_acao_bt
?_acao_bt:	; 0 bytes @ 0x0
	global	?_protocol_bt
?_protocol_bt:	; 0 bytes @ 0x0
	global	?_scode
?_scode:	; 0 bytes @ 0x0
	global	?_test_bit
?_test_bit:	; 0 bytes @ 0x0
	global	?_end_cycle
?_end_cycle:	; 0 bytes @ 0x0
	global	?_send
?_send:	; 0 bytes @ 0x0
	global	?_interrupts
?_interrupts:	; 0 bytes @ 0x0
	global	?_T2_init
?_T2_init:	; 0 bytes @ 0x0
	global	?_serial_init
?_serial_init:	; 0 bytes @ 0x0
	global	?_init
?_init:	; 0 bytes @ 0x0
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
	global	??_acao_bt
??_acao_bt:	; 0 bytes @ 0x14
	global	??_protocol_bt
??_protocol_bt:	; 0 bytes @ 0x14
	global	??_scode
??_scode:	; 0 bytes @ 0x14
	global	??_test_bit
??_test_bit:	; 0 bytes @ 0x14
	global	??_end_cycle
??_end_cycle:	; 0 bytes @ 0x14
	global	??_T2_init
??_T2_init:	; 0 bytes @ 0x14
	global	??_serial_init
??_serial_init:	; 0 bytes @ 0x14
	global	??_init
??_init:	; 0 bytes @ 0x14
	ds	2
	global	??_send
??_send:	; 0 bytes @ 0x16
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
;;Data sizes: Strings 4, constant 10, data 0, bss 8, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     29      37
;; BANK1           80      0       2
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
;; S1646$_cp	PTR const unsigned char  size(1) Largest target is 0
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
;;   _send->_scode
;;   _send->_test_bit
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
;;                            _T2_init
;;                               _init
;;                        _serial_init
;;                           _lcd_init
;;                               _send
;;                        _protocol_bt
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
;; (1) _send                                                 1     1      0       0
;;                                             22 BANK0      1     1      0
;;                              _scode
;;                           _test_bit
;;                          _end_cycle
;; ---------------------------------------------------------------------------------
;; (3) _Write                                                3     3      0      44
;;                                             20 BANK0      3     3      0
;;                             _Enable
;; ---------------------------------------------------------------------------------
;; (2) _test_bit                                             2     2      0       0
;;                                             20 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _scode                                                2     2      0       0
;;                                             20 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _protocol_bt                                          1     1      0       0
;;                                             20 BANK0      1     1      0
;;                            _acao_bt
;; ---------------------------------------------------------------------------------
;; (4) _Enable                                               0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _init                                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _serial_init                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _T2_init                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _end_cycle                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _acao_bt                                              0     0      0       0
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
;;   _T2_init
;;   _init
;;   _serial_init
;;   _lcd_init
;;     _Enable
;;     _Write
;;       _Enable
;;     _Clear
;;       _Write
;;         _Enable
;;   _send
;;     _scode
;;     _test_bit
;;     _end_cycle
;;   _protocol_bt
;;     _acao_bt
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
;;BANK0               50     1D      25       3       46.3%
;;BITBANK1            50      0       2       4        2.5%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK1               50      0       2       5        2.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK2            50      0       0       6        0.0%
;;BANK2               50      0       0       7        0.0%
;;ABS                  0      0      35       8        0.0%
;;BITBANK0            50      0       0       9        0.0%
;;DATA                 0      0      49      10        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 189 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\Dispositivo_1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;;		_T2_init
;;		_init
;;		_serial_init
;;		_lcd_init
;;		_send
;;		_protocol_bt
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\Dispositivo_1.c"
	line	189
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	190
	
l4014:	
;Dispositivo_1.c: 190: OSCCON=0b01110000;
	movlw	(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	191
	
l4016:	
;Dispositivo_1.c: 191: ANSEL=0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(286)^0100h	;volatile
	line	192
	
l4018:	
;Dispositivo_1.c: 192: ANSELH=0;
	clrf	(287)^0100h	;volatile
	line	193
;Dispositivo_1.c: 193: TRISA=0b00000100;
	movlw	(04h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	194
	
l4020:	
;Dispositivo_1.c: 194: TRISB=0;
	clrf	(134)^080h	;volatile
	line	195
	
l4022:	
;Dispositivo_1.c: 195: TRISC=0;
	clrf	(135)^080h	;volatile
	line	196
	
l4024:	
;Dispositivo_1.c: 196: PORTA=PORTB=PORTC=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	clrf	(6)	;volatile
	clrf	(5)	;volatile
	line	197
	
l4026:	
;Dispositivo_1.c: 197: INTCON=0b11010000;
	movlw	(0D0h)
	movwf	(11)	;volatile
	line	198
	
l4028:	
;Dispositivo_1.c: 198: T2_init();
	fcall	_T2_init
	line	199
	
l4030:	
;Dispositivo_1.c: 199: init();
	fcall	_init
	line	200
	
l4032:	
;Dispositivo_1.c: 200: serial_init();
	fcall	_serial_init
	line	201
	
l4034:	
;Dispositivo_1.c: 201: lcd_init();
	fcall	_lcd_init
	line	202
	
l4036:	
;Dispositivo_1.c: 202: _delay((unsigned long)((5)*(4000000/4000.0)));
	opt asmopt_off
movlw	7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u3467:
	decfsz	((??_main+0)+0),f
	goto	u3467
	decfsz	((??_main+0)+0+1),f
	goto	u3467
opt asmopt_on

	goto	l4038
	line	204
;Dispositivo_1.c: 204: while(1){
	
l1046:	
	line	205
	
l4038:	
;Dispositivo_1.c: 205: if(dado_tx){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dado_tx),w
	skipz
	goto	u3420
	goto	l1047
u3420:
	line	206
	
l4040:	
;Dispositivo_1.c: 206: enviando=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(_enviando/8)^080h,(_enviando)&7
	line	207
	
l1047:	
	line	208
;Dispositivo_1.c: 207: }
;Dispositivo_1.c: 208: if(enviando){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(_enviando/8)^080h,(_enviando)&7
	goto	u3431
	goto	u3430
u3431:
	goto	l4046
u3430:
	line	209
	
l4042:	
;Dispositivo_1.c: 209: if(enviar){
	btfss	(_enviar/8)^080h,(_enviar)&7
	goto	u3441
	goto	u3440
u3441:
	goto	l4046
u3440:
	line	210
	
l4044:	
;Dispositivo_1.c: 210: send();
	fcall	_send
	goto	l4046
	line	211
	
l1049:	
	goto	l4046
	line	212
	
l1048:	
	line	213
	
l4046:	
;Dispositivo_1.c: 211: }
;Dispositivo_1.c: 212: }
;Dispositivo_1.c: 213: if(bt_use){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(_bt_use/8)^080h,(_bt_use)&7
	goto	u3451
	goto	u3450
u3451:
	goto	l4038
u3450:
	line	214
	
l4048:	
;Dispositivo_1.c: 214: protocol_bt();
	fcall	_protocol_bt
	line	215
	
l4050:	
;Dispositivo_1.c: 215: dado_tx=dado_rx0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dado_rx0),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_dado_tx)
	line	216
	
l4052:	
;Dispositivo_1.c: 216: dado_rx0=0;
	clrf	(_dado_rx0)
	line	217
	
l4054:	
;Dispositivo_1.c: 217: bt_use=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(_bt_use/8)^080h,(_bt_use)&7
	goto	l4038
	line	218
	
l1050:	
	goto	l4038
	line	219
	
l1051:	
	line	204
	goto	l4038
	
l1052:	
	line	220
	
l1053:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_init
psect	text595,local,class=CODE,delta=2
global __ptext595
__ptext595:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 87 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\LCD_Claudio.c"
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
psect	text595
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\LCD_Claudio.c"
	line	87
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	88
	
l3982:	
;LCD_Claudio.c: 88: _delay((unsigned long)((15)*(4000000/4000.0)));
	opt asmopt_off
movlw	20
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	121
movwf	((??_lcd_init+0)+0),f
u3477:
	decfsz	((??_lcd_init+0)+0),f
	goto	u3477
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u3477
	nop2
opt asmopt_on

	line	89
	
l3984:	
;LCD_Claudio.c: 89: PORTC&=0xF0;
	movlw	(0F0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	andwf	(7),f	;volatile
	line	90
	
l3986:	
;LCD_Claudio.c: 90: PORTC|=0X03;
	movlw	(03h)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	iorwf	(7),f	;volatile
	line	91
	
l3988:	
;LCD_Claudio.c: 91: Enable();
	fcall	_Enable
	line	92
	
l3990:	
;LCD_Claudio.c: 92: _delay((unsigned long)((5)*(4000000/4000.0)));
	opt asmopt_off
movlw	7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	125
movwf	((??_lcd_init+0)+0),f
u3487:
	decfsz	((??_lcd_init+0)+0),f
	goto	u3487
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u3487
opt asmopt_on

	line	93
	
l3992:	
;LCD_Claudio.c: 93: PORTC&=0xF0;
	movlw	(0F0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	andwf	(7),f	;volatile
	line	94
	
l3994:	
;LCD_Claudio.c: 94: PORTC|=0X03;
	movlw	(03h)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	iorwf	(7),f	;volatile
	line	95
;LCD_Claudio.c: 95: Enable();
	fcall	_Enable
	line	96
	
l3996:	
;LCD_Claudio.c: 96: _delay((unsigned long)((100)*(4000000/4000000.0)));
	opt asmopt_off
movlw	33
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_lcd_init+0)+0,f
u3497:
decfsz	(??_lcd_init+0)+0,f
	goto	u3497
opt asmopt_on

	line	97
	
l3998:	
;LCD_Claudio.c: 97: PORTC&=0xF0;
	movlw	(0F0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	andwf	(7),f	;volatile
	line	98
	
l4000:	
;LCD_Claudio.c: 98: PORTC|=0X02;
	bsf	(7)+(1/8),(1)&7	;volatile
	line	99
	
l4002:	
;LCD_Claudio.c: 99: Enable();
	fcall	_Enable
	line	100
	
l4004:	
;LCD_Claudio.c: 100: _delay((unsigned long)((40)*(4000000/4000000.0)));
	opt asmopt_off
movlw	13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_lcd_init+0)+0,f
u3507:
decfsz	(??_lcd_init+0)+0,f
	goto	u3507
opt asmopt_on

	line	101
	
l4006:	
;LCD_Claudio.c: 101: Write(0x28);
	movlw	(028h)
	fcall	_Write
	line	102
	
l4008:	
;LCD_Claudio.c: 102: Write(0x0D);
	movlw	(0Dh)
	fcall	_Write
	line	103
	
l4010:	
;LCD_Claudio.c: 103: Write(0x06);
	movlw	(06h)
	fcall	_Write
	line	104
	
l4012:	
;LCD_Claudio.c: 104: Clear();
	fcall	_Clear
	line	105
	
l960:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_Clear
psect	text596,local,class=CODE,delta=2
global __ptext596
__ptext596:

;; *************** function _Clear *****************
;; Defined at:
;;		line 38 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\LCD_Claudio.c"
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
psect	text596
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\LCD_Claudio.c"
	line	38
	global	__size_of_Clear
	__size_of_Clear	equ	__end_of_Clear-_Clear
	
_Clear:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _Clear: [wreg+status,2+status,0+pclath+cstack]
	line	39
	
l3976:	
;LCD_Claudio.c: 39: RC6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7
	line	40
	
l3978:	
;LCD_Claudio.c: 40: Write(0x01);
	movlw	(01h)
	fcall	_Write
	line	41
	
l3980:	
;LCD_Claudio.c: 41: _delay((unsigned long)((2)*(4000000/4000.0)));
	opt asmopt_off
movlw	3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_Clear+0)+0+1),f
	movlw	151
movwf	((??_Clear+0)+0),f
u3517:
	decfsz	((??_Clear+0)+0),f
	goto	u3517
	decfsz	((??_Clear+0)+0+1),f
	goto	u3517
	nop2
opt asmopt_on

	line	42
	
l937:	
	return
	opt stack 0
GLOBAL	__end_of_Clear
	__end_of_Clear:
;; =============== function _Clear ends ============

	signat	_Clear,88
	global	_send
psect	text597,local,class=CODE,delta=2
global __ptext597
__ptext597:

;; *************** function _send *****************
;; Defined at:
;;		line 94 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\Dispositivo_1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_scode
;;		_test_bit
;;		_end_cycle
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text597
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\Dispositivo_1.c"
	line	94
	global	__size_of_send
	__size_of_send	equ	__end_of_send-_send
	
_send:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _send: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	95
	
l3880:	
;Dispositivo_1.c: 95: switch(cycle){
	goto	l3970
	line	96
;Dispositivo_1.c: 96: case 0: scode(); break;
	
l995:	
	
l3882:	
	fcall	_scode
	goto	l996
	line	97
;Dispositivo_1.c: 97: case 1: scode(); break;
	
l997:	
	
l3884:	
	fcall	_scode
	goto	l996
	line	98
;Dispositivo_1.c: 98: case 2: scode(); break;
	
l998:	
	
l3886:	
	fcall	_scode
	goto	l996
	line	99
;Dispositivo_1.c: 99: case 3: scode(); break;
	
l999:	
	
l3888:	
	fcall	_scode
	goto	l996
	line	100
;Dispositivo_1.c: 100: case 4: bit_tx=dado_tx>>7; test_bit(); break;
	
l1000:	
	
l3890:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dado_tx),w
	movwf	(??_send+0)+0
	movlw	07h
u3125:
	clrc
	rrf	(??_send+0)+0,f
	addlw	-1
	skipz
	goto	u3125
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(_bit_tx/8)^080h,(_bit_tx)&7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	0+(??_send+0)+0,0
	goto	u3135
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(_bit_tx/8)^080h,(_bit_tx)&7
u3135:

	
l3892:	
	fcall	_test_bit
	goto	l996
	line	101
;Dispositivo_1.c: 101: case 5: bit_tx=dado_tx>>6; test_bit(); break;
	
l1001:	
	
l3894:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dado_tx),w
	movwf	(??_send+0)+0
	movlw	06h
u3145:
	clrc
	rrf	(??_send+0)+0,f
	addlw	-1
	skipz
	goto	u3145
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(_bit_tx/8)^080h,(_bit_tx)&7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	0+(??_send+0)+0,0
	goto	u3155
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(_bit_tx/8)^080h,(_bit_tx)&7
u3155:

	
l3896:	
	fcall	_test_bit
	goto	l996
	line	102
;Dispositivo_1.c: 102: case 6: bit_tx=dado_tx>>5; test_bit(); break;
	
l1002:	
	
l3898:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dado_tx),w
	movwf	(??_send+0)+0
	movlw	05h
u3165:
	clrc
	rrf	(??_send+0)+0,f
	addlw	-1
	skipz
	goto	u3165
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(_bit_tx/8)^080h,(_bit_tx)&7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	0+(??_send+0)+0,0
	goto	u3175
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(_bit_tx/8)^080h,(_bit_tx)&7
u3175:

	
l3900:	
	fcall	_test_bit
	goto	l996
	line	103
;Dispositivo_1.c: 103: case 7: bit_tx=dado_tx>>4; test_bit(); break;
	
l1003:	
	
l3902:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dado_tx),w
	movwf	(??_send+0)+0
	movlw	04h
u3185:
	clrc
	rrf	(??_send+0)+0,f
	addlw	-1
	skipz
	goto	u3185
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(_bit_tx/8)^080h,(_bit_tx)&7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	0+(??_send+0)+0,0
	goto	u3195
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(_bit_tx/8)^080h,(_bit_tx)&7
u3195:

	
l3904:	
	fcall	_test_bit
	goto	l996
	line	104
;Dispositivo_1.c: 104: case 8: bit_tx=dado_tx>>3; test_bit(); break;
	
l1004:	
	
l3906:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dado_tx),w
	movwf	(??_send+0)+0
	movlw	03h
u3205:
	clrc
	rrf	(??_send+0)+0,f
	addlw	-1
	skipz
	goto	u3205
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(_bit_tx/8)^080h,(_bit_tx)&7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	0+(??_send+0)+0,0
	goto	u3215
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(_bit_tx/8)^080h,(_bit_tx)&7
u3215:

	
l3908:	
	fcall	_test_bit
	goto	l996
	line	105
;Dispositivo_1.c: 105: case 9: bit_tx=dado_tx>>2; test_bit(); break;
	
l1005:	
	
l3910:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dado_tx),w
	movwf	(??_send+0)+0
	movlw	02h
u3225:
	clrc
	rrf	(??_send+0)+0,f
	addlw	-1
	skipz
	goto	u3225
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(_bit_tx/8)^080h,(_bit_tx)&7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	0+(??_send+0)+0,0
	goto	u3235
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(_bit_tx/8)^080h,(_bit_tx)&7
u3235:

	
l3912:	
	fcall	_test_bit
	goto	l996
	line	106
;Dispositivo_1.c: 106: case 10: bit_tx=dado_tx>>1; test_bit(); break;
	
l1006:	
	
l3914:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dado_tx),w
	movwf	(??_send+0)+0
	movlw	01h
u3245:
	clrc
	rrf	(??_send+0)+0,f
	addlw	-1
	skipz
	goto	u3245
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(_bit_tx/8)^080h,(_bit_tx)&7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	0+(??_send+0)+0,0
	goto	u3255
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(_bit_tx/8)^080h,(_bit_tx)&7
u3255:

	
l3916:	
	fcall	_test_bit
	goto	l996
	line	107
;Dispositivo_1.c: 107: case 11: bit_tx=dado_tx; test_bit(); break;
	
l1007:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(_bit_tx/8)^080h,(_bit_tx)&7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_dado_tx),0
	goto	u3265
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(_bit_tx/8)^080h,(_bit_tx)&7
u3265:

	
l3918:	
	fcall	_test_bit
	goto	l996
	line	108
;Dispositivo_1.c: 108: case 12: cycle++; break;
	
l1008:	
	
l3920:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	addwf	(_cycle),f
	goto	l996
	line	109
;Dispositivo_1.c: 109: case 13: cycle++; break;
	
l1009:	
	
l3922:	
	movlw	(01h)
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	addwf	(_cycle),f
	goto	l996
	line	110
;Dispositivo_1.c: 110: case 14: cycle++; break;
	
l1010:	
	
l3924:	
	movlw	(01h)
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	addwf	(_cycle),f
	goto	l996
	line	111
;Dispositivo_1.c: 111: case 15: cycle++; break;
	
l1011:	
	
l3926:	
	movlw	(01h)
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	addwf	(_cycle),f
	goto	l996
	line	112
;Dispositivo_1.c: 112: case 16: scode(); break;
	
l1012:	
	
l3928:	
	fcall	_scode
	goto	l996
	line	113
;Dispositivo_1.c: 113: case 17: scode(); break;
	
l1013:	
	
l3930:	
	fcall	_scode
	goto	l996
	line	114
;Dispositivo_1.c: 114: case 18: scode(); break;
	
l1014:	
	
l3932:	
	fcall	_scode
	goto	l996
	line	115
;Dispositivo_1.c: 115: case 19: scode(); break;
	
l1015:	
	
l3934:	
	fcall	_scode
	goto	l996
	line	116
;Dispositivo_1.c: 116: case 20: bit_tx=dado_tx>>7; test_bit(); break;
	
l1016:	
	
l3936:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dado_tx),w
	movwf	(??_send+0)+0
	movlw	07h
u3275:
	clrc
	rrf	(??_send+0)+0,f
	addlw	-1
	skipz
	goto	u3275
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(_bit_tx/8)^080h,(_bit_tx)&7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	0+(??_send+0)+0,0
	goto	u3285
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(_bit_tx/8)^080h,(_bit_tx)&7
u3285:

	
l3938:	
	fcall	_test_bit
	goto	l996
	line	117
;Dispositivo_1.c: 117: case 21: bit_tx=dado_tx>>6; test_bit(); break;
	
l1017:	
	
l3940:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dado_tx),w
	movwf	(??_send+0)+0
	movlw	06h
u3295:
	clrc
	rrf	(??_send+0)+0,f
	addlw	-1
	skipz
	goto	u3295
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(_bit_tx/8)^080h,(_bit_tx)&7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	0+(??_send+0)+0,0
	goto	u3305
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(_bit_tx/8)^080h,(_bit_tx)&7
u3305:

	
l3942:	
	fcall	_test_bit
	goto	l996
	line	118
;Dispositivo_1.c: 118: case 22: bit_tx=dado_tx>>5; test_bit(); break;
	
l1018:	
	
l3944:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dado_tx),w
	movwf	(??_send+0)+0
	movlw	05h
u3315:
	clrc
	rrf	(??_send+0)+0,f
	addlw	-1
	skipz
	goto	u3315
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(_bit_tx/8)^080h,(_bit_tx)&7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	0+(??_send+0)+0,0
	goto	u3325
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(_bit_tx/8)^080h,(_bit_tx)&7
u3325:

	
l3946:	
	fcall	_test_bit
	goto	l996
	line	119
;Dispositivo_1.c: 119: case 23: bit_tx=dado_tx>>4; test_bit(); break;
	
l1019:	
	
l3948:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dado_tx),w
	movwf	(??_send+0)+0
	movlw	04h
u3335:
	clrc
	rrf	(??_send+0)+0,f
	addlw	-1
	skipz
	goto	u3335
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(_bit_tx/8)^080h,(_bit_tx)&7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	0+(??_send+0)+0,0
	goto	u3345
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(_bit_tx/8)^080h,(_bit_tx)&7
u3345:

	
l3950:	
	fcall	_test_bit
	goto	l996
	line	120
;Dispositivo_1.c: 120: case 24: bit_tx=dado_tx>>3; test_bit(); break;
	
l1020:	
	
l3952:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dado_tx),w
	movwf	(??_send+0)+0
	movlw	03h
u3355:
	clrc
	rrf	(??_send+0)+0,f
	addlw	-1
	skipz
	goto	u3355
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(_bit_tx/8)^080h,(_bit_tx)&7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	0+(??_send+0)+0,0
	goto	u3365
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(_bit_tx/8)^080h,(_bit_tx)&7
u3365:

	
l3954:	
	fcall	_test_bit
	goto	l996
	line	121
;Dispositivo_1.c: 121: case 25: bit_tx=dado_tx>>2; test_bit(); break;
	
l1021:	
	
l3956:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dado_tx),w
	movwf	(??_send+0)+0
	movlw	02h
u3375:
	clrc
	rrf	(??_send+0)+0,f
	addlw	-1
	skipz
	goto	u3375
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(_bit_tx/8)^080h,(_bit_tx)&7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	0+(??_send+0)+0,0
	goto	u3385
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(_bit_tx/8)^080h,(_bit_tx)&7
u3385:

	
l3958:	
	fcall	_test_bit
	goto	l996
	line	122
;Dispositivo_1.c: 122: case 26: bit_tx=dado_tx>>1; test_bit(); break;
	
l1022:	
	
l3960:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dado_tx),w
	movwf	(??_send+0)+0
	movlw	01h
u3395:
	clrc
	rrf	(??_send+0)+0,f
	addlw	-1
	skipz
	goto	u3395
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(_bit_tx/8)^080h,(_bit_tx)&7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	0+(??_send+0)+0,0
	goto	u3405
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(_bit_tx/8)^080h,(_bit_tx)&7
u3405:

	
l3962:	
	fcall	_test_bit
	goto	l996
	line	123
;Dispositivo_1.c: 123: case 27: bit_tx=dado_tx; test_bit(); end_cycle(); break;
	
l1023:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(_bit_tx/8)^080h,(_bit_tx)&7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_dado_tx),0
	goto	u3415
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(_bit_tx/8)^080h,(_bit_tx)&7
u3415:

	
l3964:	
	fcall	_test_bit
	
l3966:	
	fcall	_end_cycle
	goto	l996
	line	124
	
l3968:	
;Dispositivo_1.c: 124: }
	goto	l996
	line	95
	
l994:	
	
l3970:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_cycle),w
	; Switch size 1, requested type "space"
; Number of cases is 28, Range of values is 0 to 27
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           63     7 (fixed)
; simple_byte           85    43 (average)
; jumptable            260     6 (fixed)
; rangetable            32     6 (fixed)
; spacedrange           62     9 (fixed)
; locatedrange          28     3 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	28
	subwf	fsr,w
skipnc
goto l996
movlw high(S4076)
movwf pclath
	clrc
	rlf fsr,w
	addlw low(S4076)
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S4076:
	ljmp	l3882
	ljmp	l3884
	ljmp	l3886
	ljmp	l3888
	ljmp	l3890
	ljmp	l3894
	ljmp	l3898
	ljmp	l3902
	ljmp	l3906
	ljmp	l3910
	ljmp	l3914
	ljmp	l1007
	ljmp	l3920
	ljmp	l3922
	ljmp	l3924
	ljmp	l3926
	ljmp	l3928
	ljmp	l3930
	ljmp	l3932
	ljmp	l3934
	ljmp	l3936
	ljmp	l3940
	ljmp	l3944
	ljmp	l3948
	ljmp	l3952
	ljmp	l3956
	ljmp	l3960
	ljmp	l1023
psect	text597

	line	124
	
l996:	
	line	125
;Dispositivo_1.c: 125: enviar=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(_enviar/8)^080h,(_enviar)&7
	line	126
	
l1024:	
	return
	opt stack 0
GLOBAL	__end_of_send
	__end_of_send:
;; =============== function _send ends ============

	signat	_send,88
	global	_Write
psect	text598,local,class=CODE,delta=2
global __ptext598
__ptext598:

;; *************** function _Write *****************
;; Defined at:
;;		line 28 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\LCD_Claudio.c"
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
psect	text598
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\LCD_Claudio.c"
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
	
l3868:	
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
u3115:
	clrc
	rrf	(??_Write+0)+0,f
	addlw	-1
	skipz
	goto	u3115
	movf	0+(??_Write+0)+0,w
	movwf	(??_Write+1)+0
	movf	(??_Write+1)+0,w
	iorwf	(7),f	;volatile
	line	31
	
l3870:	
;LCD_Claudio.c: 31: Enable();
	fcall	_Enable
	line	32
	
l3872:	
;LCD_Claudio.c: 32: PORTC&=0XF0;
	movlw	(0F0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Write+0)+0
	movf	(??_Write+0)+0,w
	andwf	(7),f	;volatile
	line	33
	
l3874:	
;LCD_Claudio.c: 33: PORTC|=(c & 0X0F);
	movf	(Write@c),w
	andlw	0Fh
	movwf	(??_Write+0)+0
	movf	(??_Write+0)+0,w
	iorwf	(7),f	;volatile
	line	34
	
l3876:	
;LCD_Claudio.c: 34: Enable();
	fcall	_Enable
	line	35
	
l3878:	
;LCD_Claudio.c: 35: _delay((unsigned long)((40)*(4000000/4000000.0)));
	opt asmopt_off
movlw	13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_Write+0)+0,f
u3527:
decfsz	(??_Write+0)+0,f
	goto	u3527
opt asmopt_on

	line	36
	
l934:	
	return
	opt stack 0
GLOBAL	__end_of_Write
	__end_of_Write:
;; =============== function _Write ends ============

	signat	_Write,4216
	global	_test_bit
psect	text599,local,class=CODE,delta=2
global __ptext599
__ptext599:

;; *************** function _test_bit *****************
;; Defined at:
;;		line 74 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\Dispositivo_1.c"
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
;;		_send
;; This function uses a non-reentrant model
;;
psect	text599
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\Dispositivo_1.c"
	line	74
	global	__size_of_test_bit
	__size_of_test_bit	equ	__end_of_test_bit-_test_bit
	
_test_bit:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _test_bit: [wreg+status,2+status,0]
	line	75
	
l3858:	
;Dispositivo_1.c: 75: _delay((unsigned long)((2)*(4000000/4000.0)));
	opt asmopt_off
movlw	3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_test_bit+0)+0+1),f
	movlw	151
movwf	((??_test_bit+0)+0),f
u3537:
	decfsz	((??_test_bit+0)+0),f
	goto	u3537
	decfsz	((??_test_bit+0)+0+1),f
	goto	u3537
	nop2
opt asmopt_on

	line	76
	
l3860:	
;Dispositivo_1.c: 76: if(bit_tx){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(_bit_tx/8)^080h,(_bit_tx)&7
	goto	u3101
	goto	u3100
u3101:
	goto	l3864
u3100:
	line	77
	
l3862:	
;Dispositivo_1.c: 77: CCPR1L=10;
	movlw	(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	78
;Dispositivo_1.c: 78: }
	goto	l987
	line	79
	
l986:	
	line	80
	
l3864:	
;Dispositivo_1.c: 79: else{
;Dispositivo_1.c: 80: CCPR1L=20;
	movlw	(014h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	81
	
l987:	
	line	82
;Dispositivo_1.c: 81: }
;Dispositivo_1.c: 82: _delay((unsigned long)((2)*(4000000/4000.0)));
	opt asmopt_off
movlw	3
movwf	((??_test_bit+0)+0+1),f
	movlw	151
movwf	((??_test_bit+0)+0),f
u3547:
	decfsz	((??_test_bit+0)+0),f
	goto	u3547
	decfsz	((??_test_bit+0)+0+1),f
	goto	u3547
	nop2
opt asmopt_on

	line	83
;Dispositivo_1.c: 83: CCPR1L=20;
	movlw	(014h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	84
	
l3866:	
;Dispositivo_1.c: 84: cycle++;
	movlw	(01h)
	movwf	(??_test_bit+0)+0
	movf	(??_test_bit+0)+0,w
	addwf	(_cycle),f
	line	85
	
l988:	
	return
	opt stack 0
GLOBAL	__end_of_test_bit
	__end_of_test_bit:
;; =============== function _test_bit ends ============

	signat	_test_bit,88
	global	_scode
psect	text600,local,class=CODE,delta=2
global __ptext600
__ptext600:

;; *************** function _scode *****************
;; Defined at:
;;		line 66 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\Dispositivo_1.c"
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
;;		_send
;; This function uses a non-reentrant model
;;
psect	text600
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\Dispositivo_1.c"
	line	66
	global	__size_of_scode
	__size_of_scode	equ	__end_of_scode-_scode
	
_scode:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _scode: [wreg+status,2+status,0]
	line	67
	
l3854:	
;Dispositivo_1.c: 67: _delay((unsigned long)((2)*(4000000/4000.0)));
	opt asmopt_off
movlw	3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_scode+0)+0+1),f
	movlw	151
movwf	((??_scode+0)+0),f
u3557:
	decfsz	((??_scode+0)+0),f
	goto	u3557
	decfsz	((??_scode+0)+0+1),f
	goto	u3557
	nop2
opt asmopt_on

	line	68
;Dispositivo_1.c: 68: CCPR1L=10;
	movlw	(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	69
;Dispositivo_1.c: 69: _delay((unsigned long)((2)*(4000000/4000.0)));
	opt asmopt_off
movlw	3
movwf	((??_scode+0)+0+1),f
	movlw	151
movwf	((??_scode+0)+0),f
u3567:
	decfsz	((??_scode+0)+0),f
	goto	u3567
	decfsz	((??_scode+0)+0+1),f
	goto	u3567
	nop2
opt asmopt_on

	line	70
;Dispositivo_1.c: 70: CCPR1L=20;
	movlw	(014h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	71
	
l3856:	
;Dispositivo_1.c: 71: cycle++;
	movlw	(01h)
	movwf	(??_scode+0)+0
	movf	(??_scode+0)+0,w
	addwf	(_cycle),f
	line	72
	
l983:	
	return
	opt stack 0
GLOBAL	__end_of_scode
	__end_of_scode:
;; =============== function _scode ends ============

	signat	_scode,88
	global	_protocol_bt
psect	text601,local,class=CODE,delta=2
global __ptext601
__ptext601:

;; *************** function _protocol_bt *****************
;; Defined at:
;;		line 46 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\Dispositivo_1.c"
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
;;      Temps:          0       1       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_acao_bt
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text601
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\Dispositivo_1.c"
	line	46
	global	__size_of_protocol_bt
	__size_of_protocol_bt	equ	__end_of_protocol_bt-_protocol_bt
	
_protocol_bt:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _protocol_bt: [wreg+status,2+status,0+pclath+cstack]
	line	47
	
l3846:	
;Dispositivo_1.c: 47: if(dado_rx0>=128){
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_dado_rx0),w
	skipc
	goto	u3081
	goto	u3080
u3081:
	goto	l3850
u3080:
	line	48
	
l3848:	
;Dispositivo_1.c: 48: acao_bt();
	fcall	_acao_bt
	line	49
;Dispositivo_1.c: 49: }
	goto	l974
	line	50
	
l971:	
	
l3850:	
;Dispositivo_1.c: 50: else if(((dado_rx0&0b01111110)>>1)==10){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dado_rx0),w
	movwf	(??_protocol_bt+0)+0
	clrc
	rrf	(??_protocol_bt+0)+0,w
	andlw	03Fh
	xorlw	0Ah
	skipz
	goto	u3091
	goto	u3090
u3091:
	goto	l974
u3090:
	line	51
	
l3852:	
;Dispositivo_1.c: 51: acao_bt();
	fcall	_acao_bt
	goto	l974
	line	52
	
l973:	
	goto	l974
	line	53
	
l972:	
	
l974:	
	return
	opt stack 0
GLOBAL	__end_of_protocol_bt
	__end_of_protocol_bt:
;; =============== function _protocol_bt ends ============

	signat	_protocol_bt,88
	global	_Enable
psect	text602,local,class=CODE,delta=2
global __ptext602
__ptext602:

;; *************** function _Enable *****************
;; Defined at:
;;		line 22 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\LCD_Claudio.c"
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
psect	text602
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\LCD_Claudio.c"
	line	22
	global	__size_of_Enable
	__size_of_Enable	equ	__end_of_Enable-_Enable
	
_Enable:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _Enable: []
	line	23
	
l3844:	
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
	
l931:	
	return
	opt stack 0
GLOBAL	__end_of_Enable
	__end_of_Enable:
;; =============== function _Enable ends ============

	signat	_Enable,88
	global	_init
psect	text603,local,class=CODE,delta=2
global __ptext603
__ptext603:

;; *************** function _init *****************
;; Defined at:
;;		line 177 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\Dispositivo_1.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text603
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\Dispositivo_1.c"
	line	177
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
	opt	stack 0
; Regs used in _init: []
	line	178
	
l3774:	
;Dispositivo_1.c: 178: bit_tx=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(_bit_tx/8)^080h,(_bit_tx)&7
	line	179
;Dispositivo_1.c: 179: byte_done=0;
	bcf	(_byte_done/8)^080h,(_byte_done)&7
	line	180
;Dispositivo_1.c: 180: end_startcode=0;
	bcf	(_end_startcode/8)^080h,(_end_startcode)&7
	line	181
;Dispositivo_1.c: 181: enviando=0;
	bcf	(_enviando/8)^080h,(_enviando)&7
	line	182
;Dispositivo_1.c: 182: recebendo=0;
	bcf	(_recebendo/8)^080h,(_recebendo)&7
	line	183
;Dispositivo_1.c: 183: recebeu_bit=0;
	bcf	(_recebeu_bit/8)^080h,(_recebeu_bit)&7
	line	184
;Dispositivo_1.c: 184: enviar=0;
	bcf	(_enviar/8)^080h,(_enviar)&7
	line	185
;Dispositivo_1.c: 185: start=0;
	bcf	(_start/8)^080h,(_start)&7
	line	186
;Dispositivo_1.c: 186: testa=0;
	bcf	(_testa/8)^080h,(_testa)&7
	line	187
	
l1043:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
;; =============== function _init ends ============

	signat	_init,88
	global	_serial_init
psect	text604,local,class=CODE,delta=2
global __ptext604
__ptext604:

;; *************** function _serial_init *****************
;; Defined at:
;;		line 161 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\Dispositivo_1.c"
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
psect	text604
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\Dispositivo_1.c"
	line	161
	global	__size_of_serial_init
	__size_of_serial_init	equ	__end_of_serial_init-_serial_init
	
_serial_init:	
	opt	stack 0
; Regs used in _serial_init: [wreg+status,2]
	line	162
	
l3752:	
;Dispositivo_1.c: 162: SYNC=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1220/8)^080h,(1220)&7
	line	163
;Dispositivo_1.c: 163: BRGH=1;
	bsf	(1218/8)^080h,(1218)&7
	line	164
;Dispositivo_1.c: 164: BRG16=0;
	bcf	(1243/8)^080h,(1243)&7
	line	165
	
l3754:	
;Dispositivo_1.c: 165: SPBRGH=0;
	clrf	(154)^080h	;volatile
	line	166
	
l3756:	
;Dispositivo_1.c: 166: SPBRG=51;
	movlw	(033h)
	movwf	(153)^080h	;volatile
	line	167
	
l3758:	
;Dispositivo_1.c: 167: SPEN=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	168
	
l3760:	
;Dispositivo_1.c: 168: TX9=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1222/8)^080h,(1222)&7
	line	169
	
l3762:	
;Dispositivo_1.c: 169: TXEN=1;
	bsf	(1221/8)^080h,(1221)&7
	line	170
	
l3764:	
;Dispositivo_1.c: 170: TXIE=0;
	bcf	(1124/8)^080h,(1124)&7
	line	171
	
l3766:	
;Dispositivo_1.c: 171: RCIE=1;
	bsf	(1125/8)^080h,(1125)&7
	line	172
	
l3768:	
;Dispositivo_1.c: 172: PEIE=1;
	bsf	(94/8),(94)&7
	line	173
	
l3770:	
;Dispositivo_1.c: 173: RX9=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(198/8),(198)&7
	line	174
	
l3772:	
;Dispositivo_1.c: 174: CREN=1;
	bsf	(196/8),(196)&7
	line	175
	
l1040:	
	return
	opt stack 0
GLOBAL	__end_of_serial_init
	__end_of_serial_init:
;; =============== function _serial_init ends ============

	signat	_serial_init,88
	global	_T2_init
psect	text605,local,class=CODE,delta=2
global __ptext605
__ptext605:

;; *************** function _T2_init *****************
;; Defined at:
;;		line 152 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\Dispositivo_1.c"
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
psect	text605
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\Dispositivo_1.c"
	line	152
	global	__size_of_T2_init
	__size_of_T2_init	equ	__end_of_T2_init-_T2_init
	
_T2_init:	
	opt	stack 0
; Regs used in _T2_init: [wreg+status,2]
	line	153
	
l3742:	
;Dispositivo_1.c: 153: T2CON=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(18)	;volatile
	line	154
;Dispositivo_1.c: 154: TMR2=0;
	clrf	(17)	;volatile
	line	155
	
l3744:	
;Dispositivo_1.c: 155: PR2=19;
	movlw	(013h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	156
	
l3746:	
;Dispositivo_1.c: 156: CCP1CON=0b00001111;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(23)	;volatile
	line	157
	
l3748:	
;Dispositivo_1.c: 157: CCPR1L=20;
	movlw	(014h)
	movwf	(21)	;volatile
	line	158
	
l3750:	
;Dispositivo_1.c: 158: TMR2ON=1;
	bsf	(146/8),(146)&7
	line	159
	
l1037:	
	return
	opt stack 0
GLOBAL	__end_of_T2_init
	__end_of_T2_init:
;; =============== function _T2_init ends ============

	signat	_T2_init,88
	global	_end_cycle
psect	text606,local,class=CODE,delta=2
global __ptext606
__ptext606:

;; *************** function _end_cycle *****************
;; Defined at:
;;		line 87 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\Dispositivo_1.c"
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
;;		_send
;; This function uses a non-reentrant model
;;
psect	text606
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\Dispositivo_1.c"
	line	87
	global	__size_of_end_cycle
	__size_of_end_cycle	equ	__end_of_end_cycle-_end_cycle
	
_end_cycle:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _end_cycle: []
	line	88
	
l3672:	
;Dispositivo_1.c: 88: enviando=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(_enviando/8)^080h,(_enviando)&7
	line	89
;Dispositivo_1.c: 89: bit_tx=0;
	bcf	(_bit_tx/8)^080h,(_bit_tx)&7
	line	90
;Dispositivo_1.c: 90: dado_tx=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_dado_tx)
	line	91
;Dispositivo_1.c: 91: cycle=0;
	clrf	(_cycle)
	line	92
	
l991:	
	return
	opt stack 0
GLOBAL	__end_of_end_cycle
	__end_of_end_cycle:
;; =============== function _end_cycle ends ============

	signat	_end_cycle,88
	global	_acao_bt
psect	text607,local,class=CODE,delta=2
global __ptext607
__ptext607:

;; *************** function _acao_bt *****************
;; Defined at:
;;		line 38 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\Dispositivo_1.c"
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
;;		_protocol_bt
;; This function uses a non-reentrant model
;;
psect	text607
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\Dispositivo_1.c"
	line	38
	global	__size_of_acao_bt
	__size_of_acao_bt	equ	__end_of_acao_bt-_acao_bt
	
_acao_bt:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _acao_bt: []
	line	39
	
l3664:	
;Dispositivo_1.c: 39: if((dado_rx0&0b00000001)==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_dado_rx0),(0)&7
	goto	u2791
	goto	u2790
u2791:
	goto	l966
u2790:
	line	40
	
l3666:	
;Dispositivo_1.c: 40: RA4=1;
	bsf	(44/8),(44)&7
	line	41
;Dispositivo_1.c: 41: }
	goto	l968
	line	42
	
l966:	
	line	43
;Dispositivo_1.c: 42: else{
;Dispositivo_1.c: 43: RA4=0;
	bcf	(44/8),(44)&7
	goto	l968
	line	44
	
l967:	
	line	45
	
l968:	
	return
	opt stack 0
GLOBAL	__end_of_acao_bt
	__end_of_acao_bt:
;; =============== function _acao_bt ends ============

	signat	_acao_bt,88
	global	_interrupts
psect	text608,local,class=CODE,delta=2
global __ptext608
__ptext608:

;; *************** function _interrupts *****************
;; Defined at:
;;		line 128 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\Dispositivo_1.c"
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
psect	text608
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\Dispositivo_1.c"
	line	128
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
psect	text608
	line	129
	
i1l3674:	
;Dispositivo_1.c: 129: if(INTF){
	btfss	(89/8),(89)&7
	goto	u280_21
	goto	u280_20
u280_21:
	goto	i1l1027
u280_20:
	line	130
	
i1l3676:	
;Dispositivo_1.c: 130: if(dado_tx){
	movf	(_dado_tx),w
	skipz
	goto	u281_20
	goto	i1l1028
u281_20:
	line	131
	
i1l3678:	
;Dispositivo_1.c: 131: enviar=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(_enviar/8)^080h,(_enviar)&7
	line	132
	
i1l1028:	
	line	133
;Dispositivo_1.c: 132: }
;Dispositivo_1.c: 133: INTF=0;
	bcf	(89/8),(89)&7
	line	134
	
i1l1027:	
	line	135
;Dispositivo_1.c: 134: }
;Dispositivo_1.c: 135: if(RCIF==1 && RCIE==1){
	bcf	status, 5	;RP0=0, select bank0
	btfss	(101/8),(101)&7
	goto	u282_21
	goto	u282_20
u282_21:
	goto	i1l1034
u282_20:
	
i1l3680:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1125/8)^080h,(1125)&7
	goto	u283_21
	goto	u283_20
u283_21:
	goto	i1l1034
u283_20:
	line	136
	
i1l3682:	
;Dispositivo_1.c: 136: if(FERR==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(194/8),(194)&7
	goto	u284_21
	goto	u284_20
u284_21:
	goto	i1l1030
u284_20:
	line	137
	
i1l3684:	
;Dispositivo_1.c: 137: lixo=RCREG;
	movf	(26),w	;volatile
	movwf	(??_interrupts+0)+0
	movf	(??_interrupts+0)+0,w
	movwf	(_lixo)
	line	138
;Dispositivo_1.c: 138: }
	goto	i1l3694
	line	139
	
i1l1030:	
;Dispositivo_1.c: 139: else if(OERR==1){
	btfss	(193/8),(193)&7
	goto	u285_21
	goto	u285_20
u285_21:
	goto	i1l3688
u285_20:
	line	140
	
i1l3686:	
;Dispositivo_1.c: 140: CREN=0;
	bcf	(196/8),(196)&7
	line	141
;Dispositivo_1.c: 141: CREN=1;
	bsf	(196/8),(196)&7
	line	142
;Dispositivo_1.c: 142: }
	goto	i1l3694
	line	143
	
i1l1032:	
	line	144
	
i1l3688:	
;Dispositivo_1.c: 143: else{
;Dispositivo_1.c: 144: dado_rx0=RCREG;
	movf	(26),w	;volatile
	movwf	(??_interrupts+0)+0
	movf	(??_interrupts+0)+0,w
	movwf	(_dado_rx0)
	line	145
	
i1l3690:	
;Dispositivo_1.c: 145: printf("\f%d",dado_rx0);
	movf	(_dado_rx0),w
	movwf	(??_interrupts+0)+0
	clrf	(??_interrupts+0)+0+1
	movf	0+(??_interrupts+0)+0,w
	movwf	(?_printf)
	movf	1+(??_interrupts+0)+0,w
	movwf	(?_printf+1)
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_printf
	line	146
	
i1l3692:	
;Dispositivo_1.c: 146: bt_use=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(_bt_use/8)^080h,(_bt_use)&7
	goto	i1l3694
	line	147
	
i1l1033:	
	goto	i1l3694
	
i1l1031:	
	line	148
	
i1l3694:	
;Dispositivo_1.c: 147: }
;Dispositivo_1.c: 148: RCIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(101/8),(101)&7
	goto	i1l1034
	line	149
	
i1l1029:	
	line	150
	
i1l1034:	
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
psect	text609,local,class=CODE,delta=2
global __ptext609
__ptext609:

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
psect	text609
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
	
i1l3696:	
	movlw	(?_printf)&0ffh
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@ap)
	line	540
	goto	i1l3740
	
i1l1065:	
	line	542
	
i1l3698:	
	movf	(printf@c),w
	xorlw	025h
	skipnz
	goto	u286_21
	goto	u286_20
u286_21:
	goto	i1l1066
u286_20:
	line	545
	
i1l3700:	
	movf	(printf@c),w
	fcall	_putch
	line	546
	goto	i1l3740
	line	547
	
i1l1066:	
	line	552
	clrf	(printf@flag)
	line	638
	goto	i1l3704
	line	640
	
i1l1068:	
	line	641
	goto	i1l1083
	line	700
	
i1l1070:	
	goto	i1l3706
	line	701
	
i1l1071:	
	line	702
	goto	i1l3706
	line	805
	
i1l1073:	
	line	816
	goto	i1l3740
	line	825
	
i1l3702:	
	goto	i1l3706
	line	638
	
i1l1067:	
	
i1l3704:	
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
	goto	i1l1083
	xorlw	100^0	; case 100
	skipnz
	goto	i1l3706
	xorlw	105^100	; case 105
	skipnz
	goto	i1l3706
	goto	i1l3740
	opt asmopt_on

	line	825
	
i1l1072:	
	line	1254
	
i1l3706:	
	movf	(printf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(printf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(printf@_val+1)
	
i1l3708:	
	movlw	(02h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@ap),f
	line	1256
	
i1l3710:	
	btfss	(printf@_val+1),7
	goto	u287_21
	goto	u287_20
u287_21:
	goto	i1l3716
u287_20:
	line	1257
	
i1l3712:	
	movlw	(03h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	iorwf	(printf@flag),f
	line	1258
	
i1l3714:	
	comf	(printf@_val),f
	comf	(printf@_val+1),f
	incf	(printf@_val),f
	skipnz
	incf	(printf@_val+1),f
	goto	i1l3716
	line	1259
	
i1l1074:	
	line	1300
	
i1l3716:	
	clrf	(printf@c)
	bsf	status,0
	rlf	(printf@c),f
	
i1l3718:	
	movf	(printf@c),w
	xorlw	05h
	skipz
	goto	u288_21
	goto	u288_20
u288_21:
	goto	i1l3722
u288_20:
	goto	i1l3730
	
i1l3720:	
	goto	i1l3730
	line	1301
	
i1l1075:	
	
i1l3722:	
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
	goto	u289_25
	movf	0+(??_printf+1)+0,w
	subwf	(printf@_val),w
u289_25:
	skipnc
	goto	u289_21
	goto	u289_20
u289_21:
	goto	i1l3726
u289_20:
	goto	i1l3730
	line	1302
	
i1l3724:	
	goto	i1l3730
	
i1l1077:	
	line	1300
	
i1l3726:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@c),f
	
i1l3728:	
	movf	(printf@c),w
	xorlw	05h
	skipz
	goto	u290_21
	goto	u290_20
u290_21:
	goto	i1l3722
u290_20:
	goto	i1l3730
	
i1l1076:	
	line	1433
	
i1l3730:	
	movf	(printf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u291_21
	goto	u291_20
u291_21:
	goto	i1l3734
u291_20:
	line	1434
	
i1l3732:	
	movlw	(02Dh)
	fcall	_putch
	goto	i1l3734
	
i1l1078:	
	line	1467
	
i1l3734:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printf@c),w
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@prec)
	line	1469
	goto	i1l3738
	
i1l1080:	
	line	1484
	
i1l3736:	
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
	goto	i1l3738
	line	1517
	
i1l1079:	
	line	1469
	
i1l3738:	
	movlw	(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@prec),f
	movf	((printf@prec)),w
	xorlw	-1
	skipz
	goto	u292_21
	goto	u292_20
u292_21:
	goto	i1l3736
u292_20:
	goto	i1l3740
	
i1l1081:	
	goto	i1l3740
	line	1525
	
i1l1064:	
	line	540
	
i1l3740:	
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
	goto	u293_21
	goto	u293_20
u293_21:
	goto	i1l3698
u293_20:
	goto	i1l1083
	
i1l1082:	
	goto	i1l1083
	line	1527
	
i1l1069:	
	line	1533
;	Return value of _printf is never used
	
i1l1083:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_putch
psect	text610,local,class=CODE,delta=2
global __ptext610
__ptext610:

;; *************** function _putch *****************
;; Defined at:
;;		line 107 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\LCD_Claudio.c"
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
psect	text610
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\LCD_Claudio.c"
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
	
i1l3662:	
;LCD_Claudio.c: 108: lcd_putc(c);
	movf	(putch@c),w
	fcall	_lcd_putc
	line	109
	
i1l963:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_lcd_putc
psect	text611,local,class=CODE,delta=2
global __ptext611
__ptext611:

;; *************** function _lcd_putc *****************
;; Defined at:
;;		line 50 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\LCD_Claudio.c"
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
psect	text611
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\LCD_Claudio.c"
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
	
i1l3636:	
;LCD_Claudio.c: 51: switch (c){
	goto	i1l3656
	line	52
;LCD_Claudio.c: 52: case '\f':
	
i1l947:	
	line	53
	
i1l3638:	
;LCD_Claudio.c: 53: Clear();
	fcall	i1_Clear
	line	54
;LCD_Claudio.c: 54: break;
	goto	i1l954
	line	55
;LCD_Claudio.c: 55: case '\n':
	
i1l949:	
	line	56
	
i1l3640:	
;LCD_Claudio.c: 56: lcd_goto(0x40);
	movlw	(040h)
	fcall	_lcd_goto
	line	57
;LCD_Claudio.c: 57: break;
	goto	i1l954
	line	58
;LCD_Claudio.c: 58: case '\r':
	
i1l950:	
	line	59
;LCD_Claudio.c: 59: RC6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7
	line	60
	
i1l3642:	
;LCD_Claudio.c: 60: Write(0x80);
	movlw	(080h)
	fcall	i1_Write
	line	61
;LCD_Claudio.c: 61: break;
	goto	i1l954
	line	62
;LCD_Claudio.c: 62: case '\b':
	
i1l951:	
	line	63
;LCD_Claudio.c: 63: RC6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7
	line	64
	
i1l3644:	
;LCD_Claudio.c: 64: Write(0b0000010000);
	movlw	(010h)
	fcall	i1_Write
	line	65
	
i1l3646:	
;LCD_Claudio.c: 65: RC6=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(62/8),(62)&7
	line	66
;LCD_Claudio.c: 66: lcd_putc(32);
	movlw	(020h)
	fcall	_lcd_putc
	line	67
	
i1l3648:	
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
	goto	i1l954
	line	70
;LCD_Claudio.c: 70: case '\t':
	
i1l952:	
	line	71
;LCD_Claudio.c: 71: RC6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7
	line	72
	
i1l3650:	
;LCD_Claudio.c: 72: Write(0b0000010100);
	movlw	(014h)
	fcall	i1_Write
	line	73
;LCD_Claudio.c: 73: Write(0b0000010100);
	movlw	(014h)
	fcall	i1_Write
	line	74
;LCD_Claudio.c: 74: break;
	goto	i1l954
	line	75
;LCD_Claudio.c: 75: default:
	
i1l953:	
	line	76
;LCD_Claudio.c: 76: RC6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(62/8),(62)&7
	line	77
	
i1l3652:	
;LCD_Claudio.c: 77: Write( c );
	movf	(lcd_putc@c),w
	fcall	i1_Write
	line	78
;LCD_Claudio.c: 78: break;
	goto	i1l954
	line	79
	
i1l3654:	
;LCD_Claudio.c: 79: }
	goto	i1l954
	line	51
	
i1l946:	
	
i1l3656:	
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
	goto	i1l951
	xorlw	9^8	; case 9
	skipnz
	goto	i1l952
	xorlw	10^9	; case 10
	skipnz
	goto	i1l3640
	xorlw	12^10	; case 12
	skipnz
	goto	i1l3638
	xorlw	13^12	; case 13
	skipnz
	goto	i1l950
	goto	i1l953
	opt asmopt_on

	line	79
	
i1l948:	
	line	80
	
i1l954:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putc
	__end_of_lcd_putc:
;; =============== function _lcd_putc ends ============

	signat	_lcd_putc,4216
	global	i1_Clear
psect	text612,local,class=CODE,delta=2
global __ptext612
__ptext612:

;; *************** function i1_Clear *****************
;; Defined at:
;;		line 38 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\LCD_Claudio.c"
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
psect	text612
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\LCD_Claudio.c"
	line	38
	global	__size_ofi1_Clear
	__size_ofi1_Clear	equ	__end_ofi1_Clear-i1_Clear
	
i1_Clear:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1_Clear: [wreg+status,2+status,0+pclath+cstack]
	line	39
	
i1l3838:	
;LCD_Claudio.c: 39: RC6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7
	line	40
	
i1l3840:	
;LCD_Claudio.c: 40: Write(0x01);
	movlw	(01h)
	fcall	i1_Write
	line	41
	
i1l3842:	
;LCD_Claudio.c: 41: _delay((unsigned long)((2)*(4000000/4000.0)));
	opt asmopt_off
movlw	3
movwf	((??i1_Clear+0)+0+1),f
	movlw	151
movwf	((??i1_Clear+0)+0),f
u357_27:
	decfsz	((??i1_Clear+0)+0),f
	goto	u357_27
	decfsz	((??i1_Clear+0)+0+1),f
	goto	u357_27
	nop2
opt asmopt_on

	line	42
	
i1l937:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Clear
	__end_ofi1_Clear:
;; =============== function i1_Clear ends ============

	signat	i1_Clear,88
	global	_lcd_goto
psect	text613,local,class=CODE,delta=2
global __ptext613
__ptext613:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 82 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\LCD_Claudio.c"
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
psect	text613
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\LCD_Claudio.c"
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
	
i1l3658:	
;LCD_Claudio.c: 83: RC6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7
	line	84
	
i1l3660:	
;LCD_Claudio.c: 84: Write(0x80+pos);
	movf	(lcd_goto@pos),w
	addlw	080h
	fcall	i1_Write
	line	85
	
i1l957:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	i1_Write
psect	text614,local,class=CODE,delta=2
global __ptext614
__ptext614:

;; *************** function i1_Write *****************
;; Defined at:
;;		line 28 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\LCD_Claudio.c"
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
psect	text614
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\LCD_Claudio.c"
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
	
i1l3826:	
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
u307_25:
	clrc
	rrf	(??i1_Write+0)+0,f
	addlw	-1
	skipz
	goto	u307_25
	movf	0+(??i1_Write+0)+0,w
	movwf	(??i1_Write+1)+0
	movf	(??i1_Write+1)+0,w
	iorwf	(7),f	;volatile
	line	31
	
i1l3828:	
;LCD_Claudio.c: 31: Enable();
	fcall	i1_Enable
	line	32
	
i1l3830:	
;LCD_Claudio.c: 32: PORTC&=0XF0;
	movlw	(0F0h)
	movwf	(??i1_Write+0)+0
	movf	(??i1_Write+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(7),f	;volatile
	line	33
	
i1l3832:	
;LCD_Claudio.c: 33: PORTC|=(c & 0X0F);
	movf	(i1Write@c),w
	andlw	0Fh
	movwf	(??i1_Write+0)+0
	movf	(??i1_Write+0)+0,w
	iorwf	(7),f	;volatile
	line	34
	
i1l3834:	
;LCD_Claudio.c: 34: Enable();
	fcall	i1_Enable
	line	35
	
i1l3836:	
;LCD_Claudio.c: 35: _delay((unsigned long)((40)*(4000000/4000000.0)));
	opt asmopt_off
movlw	13
movwf	(??i1_Write+0)+0,f
u358_27:
decfsz	(??i1_Write+0)+0,f
	goto	u358_27
opt asmopt_on

	line	36
	
i1l934:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Write
	__end_ofi1_Write:
;; =============== function i1_Write ends ============

	signat	i1_Write,88
	global	i1_Enable
psect	text615,local,class=CODE,delta=2
global __ptext615
__ptext615:

;; *************** function i1_Enable *****************
;; Defined at:
;;		line 22 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\LCD_Claudio.c"
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
psect	text615
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\5 - Protocolo completo (envio 2x)\LCD_Claudio.c"
	line	22
	global	__size_ofi1_Enable
	__size_ofi1_Enable	equ	__end_ofi1_Enable-i1_Enable
	
i1_Enable:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1_Enable: []
	line	23
	
i1l3824:	
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
	
i1l931:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Enable
	__end_ofi1_Enable:
;; =============== function i1_Enable ends ============

	signat	i1_Enable,88
	global	___lwmod
psect	text616,local,class=CODE,delta=2
global __ptext616
__ptext616:

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
psect	text616
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 1
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
i1l3802:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u301_21
	goto	u301_20
u301_21:
	goto	i1l3820
u301_20:
	line	9
	
i1l3804:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	i1l3810
	
i1l1960:	
	line	11
	
i1l3806:	
	movlw	01h
	
u302_25:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u302_25
	line	12
	
i1l3808:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	i1l3810
	line	13
	
i1l1959:	
	line	10
	
i1l3810:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u303_21
	goto	u303_20
u303_21:
	goto	i1l3806
u303_20:
	goto	i1l3812
	
i1l1961:	
	goto	i1l3812
	line	14
	
i1l1962:	
	line	15
	
i1l3812:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u304_25
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u304_25:
	skipc
	goto	u304_21
	goto	u304_20
u304_21:
	goto	i1l3816
u304_20:
	line	16
	
i1l3814:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	i1l3816
	
i1l1963:	
	line	17
	
i1l3816:	
	movlw	01h
	
u305_25:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u305_25
	line	18
	
i1l3818:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u306_21
	goto	u306_20
u306_21:
	goto	i1l3812
u306_20:
	goto	i1l3820
	
i1l1964:	
	goto	i1l3820
	line	19
	
i1l1958:	
	line	20
	
i1l3820:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	i1l1965
	
i1l3822:	
	line	21
	
i1l1965:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text617,local,class=CODE,delta=2
global __ptext617
__ptext617:

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
psect	text617
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 1
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
i1l3776:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
i1l3778:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u294_21
	goto	u294_20
u294_21:
	goto	i1l3798
u294_20:
	line	11
	
i1l3780:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	i1l3786
	
i1l1950:	
	line	13
	
i1l3782:	
	movlw	01h
	
u295_25:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u295_25
	line	14
	
i1l3784:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	i1l3786
	line	15
	
i1l1949:	
	line	12
	
i1l3786:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u296_21
	goto	u296_20
u296_21:
	goto	i1l3782
u296_20:
	goto	i1l3788
	
i1l1951:	
	goto	i1l3788
	line	16
	
i1l1952:	
	line	17
	
i1l3788:	
	movlw	01h
	
u297_25:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u297_25
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u298_25
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u298_25:
	skipc
	goto	u298_21
	goto	u298_20
u298_21:
	goto	i1l3794
u298_20:
	line	19
	
i1l3790:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
i1l3792:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	i1l3794
	line	21
	
i1l1953:	
	line	22
	
i1l3794:	
	movlw	01h
	
u299_25:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u299_25
	line	23
	
i1l3796:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u300_21
	goto	u300_20
u300_21:
	goto	i1l3788
u300_20:
	goto	i1l3798
	
i1l1954:	
	goto	i1l3798
	line	24
	
i1l1948:	
	line	25
	
i1l3798:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	i1l1955
	
i1l3800:	
	line	26
	
i1l1955:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
psect	text618,local,class=CODE,delta=2
global __ptext618
__ptext618:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
