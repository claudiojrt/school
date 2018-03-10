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
# 4 "D:\Dropbox\Escola\Programação\Micros\Tarefas\3º Trimestre\1 - Salvar na EEPROM\Tarefa 1.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "D:\Dropbox\Escola\Programação\Micros\Tarefas\3º Trimestre\1 - Salvar na EEPROM\Tarefa 1.c"
	dw 0xFFFC & 0xFFF7 & 0xFFEF & 0xFFFF ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_serial_init
	FNCALL	_main,_printf
	FNCALL	_main,_send
	FNCALL	_main,_read
	FNCALL	_main,_write
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
	global	_buffer
	global	_dado_rx
	global	_aux
	global	_flag
	global	_gravar
	global	_ler
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
	global	_TXREG
_TXREG	set	25
	global	_CREN
_CREN	set	196
	global	_FERR
_FERR	set	194
	global	_GIE
_GIE	set	95
	global	_OERR
_OERR	set	193
	global	_PEIE
_PEIE	set	94
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
	global	_IOCA0
_IOCA0	set	1200
	global	_IOCA1
_IOCA1	set	1201
	global	_RCIE
_RCIE	set	1125
	global	_SYNC
_SYNC	set	1220
	global	_TRMT
_TRMT	set	1217
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
	global	_EEDAT
_EEDAT	set	268
	global	_EECON2
_EECON2	set	397
	global	_EEPGD
_EEPGD	set	3175
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
	
STR_4:	
	retlw	12
	retlw	68	;'D'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	103	;'g'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	118	;'v'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	10
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	117	;'u'
	retlw	99	;'c'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	111	;'o'
	retlw	46	;'.'
	retlw	0
psect	strings
	
STR_3:	
	retlw	10
	retlw	69	;'E'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	58	;':'
	retlw	32	;' '
	retlw	48	;'0'
	retlw	120	;'x'
	retlw	37	;'%'
	retlw	46	;'.'
	retlw	50	;'2'
	retlw	105	;'i'
	retlw	0
psect	strings
	
STR_2:	
	retlw	12
	retlw	68	;'D'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	105	;'i'
	retlw	0
psect	strings
	
STR_1:	
	retlw	84	;'T'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	0
psect	strings
STR_6	equ	STR_3+0
STR_5	equ	STR_2+0
	file	"Tarefa 1.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bitbssCOMMON,class=COMMON,bit,space=1
global __pbitbssCOMMON
__pbitbssCOMMON:
_aux:
       ds      1

_flag:
       ds      1

_gravar:
       ds      1

_ler:
       ds      1

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_dado_rx:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_buffer:
       ds      1

; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
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
	global	?_send
?_send:	; 0 bytes @ 0x0
	global	?_interrupts
?_interrupts:	; 0 bytes @ 0x0
	global	??_interrupts
??_interrupts:	; 0 bytes @ 0x0
	global	?_serial_init
?_serial_init:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_read
?_read:	; 1 bytes @ 0x0
	ds	2
	global	??_isdigit
??_isdigit:	; 0 bytes @ 0x2
	global	??_Enable
??_Enable:	; 0 bytes @ 0x2
	global	??_Write
??_Write:	; 0 bytes @ 0x2
	global	?_write
?_write:	; 0 bytes @ 0x2
	global	??_read
??_read:	; 0 bytes @ 0x2
	global	??_send
??_send:	; 0 bytes @ 0x2
	global	??_serial_init
??_serial_init:	; 0 bytes @ 0x2
	global	?___bmul
?___bmul:	; 1 bytes @ 0x2
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x2
	global	write@adress
write@adress:	; 1 bytes @ 0x2
	global	read@adress
read@adress:	; 1 bytes @ 0x2
	global	send@c
send@c:	; 1 bytes @ 0x2
	global	_isdigit$2098
_isdigit$2098:	; 1 bytes @ 0x2
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x2
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
	ds	1
	global	??_write
??_write:	; 0 bytes @ 0x3
	global	??___bmul
??___bmul:	; 0 bytes @ 0x3
	global	Write@c
Write@c:	; 1 bytes @ 0x3
	global	write@data
write@data:	; 1 bytes @ 0x3
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
	ds	2
	global	??_lcd_putc
??_lcd_putc:	; 0 bytes @ 0x6
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x6
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x6
	global	lcd_putc@c
lcd_putc@c:	; 1 bytes @ 0x6
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x6
	ds	1
	global	??_putch
??_putch:	; 0 bytes @ 0x7
	global	putch@c
putch@c:	; 1 bytes @ 0x7
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x8
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
	ds	2
	global	??_printf
??_printf:	; 0 bytes @ 0x6
	ds	2
	global	printf@ap
printf@ap:	; 1 bytes @ 0x8
	ds	1
	global	printf@flag
printf@flag:	; 1 bytes @ 0x9
	ds	1
	global	printf@_val
printf@_val:	; 4 bytes @ 0xA
	ds	4
	global	printf@f
printf@f:	; 1 bytes @ 0xE
	ds	1
	global	printf@prec
printf@prec:	; 1 bytes @ 0xF
	ds	1
	global	printf@c
printf@c:	; 1 bytes @ 0x10
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x11
	ds	3
;;Data sizes: Strings 56, constant 10, data 0, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      12
;; BANK0           80     20      21
;; BANK1           80      0       0
;; BANK2           80      0       0

;;
;; Pointer list with targets:

;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; printf@f	PTR const unsigned char  size(1) Largest target is 27
;;		 -> STR_6(CODE[13]), STR_5(CODE[10]), STR_4(CODE[27]), STR_3(CODE[13]), 
;;		 -> STR_2(CODE[10]), STR_1(CODE[6]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_printf(BANK0[2]), 
;;
;; S1645$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _printf->___lwmod
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
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 3     3      0    2000
;;                                             17 BANK0      3     3      0
;;                           _lcd_init
;;                        _serial_init
;;                             _printf
;;                               _send
;;                               _read
;;                              _write
;; ---------------------------------------------------------------------------------
;; (1) _printf                                              13    11      2    1824
;;                                              4 BANK0     13    11      2
;;                              _putch
;;                             ___bmul
;;                            _isdigit
;;                            ___lwdiv
;;                            ___lwmod
;;                               _read (ARG)
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
;; (4) _lcd_goto                                             1     1      0      66
;;                                              4 COMMON     1     1      0
;;                              _Write
;; ---------------------------------------------------------------------------------
;; (4) _Clear                                                2     2      0      44
;;                                              4 COMMON     2     2      0
;;                              _Write
;; ---------------------------------------------------------------------------------
;; (4) _Write                                                2     2      0      44
;;                                              2 COMMON     2     2      0
;;                             _Enable
;; ---------------------------------------------------------------------------------
;; (1) _read                                                 1     1      0      22
;;                                              2 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (5) _Enable                                               0     0      0       0
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
;; (1) _serial_init                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _send                                                 1     1      0      22
;;                                              2 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _write                                                2     1      1      44
;;                                              2 COMMON     2     1      1
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
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
;;   _lcd_init
;;     _Enable
;;     _Write
;;       _Enable
;;     _Clear
;;       _Write
;;         _Enable
;;   _serial_init
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
;;     _read (ARG)
;;   _send
;;   _read
;;   _write
;;
;; _interrupts (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       1       0        7.1%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      A       C       1       85.7%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       7       2        0.0%
;;BANK0               50     14      15       3       26.3%
;;BITBANK1            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK1               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK2            50      0       0       6        0.0%
;;BANK2               50      0       0       7        0.0%
;;ABS                  0      0      21       8        0.0%
;;BITBANK0            50      0       0       9        0.0%
;;DATA                 0      0      28      10        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 71 in file "D:\Dropbox\Escola\Programação\Micros\Tarefas\3º Trimestre\1 - Salvar na EEPROM\Tarefa 1.c"
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
;;      Temps:          0       3       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_lcd_init
;;		_serial_init
;;		_printf
;;		_send
;;		_read
;;		_write
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Dropbox\Escola\Programação\Micros\Tarefas\3º Trimestre\1 - Salvar na EEPROM\Tarefa 1.c"
	line	71
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	72
	
l3067:	
;Tarefa 1.c: 72: ANSEL=0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(286)^0100h	;volatile
	line	73
;Tarefa 1.c: 73: ANSELH=0;
	clrf	(287)^0100h	;volatile
	line	74
	
l3069:	
;Tarefa 1.c: 74: TRISA=0b00000111;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	75
	
l3071:	
;Tarefa 1.c: 75: TRISB=0;
	clrf	(134)^080h	;volatile
	line	76
	
l3073:	
;Tarefa 1.c: 76: TRISC=0;
	clrf	(135)^080h	;volatile
	line	77
	
l3075:	
;Tarefa 1.c: 77: PORTA=PORTB=PORTC=0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(7)	;volatile
	clrf	(6)	;volatile
	clrf	(5)	;volatile
	line	78
;Tarefa 1.c: 78: INTCON=0b11000000;
	movlw	(0C0h)
	movwf	(11)	;volatile
	line	79
	
l3077:	
;Tarefa 1.c: 79: IOCA0=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1200/8)^080h,(1200)&7
	line	80
	
l3079:	
;Tarefa 1.c: 80: IOCA1=1;
	bsf	(1201/8)^080h,(1201)&7
	line	81
	
l3081:	
;Tarefa 1.c: 81: INTEDG=1;
	bsf	(1038/8)^080h,(1038)&7
	line	82
	
l3083:	
;Tarefa 1.c: 82: lcd_init();
	fcall	_lcd_init
	line	83
	
l3085:	
;Tarefa 1.c: 83: serial_init();
	fcall	_serial_init
	line	84
	
l3087:	
;Tarefa 1.c: 84: printf("Teste");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_printf
	line	87
	
l3089:	
;Tarefa 1.c: 87: if(flag){
	btfss	(_flag/8),(_flag)&7
	goto	u811
	goto	u810
u811:
	goto	l3089
u810:
	line	88
	
l3091:	
;Tarefa 1.c: 88: if(ler){
	btfss	(_ler/8),(_ler)&7
	goto	u821
	goto	u820
u821:
	goto	l969
u820:
	line	89
	
l3093:	
;Tarefa 1.c: 89: send('R');
	movlw	(052h)
	fcall	_send
	line	90
;Tarefa 1.c: 90: send(read(dado_rx));
	movf	(_dado_rx),w
	fcall	_read
	fcall	_send
	line	91
	
l3095:	
;Tarefa 1.c: 91: printf("\fDado: %i",read(dado_rx));
	movf	(_dado_rx),w
	fcall	_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_printf)
	clrf	(?_printf+1)
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_printf
	line	92
	
l3097:	
;Tarefa 1.c: 92: printf("\nEnd: 0x%.2i",dado_rx);
	movf	(_dado_rx),w
	movwf	(?_printf)
	clrf	(?_printf+1)
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_printf
	line	93
	
l3099:	
;Tarefa 1.c: 93: ler=0;
	bcf	(_ler/8),(_ler)&7
	line	94
;Tarefa 1.c: 94: }
	goto	l970
	line	95
	
l969:	
;Tarefa 1.c: 95: else if(gravar){
	btfss	(_gravar/8),(_gravar)&7
	goto	u831
	goto	u830
u831:
	goto	l3121
u830:
	line	96
	
l3101:	
;Tarefa 1.c: 96: if(!aux){
	btfsc	(_aux/8),(_aux)&7
	goto	u841
	goto	u840
u841:
	goto	l3107
u840:
	line	97
	
l3103:	
;Tarefa 1.c: 97: buffer=dado_rx;
	movf	(_dado_rx),w
	movwf	(_buffer)
	line	98
	
l3105:	
;Tarefa 1.c: 98: aux=1;
	bsf	(_aux/8),(_aux)&7
	line	99
;Tarefa 1.c: 99: }
	goto	l970
	line	101
	
l3107:	
;Tarefa 1.c: 100: else{
;Tarefa 1.c: 101: write(buffer,dado_rx);
	movf	(_dado_rx),w
	movwf	(?_write)
	movf	(_buffer),w
	fcall	_write
	line	102
	
l3109:	
;Tarefa 1.c: 102: printf("\fDado gravado\ncom sucesso.");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_printf
	line	103
	
l3111:	
;Tarefa 1.c: 103: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u877:
	decfsz	((??_main+0)+0),f
	goto	u877
	decfsz	((??_main+0)+0+1),f
	goto	u877
	decfsz	((??_main+0)+0+2),f
	goto	u877
	nop2
opt asmopt_on

	line	104
	
l3113:	
;Tarefa 1.c: 104: printf("\fDado: %i",buffer);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_buffer),w
	movwf	(?_printf)
	clrf	(?_printf+1)
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_printf
	line	105
	
l3115:	
;Tarefa 1.c: 105: printf("\nEnd: 0x%.2i",dado_rx);
	movf	(_dado_rx),w
	movwf	(?_printf)
	clrf	(?_printf+1)
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_printf
	line	106
	
l3117:	
;Tarefa 1.c: 106: aux=0;
	bcf	(_aux/8),(_aux)&7
	line	107
	
l3119:	
;Tarefa 1.c: 107: gravar=0;
	bcf	(_gravar/8),(_gravar)&7
	goto	l970
	line	110
	
l3121:	
;Tarefa 1.c: 110: else if(dado_rx=='R'){
	movf	(_dado_rx),w
	xorlw	052h
	skipz
	goto	u851
	goto	u850
u851:
	goto	l3125
u850:
	line	111
	
l3123:	
;Tarefa 1.c: 111: ler=1;
	bsf	(_ler/8),(_ler)&7
	line	112
;Tarefa 1.c: 112: }
	goto	l970
	line	113
	
l3125:	
;Tarefa 1.c: 113: else if(dado_rx=='W'){
	movf	(_dado_rx),w
	xorlw	057h
	skipz
	goto	u861
	goto	u860
u861:
	goto	l970
u860:
	line	114
	
l3127:	
;Tarefa 1.c: 114: gravar=1;
	bsf	(_gravar/8),(_gravar)&7
	line	116
	
l970:	
;Tarefa 1.c: 115: }
;Tarefa 1.c: 116: flag=0;
	bcf	(_flag/8),(_flag)&7
	goto	l3089
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	119
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_printf
psect	text531,local,class=CODE,delta=2
global __ptext531
__ptext531:

;; *************** function _printf *****************
;; Defined at:
;;		line 461 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_6(13), STR_5(10), STR_4(27), STR_3(13), 
;;		 -> STR_2(10), STR_1(6), 
;; Auto vars:     Size  Location     Type
;;  f               1   14[BANK0 ] PTR const unsigned char 
;;		 -> STR_6(13), STR_5(10), STR_4(27), STR_3(13), 
;;		 -> STR_2(10), STR_1(6), 
;;  _val            4   10[BANK0 ] struct .
;;  c               1   16[BANK0 ] char 
;;  prec            1   15[BANK0 ] char 
;;  flag            1    9[BANK0 ] unsigned char 
;;  ap              1    8[BANK0 ] PTR void [1]
;;		 -> ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2    4[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       9       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0      13       0       0
;;Total ram usage:       13 bytes
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
psect	text531
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	461
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
	opt	stack 1
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;printf@f stored from wreg
	line	537
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printf@f)
	
l2993:	
	movlw	(?_printf)&0ffh
	movwf	(printf@ap)
	line	540
	goto	l3065
	line	542
	
l2995:	
	movf	(printf@c),w
	xorlw	025h
	skipnz
	goto	u681
	goto	u680
u681:
	goto	l2999
u680:
	line	545
	
l2997:	
	movf	(printf@c),w
	fcall	_putch
	line	546
	goto	l3065
	line	552
	
l2999:	
	clrf	(printf@flag)
	line	614
	
l3001:	
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Eh
	skipz
	goto	u691
	goto	u690
u691:
	goto	l3013
u690:
	line	616
	
l3003:	
	incf	(printf@f),f
	line	624
	
l3005:	
	clrf	(printf@prec)
	line	625
	goto	l3011
	line	626
	
l3007:	
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
	
l3009:	
	incf	(printf@f),f
	line	625
	
l3011:	
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u701
	goto	u700
u701:
	goto	l3007
u700:
	goto	l3017
	line	629
	
l3013:	
	clrf	(printf@prec)
	line	638
	
l3017:	
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
	goto	l1021
	xorlw	100^0	; case 100
	skipnz
	goto	l3019
	xorlw	105^100	; case 105
	skipnz
	goto	l3019
	goto	l3065
	opt asmopt_on

	line	1254
	
l3019:	
	movf	(printf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(printf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(printf@_val+1)
	
l3021:	
	incf	(printf@ap),f
	incf	(printf@ap),f
	line	1256
	
l3023:	
	btfss	(printf@_val+1),7
	goto	u711
	goto	u710
u711:
	goto	l3029
u710:
	line	1257
	
l3025:	
	movlw	(03h)
	iorwf	(printf@flag),f
	line	1258
	
l3027:	
	comf	(printf@_val),f
	comf	(printf@_val+1),f
	incf	(printf@_val),f
	skipnz
	incf	(printf@_val+1),f
	line	1285
	
l3029:	
	movf	(printf@prec),f
	skipz
	goto	u721
	goto	u720
u721:
	goto	l3035
u720:
	
l3031:	
	movf	((printf@_val+1)),w
	iorwf	((printf@_val)),w
	skipz
	goto	u731
	goto	u730
u731:
	goto	l3035
u730:
	line	1286
	
l3033:	
	incf	(printf@prec),f
	line	1300
	
l3035:	
	clrf	(printf@c)
	incf	(printf@c),f
	line	1301
	
l3041:	
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
	goto	u745
	movf	0+(??_printf+0)+0,w
	subwf	(printf@_val),w
u745:
	skipnc
	goto	u741
	goto	u740
u741:
	goto	l3045
u740:
	goto	l3049
	line	1300
	
l3045:	
	incf	(printf@c),f
	
l3047:	
	movf	(printf@c),w
	xorlw	05h
	skipz
	goto	u751
	goto	u750
u751:
	goto	l3041
u750:
	line	1334
	
l3049:	
	movf	(printf@c),w
	xorlw	80h
	movwf	(??_printf+0)+0
	movf	(printf@prec),w
	xorlw	80h
	subwf	(??_printf+0)+0
	skipnc
	goto	u761
	goto	u760
u761:
	goto	l3053
u760:
	line	1335
	
l3051:	
	goto	l3057
	line	1336
	
l3053:	
	movf	(printf@prec),w
	xorlw	80h
	movwf	(??_printf+0)+0
	movf	(printf@c),w
	xorlw	80h
	subwf	(??_printf+0)+0
	skipnc
	goto	u771
	goto	u770
u771:
	goto	l3057
u770:
	line	1337
	
l3055:	
	movf	(printf@c),w
	movwf	(printf@prec)
	line	1433
	
l3057:	
	movf	(printf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u781
	goto	u780
u781:
	goto	l3063
u780:
	line	1434
	
l3059:	
	movlw	(02Dh)
	fcall	_putch
	goto	l3063
	line	1484
	
l3061:	
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
	
l3063:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decf	(printf@prec),f
	incf	((printf@prec)),w
	skipz
	goto	u791
	goto	u790
u791:
	goto	l3061
u790:
	line	540
	
l3065:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printf@f),w
	incf	(printf@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)
	movf	((printf@c)),f
	skipz
	goto	u801
	goto	u800
u801:
	goto	l2995
u800:
	line	1533
	
l1021:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_putch
psect	text532,local,class=CODE,delta=2
global __ptext532
__ptext532:

;; *************** function _putch *****************
;; Defined at:
;;		line 107 in file "D:\Dropbox\Escola\Programação\Micros\Tarefas\3º Trimestre\1 - Salvar na EEPROM\LCD_Claudio.c"
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
psect	text532
	file	"D:\Dropbox\Escola\Programação\Micros\Tarefas\3º Trimestre\1 - Salvar na EEPROM\LCD_Claudio.c"
	line	107
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 1
; Regs used in _putch: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;putch@c stored from wreg
	movwf	(putch@c)
	line	108
	
l2849:	
;LCD_Claudio.c: 108: lcd_putc(c);
	movf	(putch@c),w
	fcall	_lcd_putc
	line	109
	
l941:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_lcd_init
psect	text533,local,class=CODE,delta=2
global __ptext533
__ptext533:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 87 in file "D:\Dropbox\Escola\Programação\Micros\Tarefas\3º Trimestre\1 - Salvar na EEPROM\LCD_Claudio.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/20
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
psect	text533
	file	"D:\Dropbox\Escola\Programação\Micros\Tarefas\3º Trimestre\1 - Salvar na EEPROM\LCD_Claudio.c"
	line	87
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 3
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	88
	
l2817:	
;LCD_Claudio.c: 88: _delay((unsigned long)((15)*(4000000/4000.0)));
	opt asmopt_off
movlw	20
movwf	((??_lcd_init+0)+0+1),f
	movlw	121
movwf	((??_lcd_init+0)+0),f
u887:
	decfsz	((??_lcd_init+0)+0),f
	goto	u887
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u887
	nop2
opt asmopt_on

	line	89
	
l2819:	
;LCD_Claudio.c: 89: PORTC&=0xF0;
	movlw	(0F0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(7),f	;volatile
	line	90
	
l2821:	
;LCD_Claudio.c: 90: PORTC|=0X03;
	movlw	(03h)
	iorwf	(7),f	;volatile
	line	91
	
l2823:	
;LCD_Claudio.c: 91: Enable();
	fcall	_Enable
	line	92
	
l2825:	
;LCD_Claudio.c: 92: _delay((unsigned long)((5)*(4000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_lcd_init+0)+0+1),f
	movlw	125
movwf	((??_lcd_init+0)+0),f
u897:
	decfsz	((??_lcd_init+0)+0),f
	goto	u897
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u897
opt asmopt_on

	line	93
	
l2827:	
;LCD_Claudio.c: 93: PORTC&=0xF0;
	movlw	(0F0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(7),f	;volatile
	line	94
	
l2829:	
;LCD_Claudio.c: 94: PORTC|=0X03;
	movlw	(03h)
	iorwf	(7),f	;volatile
	line	95
;LCD_Claudio.c: 95: Enable();
	fcall	_Enable
	line	96
	
l2831:	
;LCD_Claudio.c: 96: _delay((unsigned long)((100)*(4000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_init+0)+0,f
u907:
decfsz	(??_lcd_init+0)+0,f
	goto	u907
opt asmopt_on

	line	97
	
l2833:	
;LCD_Claudio.c: 97: PORTC&=0xF0;
	movlw	(0F0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(7),f	;volatile
	line	98
	
l2835:	
;LCD_Claudio.c: 98: PORTC|=0X02;
	bsf	(7)+(1/8),(1)&7	;volatile
	line	99
	
l2837:	
;LCD_Claudio.c: 99: Enable();
	fcall	_Enable
	line	100
	
l2839:	
;LCD_Claudio.c: 100: _delay((unsigned long)((40)*(4000000/4000000.0)));
	opt asmopt_off
movlw	13
movwf	(??_lcd_init+0)+0,f
u917:
decfsz	(??_lcd_init+0)+0,f
	goto	u917
opt asmopt_on

	line	101
	
l2841:	
;LCD_Claudio.c: 101: Write(0x28);
	movlw	(028h)
	fcall	_Write
	line	102
	
l2843:	
;LCD_Claudio.c: 102: Write(0x0D);
	movlw	(0Dh)
	fcall	_Write
	line	103
	
l2845:	
;LCD_Claudio.c: 103: Write(0x06);
	movlw	(06h)
	fcall	_Write
	line	104
	
l2847:	
;LCD_Claudio.c: 104: Clear();
	fcall	_Clear
	line	105
	
l938:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_putc
psect	text534,local,class=CODE,delta=2
global __ptext534
__ptext534:

;; *************** function _lcd_putc *****************
;; Defined at:
;;		line 50 in file "D:\Dropbox\Escola\Programação\Micros\Tarefas\3º Trimestre\1 - Salvar na EEPROM\LCD_Claudio.c"
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
psect	text534
	file	"D:\Dropbox\Escola\Programação\Micros\Tarefas\3º Trimestre\1 - Salvar na EEPROM\LCD_Claudio.c"
	line	50
	global	__size_of_lcd_putc
	__size_of_lcd_putc	equ	__end_of_lcd_putc-_lcd_putc
	
_lcd_putc:	
	opt	stack 1
; Regs used in _lcd_putc: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_putc@c stored from wreg
	movwf	(lcd_putc@c)
	line	51
	
l2795:	
;LCD_Claudio.c: 51: switch (c){
	goto	l2815
	line	53
	
l2797:	
;LCD_Claudio.c: 53: Clear();
	fcall	_Clear
	line	54
;LCD_Claudio.c: 54: break;
	goto	l932
	line	56
	
l2799:	
;LCD_Claudio.c: 56: lcd_goto(0x40);
	movlw	(040h)
	fcall	_lcd_goto
	line	57
;LCD_Claudio.c: 57: break;
	goto	l932
	line	58
;LCD_Claudio.c: 58: case '\r':
	
l928:	
	line	59
;LCD_Claudio.c: 59: RC6 = 0;
	bcf	(62/8),(62)&7
	line	60
	
l2801:	
;LCD_Claudio.c: 60: Write(0x80);
	movlw	(080h)
	fcall	_Write
	line	61
;LCD_Claudio.c: 61: break;
	goto	l932
	line	62
;LCD_Claudio.c: 62: case '\b':
	
l929:	
	line	63
;LCD_Claudio.c: 63: RC6=0;
	bcf	(62/8),(62)&7
	line	64
	
l2803:	
;LCD_Claudio.c: 64: Write(0b0000010000);
	movlw	(010h)
	fcall	_Write
	line	65
	
l2805:	
;LCD_Claudio.c: 65: RC6=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(62/8),(62)&7
	line	66
;LCD_Claudio.c: 66: lcd_putc(32);
	movlw	(020h)
	fcall	_lcd_putc
	line	67
	
l2807:	
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
	goto	l932
	line	70
;LCD_Claudio.c: 70: case '\t':
	
l930:	
	line	71
;LCD_Claudio.c: 71: RC6=0;
	bcf	(62/8),(62)&7
	line	72
	
l2809:	
;LCD_Claudio.c: 72: Write(0b0000010100);
	movlw	(014h)
	fcall	_Write
	line	73
;LCD_Claudio.c: 73: Write(0b0000010100);
	movlw	(014h)
	fcall	_Write
	line	74
;LCD_Claudio.c: 74: break;
	goto	l932
	line	75
;LCD_Claudio.c: 75: default:
	
l931:	
	line	76
;LCD_Claudio.c: 76: RC6 = 1;
	bsf	(62/8),(62)&7
	line	77
	
l2811:	
;LCD_Claudio.c: 77: Write( c );
	movf	(lcd_putc@c),w
	fcall	_Write
	line	78
;LCD_Claudio.c: 78: break;
	goto	l932
	line	51
	
l2815:	
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
	goto	l929
	xorlw	9^8	; case 9
	skipnz
	goto	l930
	xorlw	10^9	; case 10
	skipnz
	goto	l2799
	xorlw	12^10	; case 12
	skipnz
	goto	l2797
	xorlw	13^12	; case 13
	skipnz
	goto	l928
	goto	l931
	opt asmopt_on

	line	80
	
l932:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putc
	__end_of_lcd_putc:
;; =============== function _lcd_putc ends ============

	signat	_lcd_putc,4216
	global	_lcd_goto
psect	text535,local,class=CODE,delta=2
global __ptext535
__ptext535:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 82 in file "D:\Dropbox\Escola\Programação\Micros\Tarefas\3º Trimestre\1 - Salvar na EEPROM\LCD_Claudio.c"
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
;; This function uses a non-reentrant model
;;
psect	text535
	file	"D:\Dropbox\Escola\Programação\Micros\Tarefas\3º Trimestre\1 - Salvar na EEPROM\LCD_Claudio.c"
	line	82
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 1
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@pos stored from wreg
	movwf	(lcd_goto@pos)
	line	83
	
l2791:	
;LCD_Claudio.c: 83: RC6 = 0;
	bcf	(62/8),(62)&7
	line	84
	
l2793:	
;LCD_Claudio.c: 84: Write(0x80+pos);
	movf	(lcd_goto@pos),w
	addlw	080h
	fcall	_Write
	line	85
	
l935:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_Clear
psect	text536,local,class=CODE,delta=2
global __ptext536
__ptext536:

;; *************** function _Clear *****************
;; Defined at:
;;		line 38 in file "D:\Dropbox\Escola\Programação\Micros\Tarefas\3º Trimestre\1 - Salvar na EEPROM\LCD_Claudio.c"
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
psect	text536
	file	"D:\Dropbox\Escola\Programação\Micros\Tarefas\3º Trimestre\1 - Salvar na EEPROM\LCD_Claudio.c"
	line	38
	global	__size_of_Clear
	__size_of_Clear	equ	__end_of_Clear-_Clear
	
_Clear:	
	opt	stack 1
; Regs used in _Clear: [wreg+status,2+status,0+pclath+cstack]
	line	39
	
l2785:	
;LCD_Claudio.c: 39: RC6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7
	line	40
	
l2787:	
;LCD_Claudio.c: 40: Write(0x01);
	movlw	(01h)
	fcall	_Write
	line	41
	
l2789:	
;LCD_Claudio.c: 41: _delay((unsigned long)((2)*(4000000/4000.0)));
	opt asmopt_off
movlw	3
movwf	((??_Clear+0)+0+1),f
	movlw	151
movwf	((??_Clear+0)+0),f
u927:
	decfsz	((??_Clear+0)+0),f
	goto	u927
	decfsz	((??_Clear+0)+0+1),f
	goto	u927
	nop2
opt asmopt_on

	line	42
	
l915:	
	return
	opt stack 0
GLOBAL	__end_of_Clear
	__end_of_Clear:
;; =============== function _Clear ends ============

	signat	_Clear,88
	global	_Write
psect	text537,local,class=CODE,delta=2
global __ptext537
__ptext537:

;; *************** function _Write *****************
;; Defined at:
;;		line 28 in file "D:\Dropbox\Escola\Programação\Micros\Tarefas\3º Trimestre\1 - Salvar na EEPROM\LCD_Claudio.c"
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
psect	text537
	file	"D:\Dropbox\Escola\Programação\Micros\Tarefas\3º Trimestre\1 - Salvar na EEPROM\LCD_Claudio.c"
	line	28
	global	__size_of_Write
	__size_of_Write	equ	__end_of_Write-_Write
	
_Write:	
	opt	stack 2
; Regs used in _Write: [wreg+status,2+status,0+pclath+cstack]
;Write@c stored from wreg
	movwf	(Write@c)
	line	29
	
l2773:	
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
	
l2775:	
;LCD_Claudio.c: 31: Enable();
	fcall	_Enable
	line	32
	
l2777:	
;LCD_Claudio.c: 32: PORTC&=0XF0;
	movlw	(0F0h)
	andwf	(7),f	;volatile
	line	33
	
l2779:	
;LCD_Claudio.c: 33: PORTC|=(c & 0X0F);
	movf	(Write@c),w
	andlw	0Fh
	iorwf	(7),f	;volatile
	line	34
	
l2781:	
;LCD_Claudio.c: 34: Enable();
	fcall	_Enable
	line	35
	
l2783:	
;LCD_Claudio.c: 35: _delay((unsigned long)((40)*(4000000/4000000.0)));
	opt asmopt_off
movlw	13
movwf	(??_Write+0)+0,f
u937:
decfsz	(??_Write+0)+0,f
	goto	u937
opt asmopt_on

	line	36
	
l912:	
	return
	opt stack 0
GLOBAL	__end_of_Write
	__end_of_Write:
;; =============== function _Write ends ============

	signat	_Write,4216
	global	_read
psect	text538,local,class=CODE,delta=2
global __ptext538
__ptext538:

;; *************** function _read *****************
;; Defined at:
;;		line 25 in file "D:\Dropbox\Escola\Programação\Micros\Tarefas\3º Trimestre\1 - Salvar na EEPROM\Tarefa 1.c"
;; Parameters:    Size  Location     Type
;;  adress          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  adress          1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/40
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text538
	file	"D:\Dropbox\Escola\Programação\Micros\Tarefas\3º Trimestre\1 - Salvar na EEPROM\Tarefa 1.c"
	line	25
	global	__size_of_read
	__size_of_read	equ	__end_of_read-_read
	
_read:	
	opt	stack 6
; Regs used in _read: [wreg]
;read@adress stored from wreg
	movwf	(read@adress)
	line	26
	
l2763:	
;Tarefa 1.c: 26: EEPGD=0;
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3175/8)^0180h,(3175)&7
	line	27
	
l2765:	
;Tarefa 1.c: 27: EEADR=adress;
	movf	(read@adress),w
	bcf	status, 5	;RP0=0, select bank2
	movwf	(269)^0100h	;volatile
	line	28
	
l2767:	
;Tarefa 1.c: 28: RD=1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	(3168/8)^0180h,(3168)&7
	line	29
	
l2769:	
;Tarefa 1.c: 29: _nop();
	nop
	line	30
;Tarefa 1.c: 30: return EEDAT;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(268)^0100h,w	;volatile
	line	31
	
l947:	
	return
	opt stack 0
GLOBAL	__end_of_read
	__end_of_read:
;; =============== function _read ends ============

	signat	_read,4217
	global	_Enable
psect	text539,local,class=CODE,delta=2
global __ptext539
__ptext539:

;; *************** function _Enable *****************
;; Defined at:
;;		line 22 in file "D:\Dropbox\Escola\Programação\Micros\Tarefas\3º Trimestre\1 - Salvar na EEPROM\LCD_Claudio.c"
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
psect	text539
	file	"D:\Dropbox\Escola\Programação\Micros\Tarefas\3º Trimestre\1 - Salvar na EEPROM\LCD_Claudio.c"
	line	22
	global	__size_of_Enable
	__size_of_Enable	equ	__end_of_Enable-_Enable
	
_Enable:	
	opt	stack 2
; Regs used in _Enable: []
	line	23
	
l2761:	
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
	
l909:	
	return
	opt stack 0
GLOBAL	__end_of_Enable
	__end_of_Enable:
;; =============== function _Enable ends ============

	signat	_Enable,88
	global	___lwmod
psect	text540,local,class=CODE,delta=2
global __ptext540
__ptext540:

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
psect	text540
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l2741:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u451
	goto	u450
u451:
	goto	l2757
u450:
	line	9
	
l2743:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	10
	goto	l2747
	line	11
	
l2745:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	12
	incf	(___lwmod@counter),f
	line	10
	
l2747:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u461
	goto	u460
u461:
	goto	l2745
u460:
	line	15
	
l2749:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u475
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u475:
	skipc
	goto	u471
	goto	u470
u471:
	goto	l2753
u470:
	line	16
	
l2751:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	17
	
l2753:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	18
	
l2755:	
	decfsz	(___lwmod@counter),f
	goto	u481
	goto	u480
u481:
	goto	l2749
u480:
	line	20
	
l2757:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	21
	
l1908:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text541,local,class=CODE,delta=2
global __ptext541
__ptext541:

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
psect	text541
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l2715:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l2717:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u411
	goto	u410
u411:
	goto	l2737
u410:
	line	11
	
l2719:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l2723
	line	13
	
l2721:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l2723:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u421
	goto	u420
u421:
	goto	l2721
u420:
	line	17
	
l2725:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l2727:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u435
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u435:
	skipc
	goto	u431
	goto	u430
u431:
	goto	l2733
u430:
	line	19
	
l2729:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l2731:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l2733:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l2735:	
	decfsz	(___lwdiv@counter),f
	goto	u441
	goto	u440
u441:
	goto	l2725
u440:
	line	25
	
l2737:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l1898:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___bmul
psect	text542,local,class=CODE,delta=2
global __ptext542
__ptext542:

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
psect	text542
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
	
l2699:	
	clrf	(___bmul@product)
	line	7
	
l2701:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u391
	goto	u390
u391:
	goto	l2705
u390:
	line	8
	
l2703:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	9
	
l2705:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	10
	
l2707:	
	clrc
	rrf	(___bmul@multiplier),f
	line	11
	
l2709:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u401
	goto	u400
u401:
	goto	l2701
u400:
	line	12
	
l2711:	
	movf	(___bmul@product),w
	line	13
	
l1882:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	_isdigit
psect	text543,local,class=CODE,delta=2
global __ptext543
__ptext543:

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
psect	text543
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 5
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	movwf	(isdigit@c)
	line	14
	
l2687:	
	clrf	(_isdigit$2098)
	
l2689:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u371
	goto	u370
u371:
	goto	l2695
u370:
	
l2691:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u381
	goto	u380
u381:
	goto	l2695
u380:
	
l2693:	
	clrf	(_isdigit$2098)
	incf	(_isdigit$2098),f
	
l2695:	
	rrf	(_isdigit$2098),w
	
	line	15
	
l1876:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_serial_init
psect	text544,local,class=CODE,delta=2
global __ptext544
__ptext544:

;; *************** function _serial_init *****************
;; Defined at:
;;		line 55 in file "D:\Dropbox\Escola\Programação\Micros\Tarefas\3º Trimestre\1 - Salvar na EEPROM\Tarefa 1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/20
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
psect	text544
	file	"D:\Dropbox\Escola\Programação\Micros\Tarefas\3º Trimestre\1 - Salvar na EEPROM\Tarefa 1.c"
	line	55
	global	__size_of_serial_init
	__size_of_serial_init	equ	__end_of_serial_init-_serial_init
	
_serial_init:	
	opt	stack 6
; Regs used in _serial_init: [wreg+status,2]
	line	56
	
l2665:	
;Tarefa 1.c: 56: SYNC=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1220/8)^080h,(1220)&7
	line	57
;Tarefa 1.c: 57: BRGH=1;
	bsf	(1218/8)^080h,(1218)&7
	line	58
;Tarefa 1.c: 58: BRG16=1;
	bsf	(1243/8)^080h,(1243)&7
	line	59
	
l2667:	
;Tarefa 1.c: 59: SPBRGH=0;
	clrf	(154)^080h	;volatile
	line	60
	
l2669:	
;Tarefa 1.c: 60: SPBRG=103;
	movlw	(067h)
	movwf	(153)^080h	;volatile
	line	61
	
l2671:	
;Tarefa 1.c: 61: SPEN=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(199/8),(199)&7
	line	62
	
l2673:	
;Tarefa 1.c: 62: TX9=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1222/8)^080h,(1222)&7
	line	63
	
l2675:	
;Tarefa 1.c: 63: TXEN=1;
	bsf	(1221/8)^080h,(1221)&7
	line	64
	
l2677:	
;Tarefa 1.c: 64: TXIE=0;
	bcf	(1124/8)^080h,(1124)&7
	line	65
	
l2679:	
;Tarefa 1.c: 65: RCIE=1;
	bsf	(1125/8)^080h,(1125)&7
	line	66
	
l2681:	
;Tarefa 1.c: 66: PEIE=1;
	bsf	(94/8),(94)&7
	line	67
	
l2683:	
;Tarefa 1.c: 67: RX9=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(198/8),(198)&7
	line	68
	
l2685:	
;Tarefa 1.c: 68: CREN=1;
	bsf	(196/8),(196)&7
	line	69
	
l964:	
	return
	opt stack 0
GLOBAL	__end_of_serial_init
	__end_of_serial_init:
;; =============== function _serial_init ends ============

	signat	_serial_init,88
	global	_send
psect	text545,local,class=CODE,delta=2
global __ptext545
__ptext545:

;; *************** function _send *****************
;; Defined at:
;;		line 33 in file "D:\Dropbox\Escola\Programação\Micros\Tarefas\3º Trimestre\1 - Salvar na EEPROM\Tarefa 1.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 20/0
;;		On exit  : 60/20
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text545
	file	"D:\Dropbox\Escola\Programação\Micros\Tarefas\3º Trimestre\1 - Salvar na EEPROM\Tarefa 1.c"
	line	33
	global	__size_of_send
	__size_of_send	equ	__end_of_send-_send
	
_send:	
	opt	stack 6
; Regs used in _send: [wreg]
;send@c stored from wreg
	movwf	(send@c)
	line	34
	
l2663:	
;Tarefa 1.c: 34: TXREG=c;
	movf	(send@c),w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	35
;Tarefa 1.c: 35: while(!TRMT);
	
l950:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(1217/8)^080h,(1217)&7
	goto	u361
	goto	u360
u361:
	goto	l950
u360:
	line	36
	
l953:	
	return
	opt stack 0
GLOBAL	__end_of_send
	__end_of_send:
;; =============== function _send ends ============

	signat	_send,4216
	global	_write
psect	text546,local,class=CODE,delta=2
global __ptext546
__ptext546:

;; *************** function _write *****************
;; Defined at:
;;		line 12 in file "D:\Dropbox\Escola\Programação\Micros\Tarefas\3º Trimestre\1 - Salvar na EEPROM\Tarefa 1.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;;  adress          1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/60
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text546
	file	"D:\Dropbox\Escola\Programação\Micros\Tarefas\3º Trimestre\1 - Salvar na EEPROM\Tarefa 1.c"
	line	12
	global	__size_of_write
	__size_of_write	equ	__end_of_write-_write
	
_write:	
	opt	stack 6
; Regs used in _write: [wreg]
;write@data stored from wreg
	movwf	(write@data)
	line	13
	
l2649:	
;Tarefa 1.c: 13: EEPGD=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3175/8)^0180h,(3175)&7
	line	14
	
l2651:	
;Tarefa 1.c: 14: EEADR=adress;
	movf	(write@adress),w
	bcf	status, 5	;RP0=0, select bank2
	movwf	(269)^0100h	;volatile
	line	15
;Tarefa 1.c: 15: EEDAT=data;
	movf	(write@data),w
	movwf	(268)^0100h	;volatile
	line	16
	
l2653:	
;Tarefa 1.c: 16: GIE=0;
	bcf	(95/8),(95)&7
	line	17
	
l2655:	
;Tarefa 1.c: 17: WREN=1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	(3170/8)^0180h,(3170)&7
	line	18
;Tarefa 1.c: 18: EECON2=0x55;
	movlw	(055h)
	movwf	(397)^0180h	;volatile
	line	19
;Tarefa 1.c: 19: EECON2=0XAA;
	movlw	(0AAh)
	movwf	(397)^0180h	;volatile
	line	20
	
l2657:	
;Tarefa 1.c: 20: WR=1;
	bsf	(3169/8)^0180h,(3169)&7
	line	21
	
l2659:	
;Tarefa 1.c: 21: WREN=0;
	bcf	(3170/8)^0180h,(3170)&7
	line	22
	
l2661:	
;Tarefa 1.c: 22: GIE=1;
	bsf	(95/8),(95)&7
	line	23
	
l944:	
	return
	opt stack 0
GLOBAL	__end_of_write
	__end_of_write:
;; =============== function _write ends ============

	signat	_write,8312
	global	_interrupts
psect	text547,local,class=CODE,delta=2
global __ptext547
__ptext547:

;; *************** function _interrupts *****************
;; Defined at:
;;		line 38 in file "D:\Dropbox\Escola\Programação\Micros\Tarefas\3º Trimestre\1 - Salvar na EEPROM\Tarefa 1.c"
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
psect	text547
	file	"D:\Dropbox\Escola\Programação\Micros\Tarefas\3º Trimestre\1 - Salvar na EEPROM\Tarefa 1.c"
	line	38
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
psect	text547
	line	39
	
i1l2307:	
;Tarefa 1.c: 39: if(RCIF){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l961
u2_20:
	line	40
	
i1l2309:	
;Tarefa 1.c: 40: if(FERR){
	btfss	(194/8),(194)&7
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l957
u3_20:
	line	41
	
i1l2311:	
;Tarefa 1.c: 41: lixo=RCREG;
	movf	(26),w	;volatile
	line	42
;Tarefa 1.c: 42: }
	goto	i1l2319
	line	43
	
i1l957:	
;Tarefa 1.c: 43: else if(OERR){
	btfss	(193/8),(193)&7
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l2315
u4_20:
	line	44
	
i1l2313:	
;Tarefa 1.c: 44: CREN=0;
	bcf	(196/8),(196)&7
	line	45
;Tarefa 1.c: 45: CREN=1;
	bsf	(196/8),(196)&7
	line	46
;Tarefa 1.c: 46: }
	goto	i1l2319
	line	48
	
i1l2315:	
;Tarefa 1.c: 47: else{
;Tarefa 1.c: 48: dado_rx=RCREG;
	movf	(26),w	;volatile
	movwf	(_dado_rx)
	line	49
	
i1l2317:	
;Tarefa 1.c: 49: flag=1;
	bsf	(_flag/8),(_flag)&7
	line	51
	
i1l2319:	
;Tarefa 1.c: 50: }
;Tarefa 1.c: 51: RCIF=0;
	bcf	(101/8),(101)&7
	line	53
	
i1l961:	
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
psect	text548,local,class=CODE,delta=2
global __ptext548
__ptext548:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
