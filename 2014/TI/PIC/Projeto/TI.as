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
# 6 "C:\Users\Claudio\Desktop\TI\PIC\Projeto_TI.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "C:\Users\Claudio\Desktop\TI\PIC\Projeto_TI.c"
	dw 0xFFFC & 0xFFF7 & 0xFFEF & 0xFFDF ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_serial_init
	FNCALL	_main,_printf
	FNCALL	_printf,_putch
	FNCALL	_putch,_lcd_putc
	FNCALL	_lcd_init,_lcd_write
	FNCALL	_lcd_init,_lcd_clear
	FNCALL	_lcd_putc,_lcd_clear
	FNCALL	_lcd_putc,_lcd_goto
	FNCALL	_lcd_putc,_lcd_write
	FNCALL	_lcd_putc,_lcd_putc
	FNCALL	_lcd_goto,_lcd_write
	FNCALL	_lcd_clear,_lcd_write
	FNROOT	_main
	FNCALL	_serial,_sync
	FNCALL	intlevel1,_serial
	global	intlevel1
	FNROOT	intlevel1
	global	_wait
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\Claudio\Desktop\TI\PIC\Projeto_TI.c"
	line	15

;initializer for _wait
	retlw	01h
	global	_flagmin
	global	_flagstat
	global	_ini
	global	_minutos
	global	_C_on
	global	_dado_rx
	global	_ready
	global	_conex
	global	_flag
	global	_seg
	global	_TMR1
_TMR1	set	14
	global	_PORTC
_PORTC	set	7
	global	_RCREG
_RCREG	set	26
	global	_TXREG
_TXREG	set	25
	global	_CARRY
_CARRY	set	24
	global	_CREN
_CREN	set	196
	global	_FERR
_FERR	set	194
	global	_GIE
_GIE	set	95
	global	_INTE
_INTE	set	92
	global	_INTF
_INTF	set	89
	global	_OERR
_OERR	set	193
	global	_PEIE
_PEIE	set	94
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_RA4
_RA4	set	44
	global	_RA5
_RA5	set	45
	global	_RCIF
_RCIF	set	101
	global	_RX9
_RX9	set	198
	global	_SPEN
_SPEN	set	199
	global	_T1CKPS0
_T1CKPS0	set	132
	global	_T1CKPS1
_T1CKPS1	set	133
	global	_TMR1CS
_TMR1CS	set	129
	global	_TMR1IF
_TMR1IF	set	96
	global	_TMR1ON
_TMR1ON	set	128
	global	_nT1SYNC
_nT1SYNC	set	130
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
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringtab,__stringbase
stringtab:
;	String table - string pointers are 2 bytes each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:
	movf btemp+1,w
andlw 7Fh
movwf	pclath
	movf	fsr,w
incf fsr
skipnz
incf btemp+1
	movwf pc
__stringbase:
psect	stringtext,class=STRCODE,delta=2,reloc=256
global __pstringtext
__pstringtext:
	
STR_3:	
	retlw	12
	retlw	80	;'P'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	120	;'x'
	retlw	105	;'i'
	retlw	109	;'m'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	58	;':'
	retlw	10
	retlw	65	;'A'
	retlw	112	;'p'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	120	;'x'
	retlw	46	;'.'
	retlw	32	;' '
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	32	;' '
	retlw	109	;'m'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	46	;'.'
	retlw	0
psect	stringtext
	
STR_12:	
	retlw	12
	retlw	80	;'P'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	120	;'x'
	retlw	105	;'i'
	retlw	109	;'m'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	58	;':'
	retlw	10
	retlw	65	;'A'
	retlw	112	;'p'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	120	;'x'
	retlw	46	;'.'
	retlw	32	;' '
	retlw	49	;'1'
	retlw	32	;' '
	retlw	109	;'m'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	46	;'.'
	retlw	0
psect	stringtext
	
STR_11:	
	retlw	12
	retlw	80	;'P'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	120	;'x'
	retlw	105	;'i'
	retlw	109	;'m'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	58	;':'
	retlw	10
	retlw	65	;'A'
	retlw	112	;'p'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	120	;'x'
	retlw	46	;'.'
	retlw	32	;' '
	retlw	50	;'2'
	retlw	32	;' '
	retlw	109	;'m'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	46	;'.'
	retlw	0
psect	stringtext
	
STR_10:	
	retlw	12
	retlw	80	;'P'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	120	;'x'
	retlw	105	;'i'
	retlw	109	;'m'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	58	;':'
	retlw	10
	retlw	65	;'A'
	retlw	112	;'p'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	120	;'x'
	retlw	46	;'.'
	retlw	32	;' '
	retlw	51	;'3'
	retlw	32	;' '
	retlw	109	;'m'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	46	;'.'
	retlw	0
psect	stringtext
	
STR_9:	
	retlw	12
	retlw	80	;'P'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	120	;'x'
	retlw	105	;'i'
	retlw	109	;'m'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	58	;':'
	retlw	10
	retlw	65	;'A'
	retlw	112	;'p'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	120	;'x'
	retlw	46	;'.'
	retlw	32	;' '
	retlw	52	;'4'
	retlw	32	;' '
	retlw	109	;'m'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	46	;'.'
	retlw	0
psect	stringtext
	
STR_8:	
	retlw	12
	retlw	80	;'P'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	120	;'x'
	retlw	105	;'i'
	retlw	109	;'m'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	58	;':'
	retlw	10
	retlw	65	;'A'
	retlw	112	;'p'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	120	;'x'
	retlw	46	;'.'
	retlw	32	;' '
	retlw	53	;'5'
	retlw	32	;' '
	retlw	109	;'m'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	46	;'.'
	retlw	0
psect	stringtext
	
STR_7:	
	retlw	12
	retlw	80	;'P'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	120	;'x'
	retlw	105	;'i'
	retlw	109	;'m'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	58	;':'
	retlw	10
	retlw	65	;'A'
	retlw	112	;'p'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	120	;'x'
	retlw	46	;'.'
	retlw	32	;' '
	retlw	54	;'6'
	retlw	32	;' '
	retlw	109	;'m'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	46	;'.'
	retlw	0
psect	stringtext
	
STR_6:	
	retlw	12
	retlw	80	;'P'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	120	;'x'
	retlw	105	;'i'
	retlw	109	;'m'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	58	;':'
	retlw	10
	retlw	65	;'A'
	retlw	112	;'p'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	120	;'x'
	retlw	46	;'.'
	retlw	32	;' '
	retlw	55	;'7'
	retlw	32	;' '
	retlw	109	;'m'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	46	;'.'
	retlw	0
psect	stringtext
	
STR_5:	
	retlw	12
	retlw	80	;'P'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	120	;'x'
	retlw	105	;'i'
	retlw	109	;'m'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	58	;':'
	retlw	10
	retlw	65	;'A'
	retlw	112	;'p'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	120	;'x'
	retlw	46	;'.'
	retlw	32	;' '
	retlw	56	;'8'
	retlw	32	;' '
	retlw	109	;'m'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	46	;'.'
	retlw	0
psect	stringtext
	
STR_4:	
	retlw	12
	retlw	80	;'P'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	120	;'x'
	retlw	105	;'i'
	retlw	109	;'m'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	58	;':'
	retlw	10
	retlw	65	;'A'
	retlw	112	;'p'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	120	;'x'
	retlw	46	;'.'
	retlw	32	;' '
	retlw	57	;'9'
	retlw	32	;' '
	retlw	109	;'m'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	46	;'.'
	retlw	0
psect	stringtext
	
STR_2:	
	retlw	12
	retlw	80	;'P'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	120	;'x'
	retlw	105	;'i'
	retlw	109	;'m'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	58	;':'
	retlw	10
	retlw	78	;'N'
	retlw	65	;'A'
	retlw	32	;' '
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	65	;'A'
	retlw	67	;'C'
	retlw	65	;'A'
	retlw	79	;'O'
	retlw	0
psect	stringtext
	
STR_1:	
	retlw	12
	retlw	0
psect	stringtext
	file	"TI.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bitbssCOMMON,class=COMMON,bit,space=1
global __pbitbssCOMMON
__pbitbssCOMMON:
_conex:
       ds      1

_flag:
       ds      1

_seg:
       ds      1

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_C_on:
       ds      1

_dado_rx:
       ds      1

_ready:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_flagmin:
       ds      1

_flagstat:
       ds      1

_ini:
       ds      1

_minutos:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\Claudio\Desktop\TI\PIC\Projeto_TI.c"
_wait:
       ds      1

; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
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
	global	?_lcd_write
?_lcd_write:	; 0 bytes @ 0x0
	global	?_lcd_clear
?_lcd_clear:	; 0 bytes @ 0x0
	global	?_lcd_putc
?_lcd_putc:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_putch
?_putch:	; 0 bytes @ 0x0
	global	?_sync
?_sync:	; 0 bytes @ 0x0
	global	?_serial
?_serial:	; 0 bytes @ 0x0
	global	?_serial_init
?_serial_init:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	sync@data
sync@data:	; 1 bytes @ 0x0
	ds	1
	global	??_sync
??_sync:	; 0 bytes @ 0x1
	global	sync@mode
sync@mode:	; 1 bytes @ 0x1
	ds	1
	global	??_serial
??_serial:	; 0 bytes @ 0x2
	ds	5
	global	serial@lixo
serial@lixo:	; 1 bytes @ 0x7
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_lcd_write
??_lcd_write:	; 0 bytes @ 0x0
	global	??_serial_init
??_serial_init:	; 0 bytes @ 0x0
	ds	2
	global	lcd_write@c
lcd_write@c:	; 1 bytes @ 0x2
	ds	1
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x3
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0x3
	global	lcd_goto@pos
lcd_goto@pos:	; 1 bytes @ 0x3
	ds	2
	global	??_lcd_putc
??_lcd_putc:	; 0 bytes @ 0x5
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x5
	global	lcd_putc@c
lcd_putc@c:	; 1 bytes @ 0x5
	ds	1
	global	??_putch
??_putch:	; 0 bytes @ 0x6
	global	putch@c
putch@c:	; 1 bytes @ 0x6
	ds	1
	global	?_printf
?_printf:	; 2 bytes @ 0x7
	global	lcd_init@init_value
lcd_init@init_value:	; 1 bytes @ 0x7
	global	printf@f
printf@f:	; 2 bytes @ 0x7
	ds	2
	global	??_printf
??_printf:	; 0 bytes @ 0x9
	ds	3
	global	printf@ap
printf@ap:	; 1 bytes @ 0xC
	ds	1
	global	printf@c
printf@c:	; 1 bytes @ 0xD
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xE
	ds	3
;;Data sizes: Strings 319, constant 0, data 1, bss 7, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8      12
;; BANK0           80     17      22
;; BANK1           80      0       0
;; BANK2           80      0       0

;;
;; Pointer list with targets:

;; printf@f	PTR const unsigned char  size(2) Largest target is 30
;;		 -> STR_12(CODE[29]), STR_11(CODE[29]), STR_10(CODE[29]), STR_9(CODE[29]), 
;;		 -> STR_8(CODE[29]), STR_7(CODE[29]), STR_6(CODE[29]), STR_5(CODE[29]), 
;;		 -> STR_4(CODE[29]), STR_3(CODE[30]), STR_2(CODE[26]), STR_1(CODE[2]), 
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_printf(BANK0[2]), 
;;
;; S2699$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _serial in COMMON
;;
;;   _serial->_sync
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_printf
;;   _printf->_putch
;;   _putch->_lcd_putc
;;   _lcd_init->_lcd_clear
;;   _lcd_putc->_lcd_clear
;;   _lcd_goto->_lcd_write
;;   _lcd_clear->_lcd_write
;;
;; Critical Paths under _serial in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _serial in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _serial in BANK2
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
;; (0) _main                                                 3     3      0     575
;;                                             14 BANK0      3     3      0
;;                           _lcd_init
;;                        _serial_init
;;                             _printf
;; ---------------------------------------------------------------------------------
;; (1) _printf                                              13    11      2     464
;;                                              7 BANK0      7     5      2
;;                              _putch
;; ---------------------------------------------------------------------------------
;; (2) _putch                                                1     1      0     418
;;                                              6 BANK0      1     1      0
;;                           _lcd_putc
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             3     3      0     111
;;                                              5 BANK0      3     3      0
;;                          _lcd_write
;;                          _lcd_clear
;; ---------------------------------------------------------------------------------
;; (3) _lcd_putc                                             1     1      0     396
;;                                              5 BANK0      1     1      0
;;                          _lcd_clear
;;                           _lcd_goto
;;                          _lcd_write
;;                           _lcd_putc
;; ---------------------------------------------------------------------------------
;; (4) _lcd_goto                                             1     1      0      66
;;                                              3 BANK0      1     1      0
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (4) _lcd_clear                                            2     2      0      44
;;                                              3 BANK0      2     2      0
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (4) _lcd_write                                            3     3      0      44
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _serial_init                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (6) _serial                                               6     6      0      45
;;                                              2 COMMON     6     6      0
;;                               _sync
;; ---------------------------------------------------------------------------------
;; (7) _sync                                                 2     1      1      44
;;                                              0 COMMON     2     1      1
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 7
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_init
;;     _lcd_write
;;     _lcd_clear
;;       _lcd_write
;;   _serial_init
;;   _printf
;;     _putch
;;       _lcd_putc
;;         _lcd_clear
;;           _lcd_write
;;         _lcd_goto
;;           _lcd_write
;;         _lcd_write
;;
;; _serial (ROOT)
;;   _sync
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               50      0       0       7        0.0%
;;BITBANK2            50      0       0       6        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       5        0.0%
;;BITBANK1            50      0       0       4        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      2C      10        0.0%
;;ABS                  0      0      22       8        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       A       2        0.0%
;;BANK0               50     11      16       3       27.5%
;;BITBANK0            50      0       0       9        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      8       C       1       85.7%
;;BITCOMMON            E      0       1       0        7.1%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 167 in file "C:\Users\Claudio\Desktop\TI\PIC\Projeto_TI.c"
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
;;		On exit  : 0/0
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
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Claudio\Desktop\TI\PIC\Projeto_TI.c"
	line	167
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	168
	
l4721:	
;Projeto_TI.c: 168: ANSEL=0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(286)^0100h	;volatile
	line	169
;Projeto_TI.c: 169: ANSELH=0;
	clrf	(287)^0100h	;volatile
	line	170
	
l4723:	
;Projeto_TI.c: 170: TRISA=0b00001100;
	movlw	(0Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	171
	
l4725:	
;Projeto_TI.c: 171: TRISB=0b00000000;
	clrf	(134)^080h	;volatile
	line	172
	
l4727:	
;Projeto_TI.c: 172: TRISC=0b00000000;
	clrf	(135)^080h	;volatile
	line	175
	
l4729:	
;Projeto_TI.c: 175: GIE=1;
	bsf	(95/8),(95)&7
	line	176
	
l4731:	
;Projeto_TI.c: 176: INTE=1;
	bsf	(92/8),(92)&7
	line	177
	
l4733:	
;Projeto_TI.c: 177: INTEDG=1;
	bsf	(1038/8)^080h,(1038)&7
	line	178
	
l4735:	
;Projeto_TI.c: 178: PEIE=1;
	bsf	(94/8),(94)&7
	line	181
	
l4737:	
;Projeto_TI.c: 181: TMR1IE=1;
	bsf	(1120/8)^080h,(1120)&7
	line	182
	
l4739:	
;Projeto_TI.c: 182: TMR1IF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(96/8),(96)&7
	line	183
	
l4741:	
;Projeto_TI.c: 183: TMR1=3036;
	movlw	low(0BDCh)
	movwf	(14)	;volatile
	movlw	high(0BDCh)
	movwf	((14))+1	;volatile
	line	184
	
l4743:	
;Projeto_TI.c: 184: TMR1ON=1;
	bsf	(128/8),(128)&7
	line	185
	
l4745:	
;Projeto_TI.c: 185: TMR1CS=0;
	bcf	(129/8),(129)&7
	line	186
	
l4747:	
;Projeto_TI.c: 186: T1CKPS1=1;
	bsf	(133/8),(133)&7
	line	187
	
l4749:	
;Projeto_TI.c: 187: T1CKPS0=1;
	bsf	(132/8),(132)&7
	line	188
	
l4751:	
;Projeto_TI.c: 188: nT1SYNC=1;
	bsf	(130/8),(130)&7
	line	191
	
l4753:	
;Projeto_TI.c: 191: lcd_init();
	fcall	_lcd_init
	line	192
	
l4755:	
;Projeto_TI.c: 192: serial_init();
	fcall	_serial_init
	line	193
	
l4757:	
;Projeto_TI.c: 193: RA5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(45/8),(45)&7
	line	194
	
l4759:	
;Projeto_TI.c: 194: RA4=1;
	bsf	(44/8),(44)&7
	line	195
	
l4761:	
;Projeto_TI.c: 195: flagmin=1;
	clrf	(_flagmin)
	bsf	status,0
	rlf	(_flagmin),f
	goto	l4763
	line	197
;Projeto_TI.c: 197: while(1)
	
l1885:	
	line	205
	
l4763:	
;Projeto_TI.c: 198: {
;Projeto_TI.c: 205: if(ready==0 && flagmin==1)
	movf	(_ready),f
	skipz
	goto	u3071
	goto	u3070
u3071:
	goto	l4771
u3070:
	
l4765:	
	movf	(_flagmin),w
	xorlw	01h
	skipz
	goto	u3081
	goto	u3080
u3081:
	goto	l4771
u3080:
	line	207
	
l4767:	
;Projeto_TI.c: 206: {
;Projeto_TI.c: 207: printf("\f");
	movlw	low(STR_1|8000h)
	movwf	(?_printf)
	movlw	high(STR_1|8000h)
	movwf	((?_printf))+1
	fcall	_printf
	line	208
	
l4769:	
;Projeto_TI.c: 208: flagmin=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_flagmin)
	goto	l4771
	line	209
	
l1886:	
	line	211
	
l4771:	
;Projeto_TI.c: 209: }
;Projeto_TI.c: 211: if(minutos==0 && flagmin==1 && ready==1)
	movf	(_minutos),f
	skipz
	goto	u3091
	goto	u3090
u3091:
	goto	l4781
u3090:
	
l4773:	
	movf	(_flagmin),w
	xorlw	01h
	skipz
	goto	u3101
	goto	u3100
u3101:
	goto	l4781
u3100:
	
l4775:	
	movf	(_ready),w
	xorlw	01h
	skipz
	goto	u3111
	goto	u3110
u3111:
	goto	l4781
u3110:
	line	213
	
l4777:	
;Projeto_TI.c: 212: {
;Projeto_TI.c: 213: printf("\fProximo trem:\nNA ESTACAO");
	movlw	low(STR_2|8000h)
	movwf	(?_printf)
	movlw	high(STR_2|8000h)
	movwf	((?_printf))+1
	fcall	_printf
	line	214
	
l4779:	
;Projeto_TI.c: 214: flagmin=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_flagmin)
	goto	l4781
	line	215
	
l1887:	
	line	216
	
l4781:	
;Projeto_TI.c: 215: }
;Projeto_TI.c: 216: if(minutos==1 && flagmin==1 && ready==1)
	movf	(_minutos),w
	xorlw	01h
	skipz
	goto	u3121
	goto	u3120
u3121:
	goto	l4791
u3120:
	
l4783:	
	movf	(_flagmin),w
	xorlw	01h
	skipz
	goto	u3131
	goto	u3130
u3131:
	goto	l4791
u3130:
	
l4785:	
	movf	(_ready),w
	xorlw	01h
	skipz
	goto	u3141
	goto	u3140
u3141:
	goto	l4791
u3140:
	line	218
	
l4787:	
;Projeto_TI.c: 217: {
;Projeto_TI.c: 218: printf("\fProximo trem:\nAprox. 10 min.");
	movlw	low(STR_3|8000h)
	movwf	(?_printf)
	movlw	high(STR_3|8000h)
	movwf	((?_printf))+1
	fcall	_printf
	line	219
	
l4789:	
;Projeto_TI.c: 219: flagmin=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_flagmin)
	goto	l4791
	line	220
	
l1888:	
	line	221
	
l4791:	
;Projeto_TI.c: 220: }
;Projeto_TI.c: 221: if(minutos==2 && flagmin==1 && ready==1)
	movf	(_minutos),w
	xorlw	02h
	skipz
	goto	u3151
	goto	u3150
u3151:
	goto	l4801
u3150:
	
l4793:	
	movf	(_flagmin),w
	xorlw	01h
	skipz
	goto	u3161
	goto	u3160
u3161:
	goto	l4801
u3160:
	
l4795:	
	movf	(_ready),w
	xorlw	01h
	skipz
	goto	u3171
	goto	u3170
u3171:
	goto	l4801
u3170:
	line	223
	
l4797:	
;Projeto_TI.c: 222: {
;Projeto_TI.c: 223: printf("\fProximo trem:\nAprox. 9 min.");
	movlw	low(STR_4|8000h)
	movwf	(?_printf)
	movlw	high(STR_4|8000h)
	movwf	((?_printf))+1
	fcall	_printf
	line	224
	
l4799:	
;Projeto_TI.c: 224: flagmin=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_flagmin)
	goto	l4801
	line	225
	
l1889:	
	line	226
	
l4801:	
;Projeto_TI.c: 225: }
;Projeto_TI.c: 226: if(minutos==3 && flagmin==1 && ready==1)
	movf	(_minutos),w
	xorlw	03h
	skipz
	goto	u3181
	goto	u3180
u3181:
	goto	l4811
u3180:
	
l4803:	
	movf	(_flagmin),w
	xorlw	01h
	skipz
	goto	u3191
	goto	u3190
u3191:
	goto	l4811
u3190:
	
l4805:	
	movf	(_ready),w
	xorlw	01h
	skipz
	goto	u3201
	goto	u3200
u3201:
	goto	l4811
u3200:
	line	228
	
l4807:	
;Projeto_TI.c: 227: {
;Projeto_TI.c: 228: printf("\fProximo trem:\nAprox. 8 min.");
	movlw	low(STR_5|8000h)
	movwf	(?_printf)
	movlw	high(STR_5|8000h)
	movwf	((?_printf))+1
	fcall	_printf
	line	229
	
l4809:	
;Projeto_TI.c: 229: flagmin=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_flagmin)
	goto	l4811
	line	230
	
l1890:	
	line	231
	
l4811:	
;Projeto_TI.c: 230: }
;Projeto_TI.c: 231: if(minutos==4 && flagmin==1 && ready==1)
	movf	(_minutos),w
	xorlw	04h
	skipz
	goto	u3211
	goto	u3210
u3211:
	goto	l4821
u3210:
	
l4813:	
	movf	(_flagmin),w
	xorlw	01h
	skipz
	goto	u3221
	goto	u3220
u3221:
	goto	l4821
u3220:
	
l4815:	
	movf	(_ready),w
	xorlw	01h
	skipz
	goto	u3231
	goto	u3230
u3231:
	goto	l4821
u3230:
	line	233
	
l4817:	
;Projeto_TI.c: 232: {
;Projeto_TI.c: 233: printf("\fProximo trem:\nAprox. 7 min.");
	movlw	low(STR_6|8000h)
	movwf	(?_printf)
	movlw	high(STR_6|8000h)
	movwf	((?_printf))+1
	fcall	_printf
	line	234
	
l4819:	
;Projeto_TI.c: 234: flagmin=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_flagmin)
	goto	l4821
	line	235
	
l1891:	
	line	236
	
l4821:	
;Projeto_TI.c: 235: }
;Projeto_TI.c: 236: if(minutos==5 && flagmin==1 && ready==1)
	movf	(_minutos),w
	xorlw	05h
	skipz
	goto	u3241
	goto	u3240
u3241:
	goto	l4831
u3240:
	
l4823:	
	movf	(_flagmin),w
	xorlw	01h
	skipz
	goto	u3251
	goto	u3250
u3251:
	goto	l4831
u3250:
	
l4825:	
	movf	(_ready),w
	xorlw	01h
	skipz
	goto	u3261
	goto	u3260
u3261:
	goto	l4831
u3260:
	line	238
	
l4827:	
;Projeto_TI.c: 237: {
;Projeto_TI.c: 238: printf("\fProximo trem:\nAprox. 6 min.");
	movlw	low(STR_7|8000h)
	movwf	(?_printf)
	movlw	high(STR_7|8000h)
	movwf	((?_printf))+1
	fcall	_printf
	line	239
	
l4829:	
;Projeto_TI.c: 239: flagmin=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_flagmin)
	goto	l4831
	line	240
	
l1892:	
	line	241
	
l4831:	
;Projeto_TI.c: 240: }
;Projeto_TI.c: 241: if(minutos==6 && flagmin==1 && ready==1)
	movf	(_minutos),w
	xorlw	06h
	skipz
	goto	u3271
	goto	u3270
u3271:
	goto	l4841
u3270:
	
l4833:	
	movf	(_flagmin),w
	xorlw	01h
	skipz
	goto	u3281
	goto	u3280
u3281:
	goto	l4841
u3280:
	
l4835:	
	movf	(_ready),w
	xorlw	01h
	skipz
	goto	u3291
	goto	u3290
u3291:
	goto	l4841
u3290:
	line	243
	
l4837:	
;Projeto_TI.c: 242: {
;Projeto_TI.c: 243: printf("\fProximo trem:\nAprox. 5 min.");
	movlw	low(STR_8|8000h)
	movwf	(?_printf)
	movlw	high(STR_8|8000h)
	movwf	((?_printf))+1
	fcall	_printf
	line	244
	
l4839:	
;Projeto_TI.c: 244: flagmin=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_flagmin)
	goto	l4841
	line	245
	
l1893:	
	line	246
	
l4841:	
;Projeto_TI.c: 245: }
;Projeto_TI.c: 246: if(minutos==7 && flagmin==1 && ready==1)
	movf	(_minutos),w
	xorlw	07h
	skipz
	goto	u3301
	goto	u3300
u3301:
	goto	l4851
u3300:
	
l4843:	
	movf	(_flagmin),w
	xorlw	01h
	skipz
	goto	u3311
	goto	u3310
u3311:
	goto	l4851
u3310:
	
l4845:	
	movf	(_ready),w
	xorlw	01h
	skipz
	goto	u3321
	goto	u3320
u3321:
	goto	l4851
u3320:
	line	248
	
l4847:	
;Projeto_TI.c: 247: {
;Projeto_TI.c: 248: printf("\fProximo trem:\nAprox. 4 min.");
	movlw	low(STR_9|8000h)
	movwf	(?_printf)
	movlw	high(STR_9|8000h)
	movwf	((?_printf))+1
	fcall	_printf
	line	249
	
l4849:	
;Projeto_TI.c: 249: flagmin=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_flagmin)
	goto	l4851
	line	250
	
l1894:	
	line	251
	
l4851:	
;Projeto_TI.c: 250: }
;Projeto_TI.c: 251: if(minutos==8 && flagmin==1 && ready==1)
	movf	(_minutos),w
	xorlw	08h
	skipz
	goto	u3331
	goto	u3330
u3331:
	goto	l4861
u3330:
	
l4853:	
	movf	(_flagmin),w
	xorlw	01h
	skipz
	goto	u3341
	goto	u3340
u3341:
	goto	l4861
u3340:
	
l4855:	
	movf	(_ready),w
	xorlw	01h
	skipz
	goto	u3351
	goto	u3350
u3351:
	goto	l4861
u3350:
	line	253
	
l4857:	
;Projeto_TI.c: 252: {
;Projeto_TI.c: 253: printf("\fProximo trem:\nAprox. 3 min.");
	movlw	low(STR_10|8000h)
	movwf	(?_printf)
	movlw	high(STR_10|8000h)
	movwf	((?_printf))+1
	fcall	_printf
	line	254
	
l4859:	
;Projeto_TI.c: 254: flagmin=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_flagmin)
	goto	l4861
	line	255
	
l1895:	
	line	256
	
l4861:	
;Projeto_TI.c: 255: }
;Projeto_TI.c: 256: if(minutos==9 && flagmin==1 && ready==1)
	movf	(_minutos),w
	xorlw	09h
	skipz
	goto	u3361
	goto	u3360
u3361:
	goto	l4871
u3360:
	
l4863:	
	movf	(_flagmin),w
	xorlw	01h
	skipz
	goto	u3371
	goto	u3370
u3371:
	goto	l4871
u3370:
	
l4865:	
	movf	(_ready),w
	xorlw	01h
	skipz
	goto	u3381
	goto	u3380
u3381:
	goto	l4871
u3380:
	line	258
	
l4867:	
;Projeto_TI.c: 257: {
;Projeto_TI.c: 258: printf("\fProximo trem:\nAprox. 2 min.");
	movlw	low(STR_11|8000h)
	movwf	(?_printf)
	movlw	high(STR_11|8000h)
	movwf	((?_printf))+1
	fcall	_printf
	line	259
	
l4869:	
;Projeto_TI.c: 259: flagmin=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_flagmin)
	goto	l4871
	line	260
	
l1896:	
	line	261
	
l4871:	
;Projeto_TI.c: 260: }
;Projeto_TI.c: 261: if(minutos==10 && flagmin==1 && ready==1)
	movf	(_minutos),w
	xorlw	0Ah
	skipz
	goto	u3391
	goto	u3390
u3391:
	goto	l4881
u3390:
	
l4873:	
	movf	(_flagmin),w
	xorlw	01h
	skipz
	goto	u3401
	goto	u3400
u3401:
	goto	l4881
u3400:
	
l4875:	
	movf	(_ready),w
	xorlw	01h
	skipz
	goto	u3411
	goto	u3410
u3411:
	goto	l4881
u3410:
	line	263
	
l4877:	
;Projeto_TI.c: 262: {
;Projeto_TI.c: 263: printf("\fProximo trem:\nAprox. 1 min.");
	movlw	low(STR_12|8000h)
	movwf	(?_printf)
	movlw	high(STR_12|8000h)
	movwf	((?_printf))+1
	fcall	_printf
	line	264
	
l4879:	
;Projeto_TI.c: 264: flagmin=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_flagmin)
	goto	l4881
	line	265
	
l1897:	
	line	266
	
l4881:	
;Projeto_TI.c: 265: }
;Projeto_TI.c: 266: if(minutos>10)
	movlw	(0Bh)
	subwf	(_minutos),w
	skipc
	goto	u3421
	goto	u3420
u3421:
	goto	l1898
u3420:
	line	268
	
l4883:	
;Projeto_TI.c: 267: {
;Projeto_TI.c: 268: minutos=0;
	clrf	(_minutos)
	line	269
	
l1898:	
	line	275
;Projeto_TI.c: 269: }
;Projeto_TI.c: 275: if(RA2==1){_delay((unsigned long)((100)*(4000000/4000.0)));}else{INTE=1;}
	btfss	(42/8),(42)&7
	goto	u3431
	goto	u3430
u3431:
	goto	l1899
u3430:
	
l4885:	
	opt asmopt_off
movlw	130
movwf	((??_main+0)+0+1),f
	movlw	221
movwf	((??_main+0)+0),f
u3527:
	decfsz	((??_main+0)+0),f
	goto	u3527
	decfsz	((??_main+0)+0+1),f
	goto	u3527
	nop2
opt asmopt_on

	goto	l4887
	
l1899:	
	bsf	(92/8),(92)&7
	goto	l4887
	
l1900:	
	line	282
	
l4887:	
;Projeto_TI.c: 282: if(ini==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ini),w
	xorlw	01h
	skipz
	goto	u3441
	goto	u3440
u3441:
	goto	l4763
u3440:
	line	285
	
l4889:	
;Projeto_TI.c: 283: {
;Projeto_TI.c: 285: if(wait){_delay((unsigned long)((1000)*(4000000/4000.0))); wait=0;}
	movf	(_wait),w
	skipz
	goto	u3450
	goto	l1902
u3450:
	
l4891:	
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u3537:
	decfsz	((??_main+0)+0),f
	goto	u3537
	decfsz	((??_main+0)+0+1),f
	goto	u3537
	decfsz	((??_main+0)+0+2),f
	goto	u3537
	nop2
opt asmopt_on

	
l4893:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_wait)
	
l1902:	
	line	288
;Projeto_TI.c: 288: if(flagstat){
	movf	(_flagstat),w
	skipz
	goto	u3460
	goto	l4905
u3460:
	line	290
	
l4895:	
;Projeto_TI.c: 290: _delay((unsigned long)((150)*(4000000/4000.0)));
	opt asmopt_off
movlw	195
movwf	((??_main+0)+0+1),f
	movlw	205
movwf	((??_main+0)+0),f
u3547:
	decfsz	((??_main+0)+0),f
	goto	u3547
	decfsz	((??_main+0)+0+1),f
	goto	u3547
opt asmopt_on

	line	291
;Projeto_TI.c: 291: if(flagstat && !seg){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_flagstat),w
	skipz
	goto	u3470
	goto	l4763
u3470:
	
l4897:	
	btfsc	(_seg/8),(_seg)&7
	goto	u3481
	goto	u3480
u3481:
	goto	l4763
u3480:
	line	292
	
l4899:	
;Projeto_TI.c: 292: RA5=0;
	bcf	(45/8),(45)&7
	line	293
;Projeto_TI.c: 293: RA4=1;
	bsf	(44/8),(44)&7
	line	294
;Projeto_TI.c: 294: ready=0;
	clrf	(_ready)
	line	295
	
l4901:	
;Projeto_TI.c: 295: flagmin=1;
	clrf	(_flagmin)
	bsf	status,0
	rlf	(_flagmin),f
	line	296
	
l4903:	
;Projeto_TI.c: 296: conex=1;
	bsf	(_conex/8),(_conex)&7
	goto	l4763
	line	297
	
l1904:	
	line	298
;Projeto_TI.c: 297: }
;Projeto_TI.c: 298: }
	goto	l4763
	line	299
	
l1903:	
	
l4905:	
;Projeto_TI.c: 299: else if(!flagstat && !seg){
	movf	(_flagstat),f
	skipz
	goto	u3491
	goto	u3490
u3491:
	goto	l4763
u3490:
	
l4907:	
	btfsc	(_seg/8),(_seg)&7
	goto	u3501
	goto	u3500
u3501:
	goto	l4763
u3500:
	line	300
	
l4909:	
;Projeto_TI.c: 300: ready=1;
	clrf	(_ready)
	bsf	status,0
	rlf	(_ready),f
	line	301
	
l4911:	
;Projeto_TI.c: 301: RA5=1;
	bsf	(45/8),(45)&7
	line	302
	
l4913:	
;Projeto_TI.c: 302: RA4=0;
	bcf	(44/8),(44)&7
	line	303
	
l4915:	
;Projeto_TI.c: 303: if(conex){
	btfss	(_conex/8),(_conex)&7
	goto	u3511
	goto	u3510
u3511:
	goto	l4763
u3510:
	line	304
	
l4917:	
;Projeto_TI.c: 304: flagmin=1;
	clrf	(_flagmin)
	bsf	status,0
	rlf	(_flagmin),f
	line	305
	
l4919:	
;Projeto_TI.c: 305: conex=0;
	bcf	(_conex/8),(_conex)&7
	goto	l4763
	line	306
	
l1907:	
	goto	l4763
	line	307
	
l1906:	
	goto	l4763
	line	308
	
l1905:	
	goto	l4763
	
l1901:	
	goto	l4763
	line	309
	
l1908:	
	line	197
	goto	l4763
	
l1909:	
	line	312
	
l1910:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_printf
psect	text327,local,class=CODE,delta=2
global __ptext327
__ptext327:

;; *************** function _printf *****************
;; Defined at:
;;		line 461 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               2    7[BANK0 ] PTR const unsigned char 
;;		 -> STR_12(29), STR_11(29), STR_10(29), STR_9(29), 
;;		 -> STR_8(29), STR_7(29), STR_6(29), STR_5(29), 
;;		 -> STR_4(29), STR_3(30), STR_2(26), STR_1(2), 
;; Auto vars:     Size  Location     Type
;;  _val            4    0        struct .
;;  c               1   13[BANK0 ] char 
;;  ap              1   12[BANK0 ] PTR void [1]
;;		 -> ?_printf(2), 
;;  flag            1    0        unsigned char 
;;  prec            1    0        char 
;; Return value:  Size  Location     Type
;;                  2    7[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       3       0       0
;;      Totals:         0       7       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_putch
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text327
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	461
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
	opt	stack 1
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	537
	
l4715:	
	movlw	(?_printf+02h)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@ap)
	line	540
	goto	l4719
	
l1918:	
	line	545
	
l4717:	
	movf	(printf@c),w
	fcall	_putch
	line	546
	goto	l4719
	line	1525
	
l1917:	
	line	540
	
l4719:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printf@f+1),w
	movwf	(??_printf+0)+0+1
	movf	(printf@f),w
	movwf	(??_printf+0)+0
	movlw	(01h)
	addwf	(printf@f),f
	skipnc
	incf	(printf@f+1),f
	movf	1+(??_printf+0)+0,w
	movwf	btemp+1
	movf	0+(??_printf+0)+0,w
	movwf	fsr0
	fcall	stringtab
	movwf	(??_printf+2)+0
	movf	(??_printf+2)+0,w
	movwf	(printf@c)
	movf	((printf@c)),f
	skipz
	goto	u3061
	goto	u3060
u3061:
	goto	l4717
u3060:
	goto	l1920
	
l1919:	
	line	1533
;	Return value of _printf is never used
	
l1920:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_putch
psect	text328,local,class=CODE,delta=2
global __ptext328
__ptext328:

;; *************** function _putch *****************
;; Defined at:
;;		line 125 in file "C:\Users\Claudio\Desktop\TI\PIC\LCD_ModSauer+ModCláudio.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    6[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_putc
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text328
	file	"C:\Users\Claudio\Desktop\TI\PIC\LCD_ModSauer+ModCláudio.c"
	line	125
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 1
; Regs used in _putch: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;putch@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(putch@c)
	line	126
	
l4713:	
;LCD_ModSauer+ModCláudio.c: 126: lcd_putc(c);
	movf	(putch@c),w
	fcall	_lcd_putc
	line	127
	
l920:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_lcd_init
psect	text329,local,class=CODE,delta=2
global __ptext329
__ptext329:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 99 in file "C:\Users\Claudio\Desktop\TI\PIC\LCD_ModSauer+ModCláudio.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  init_value      1    7[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_write
;;		_lcd_clear
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text329
	file	"C:\Users\Claudio\Desktop\TI\PIC\LCD_ModSauer+ModCláudio.c"
	line	99
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 3
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	101
	
l4683:	
;LCD_ModSauer+ModCláudio.c: 100: char init_value;
;LCD_ModSauer+ModCláudio.c: 101: init_value = 0x3;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(lcd_init@init_value)
	line	103
	
l4685:	
;LCD_ModSauer+ModCláudio.c: 103: RA0 = 0;
	bcf	(40/8),(40)&7
	line	104
	
l4687:	
;LCD_ModSauer+ModCláudio.c: 104: RA1 = 0;
	bcf	(41/8),(41)&7
	line	107
;LCD_ModSauer+ModCláudio.c: 107: _delay((unsigned long)((15)*(8000000/4000.0)));
	opt asmopt_off
movlw	39
movwf	((??_lcd_init+0)+0+1),f
	movlw	245
movwf	((??_lcd_init+0)+0),f
u3557:
	decfsz	((??_lcd_init+0)+0),f
	goto	u3557
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u3557
opt asmopt_on

	line	108
;LCD_ModSauer+ModCláudio.c: 108: PORTC = init_value;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcd_init@init_value),w
	movwf	(7)	;volatile
	line	109
	
l4689:	
;LCD_ModSauer+ModCláudio.c: 109: ((RA1 = 1),(RA1=0));
	bsf	(41/8),(41)&7
	
l4691:	
	bcf	(41/8),(41)&7
	line	110
;LCD_ModSauer+ModCláudio.c: 110: _delay((unsigned long)((5)*(8000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_lcd_init+0)+0+1),f
	movlw	251
movwf	((??_lcd_init+0)+0),f
u3567:
	decfsz	((??_lcd_init+0)+0),f
	goto	u3567
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u3567
	nop2
opt asmopt_on

	line	111
	
l4693:	
;LCD_ModSauer+ModCláudio.c: 111: ((RA1 = 1),(RA1=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7
	
l4695:	
	bcf	(41/8),(41)&7
	line	112
;LCD_ModSauer+ModCláudio.c: 112: _delay((unsigned long)((200)*(8000000/4000000.0)));
	opt asmopt_off
movlw	133
movwf	(??_lcd_init+0)+0,f
u3577:
decfsz	(??_lcd_init+0)+0,f
	goto	u3577
opt asmopt_on

	line	113
	
l4697:	
;LCD_ModSauer+ModCláudio.c: 113: ((RA1 = 1),(RA1=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7
	
l4699:	
	bcf	(41/8),(41)&7
	line	114
;LCD_ModSauer+ModCláudio.c: 114: _delay((unsigned long)((200)*(8000000/4000000.0)));
	opt asmopt_off
movlw	133
movwf	(??_lcd_init+0)+0,f
u3587:
decfsz	(??_lcd_init+0)+0,f
	goto	u3587
opt asmopt_on

	line	115
;LCD_ModSauer+ModCláudio.c: 115: PORTC = 2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	116
	
l4701:	
;LCD_ModSauer+ModCláudio.c: 116: ((RA1 = 1),(RA1=0));
	bsf	(41/8),(41)&7
	
l4703:	
	bcf	(41/8),(41)&7
	line	118
	
l4705:	
;LCD_ModSauer+ModCláudio.c: 118: lcd_write(0x28);
	movlw	(028h)
	fcall	_lcd_write
	line	119
	
l4707:	
;LCD_ModSauer+ModCláudio.c: 119: lcd_write(0x0D);
	movlw	(0Dh)
	fcall	_lcd_write
	line	120
	
l4709:	
;LCD_ModSauer+ModCláudio.c: 120: lcd_clear();
	fcall	_lcd_clear
	line	121
	
l4711:	
;LCD_ModSauer+ModCláudio.c: 121: lcd_write(0x6);
	movlw	(06h)
	fcall	_lcd_write
	line	122
	
l917:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_putc
psect	text330,local,class=CODE,delta=2
global __ptext330
__ptext330:

;; *************** function _lcd_putc *****************
;; Defined at:
;;		line 52 in file "C:\Users\Claudio\Desktop\TI\PIC\LCD_ModSauer+ModCláudio.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    5[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_clear
;;		_lcd_goto
;;		_lcd_write
;;		_lcd_putc
;; This function is called by:
;;		_putch
;; This function uses a non-reentrant model
;;
psect	text330
	file	"C:\Users\Claudio\Desktop\TI\PIC\LCD_ModSauer+ModCláudio.c"
	line	52
	global	__size_of_lcd_putc
	__size_of_lcd_putc	equ	__end_of_lcd_putc-_lcd_putc
	
_lcd_putc:	
	opt	stack 1
; Regs used in _lcd_putc: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_putc@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_putc@c)
	line	53
	
l4661:	
;LCD_ModSauer+ModCláudio.c: 53: switch (c)
	goto	l4681
	line	55
;LCD_ModSauer+ModCláudio.c: 54: {
;LCD_ModSauer+ModCláudio.c: 55: case '\f':
	
l904:	
	line	56
	
l4663:	
;LCD_ModSauer+ModCláudio.c: 56: lcd_clear();
	fcall	_lcd_clear
	line	57
;LCD_ModSauer+ModCláudio.c: 57: break;
	goto	l911
	line	59
;LCD_ModSauer+ModCláudio.c: 59: case '\n':
	
l906:	
	line	60
	
l4665:	
;LCD_ModSauer+ModCláudio.c: 60: lcd_goto(0x40);
	movlw	(040h)
	fcall	_lcd_goto
	line	61
;LCD_ModSauer+ModCláudio.c: 61: break;
	goto	l911
	line	63
;LCD_ModSauer+ModCláudio.c: 63: case '\r':
	
l907:	
	line	64
;LCD_ModSauer+ModCláudio.c: 64: RA0 = 0;
	bcf	(40/8),(40)&7
	line	65
	
l4667:	
;LCD_ModSauer+ModCláudio.c: 65: lcd_write(0x80);
	movlw	(080h)
	fcall	_lcd_write
	line	66
;LCD_ModSauer+ModCláudio.c: 66: break;
	goto	l911
	line	68
;LCD_ModSauer+ModCláudio.c: 68: case '\b':
	
l908:	
	line	69
;LCD_ModSauer+ModCláudio.c: 69: RA0=0;
	bcf	(40/8),(40)&7
	line	70
	
l4669:	
;LCD_ModSauer+ModCláudio.c: 70: lcd_write(0b0000010000);
	movlw	(010h)
	fcall	_lcd_write
	line	71
	
l4671:	
;LCD_ModSauer+ModCláudio.c: 71: RA0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7
	line	72
;LCD_ModSauer+ModCláudio.c: 72: lcd_putc(32);
	movlw	(020h)
	fcall	_lcd_putc
	line	73
	
l4673:	
;LCD_ModSauer+ModCláudio.c: 73: RA0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	74
;LCD_ModSauer+ModCláudio.c: 74: lcd_write(0b0000010000);
	movlw	(010h)
	fcall	_lcd_write
	line	75
;LCD_ModSauer+ModCláudio.c: 75: break;
	goto	l911
	line	77
;LCD_ModSauer+ModCláudio.c: 77: case '\t':
	
l909:	
	line	78
;LCD_ModSauer+ModCláudio.c: 78: RA0=0;
	bcf	(40/8),(40)&7
	line	79
	
l4675:	
;LCD_ModSauer+ModCláudio.c: 79: lcd_write(0b0000010100);
	movlw	(014h)
	fcall	_lcd_write
	line	80
;LCD_ModSauer+ModCláudio.c: 80: lcd_write(0b0000010100);
	movlw	(014h)
	fcall	_lcd_write
	line	81
;LCD_ModSauer+ModCláudio.c: 81: break;
	goto	l911
	line	83
;LCD_ModSauer+ModCláudio.c: 83: default:
	
l910:	
	line	84
;LCD_ModSauer+ModCláudio.c: 84: RA0 = 1;
	bsf	(40/8),(40)&7
	line	85
	
l4677:	
;LCD_ModSauer+ModCláudio.c: 85: lcd_write( c );
	movf	(lcd_putc@c),w
	fcall	_lcd_write
	line	86
;LCD_ModSauer+ModCláudio.c: 86: break;
	goto	l911
	line	87
	
l4679:	
;LCD_ModSauer+ModCláudio.c: 87: }
	goto	l911
	line	53
	
l903:	
	
l4681:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	goto	l908
	xorlw	9^8	; case 9
	skipnz
	goto	l909
	xorlw	10^9	; case 10
	skipnz
	goto	l4665
	xorlw	12^10	; case 12
	skipnz
	goto	l4663
	xorlw	13^12	; case 13
	skipnz
	goto	l907
	goto	l910
	opt asmopt_on

	line	87
	
l905:	
	line	88
	
l911:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putc
	__end_of_lcd_putc:
;; =============== function _lcd_putc ends ============

	signat	_lcd_putc,4216
	global	_lcd_goto
psect	text331,local,class=CODE,delta=2
global __ptext331
__ptext331:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 92 in file "C:\Users\Claudio\Desktop\TI\PIC\LCD_ModSauer+ModCláudio.c"
;; Parameters:    Size  Location     Type
;;  pos             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pos             1    3[BANK0 ] unsigned char 
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
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_lcd_putc
;; This function uses a non-reentrant model
;;
psect	text331
	file	"C:\Users\Claudio\Desktop\TI\PIC\LCD_ModSauer+ModCláudio.c"
	line	92
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 1
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@pos stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_goto@pos)
	line	93
	
l4657:	
;LCD_ModSauer+ModCláudio.c: 93: RA0 = 0;
	bcf	(40/8),(40)&7
	line	94
	
l4659:	
;LCD_ModSauer+ModCláudio.c: 94: lcd_write(0x80+pos);
	movf	(lcd_goto@pos),w
	addlw	080h
	fcall	_lcd_write
	line	95
	
l914:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_lcd_clear
psect	text332,local,class=CODE,delta=2
global __ptext332
__ptext332:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 36 in file "C:\Users\Claudio\Desktop\TI\PIC\LCD_ModSauer+ModCláudio.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_lcd_putc
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text332
	file	"C:\Users\Claudio\Desktop\TI\PIC\LCD_ModSauer+ModCláudio.c"
	line	36
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 1
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	37
	
l4651:	
;LCD_ModSauer+ModCláudio.c: 37: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	38
	
l4653:	
;LCD_ModSauer+ModCláudio.c: 38: lcd_write(0x1);
	movlw	(01h)
	fcall	_lcd_write
	line	39
	
l4655:	
;LCD_ModSauer+ModCláudio.c: 39: _delay((unsigned long)((2)*(8000000/4000.0)));
	opt asmopt_off
movlw	6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_clear+0)+0+1),f
	movlw	48
movwf	((??_lcd_clear+0)+0),f
u3597:
	decfsz	((??_lcd_clear+0)+0),f
	goto	u3597
	decfsz	((??_lcd_clear+0)+0+1),f
	goto	u3597
	clrwdt
opt asmopt_on

	line	40
	
l894:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	_lcd_write
psect	text333,local,class=CODE,delta=2
global __ptext333
__ptext333:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 24 in file "C:\Users\Claudio\Desktop\TI\PIC\LCD_ModSauer+ModCláudio.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    2[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_clear
;;		_lcd_putc
;;		_lcd_goto
;;		_lcd_init
;;		_lcd_puts
;; This function uses a non-reentrant model
;;
psect	text333
	file	"C:\Users\Claudio\Desktop\TI\PIC\LCD_ModSauer+ModCláudio.c"
	line	24
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
	
_lcd_write:	
	opt	stack 2
; Regs used in _lcd_write: [wreg+status,2+status,0]
;lcd_write@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_write@c)
	line	25
	
l4633:	
;LCD_ModSauer+ModCláudio.c: 25: _delay((unsigned long)((40)*(8000000/4000000.0)));
	opt asmopt_off
movlw	26
movwf	(??_lcd_write+0)+0,f
u3607:
decfsz	(??_lcd_write+0)+0,f
	goto	u3607
	clrwdt
opt asmopt_on

	line	26
	
l4635:	
;LCD_ModSauer+ModCláudio.c: 26: PORTC &= 0xF0;
	movlw	(0F0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_write+0)+0
	movf	(??_lcd_write+0)+0,w
	andwf	(7),f	;volatile
	line	27
	
l4637:	
;LCD_ModSauer+ModCláudio.c: 27: PORTC |= ( ( c >> 4 ) & 0x0F );
	movf	(lcd_write@c),w
	movwf	(??_lcd_write+0)+0
	movlw	04h
u3055:
	clrc
	rrf	(??_lcd_write+0)+0,f
	addlw	-1
	skipz
	goto	u3055
	movf	0+(??_lcd_write+0)+0,w
	andlw	0Fh
	movwf	(??_lcd_write+1)+0
	movf	(??_lcd_write+1)+0,w
	iorwf	(7),f	;volatile
	line	28
	
l4639:	
;LCD_ModSauer+ModCláudio.c: 28: ((RA1 = 1),(RA1=0));
	bsf	(41/8),(41)&7
	
l4641:	
	bcf	(41/8),(41)&7
	line	29
	
l4643:	
;LCD_ModSauer+ModCláudio.c: 29: PORTC &=0xF0;
	movlw	(0F0h)
	movwf	(??_lcd_write+0)+0
	movf	(??_lcd_write+0)+0,w
	andwf	(7),f	;volatile
	line	30
	
l4645:	
;LCD_ModSauer+ModCláudio.c: 30: PORTC |= ( c & 0x0F );
	movf	(lcd_write@c),w
	andlw	0Fh
	movwf	(??_lcd_write+0)+0
	movf	(??_lcd_write+0)+0,w
	iorwf	(7),f	;volatile
	line	31
	
l4647:	
;LCD_ModSauer+ModCláudio.c: 31: ((RA1 = 1),(RA1=0));
	bsf	(41/8),(41)&7
	
l4649:	
	bcf	(41/8),(41)&7
	line	32
	
l891:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,4216
	global	_serial_init
psect	text334,local,class=CODE,delta=2
global __ptext334
__ptext334:

;; *************** function _serial_init *****************
;; Defined at:
;;		line 148 in file "C:\Users\Claudio\Desktop\TI\PIC\Projeto_TI.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text334
	file	"C:\Users\Claudio\Desktop\TI\PIC\Projeto_TI.c"
	line	148
	global	__size_of_serial_init
	__size_of_serial_init	equ	__end_of_serial_init-_serial_init
	
_serial_init:	
	opt	stack 5
; Regs used in _serial_init: [wreg+status,2]
	line	149
	
l4611:	
;Projeto_TI.c: 149: SYNC=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1220/8)^080h,(1220)&7
	line	150
;Projeto_TI.c: 150: BRGH=1;
	bsf	(1218/8)^080h,(1218)&7
	line	151
;Projeto_TI.c: 151: BRG16=1;
	bsf	(1243/8)^080h,(1243)&7
	line	152
	
l4613:	
;Projeto_TI.c: 152: SPBRGH=0;
	clrf	(154)^080h	;volatile
	line	153
	
l4615:	
;Projeto_TI.c: 153: SPBRG=103;
	movlw	(067h)
	movwf	(153)^080h	;volatile
	line	154
	
l4617:	
;Projeto_TI.c: 154: SPEN=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	155
	
l4619:	
;Projeto_TI.c: 155: TX9=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1222/8)^080h,(1222)&7
	line	156
	
l4621:	
;Projeto_TI.c: 156: TXEN=1;
	bsf	(1221/8)^080h,(1221)&7
	line	157
	
l4623:	
;Projeto_TI.c: 157: TXIE=0;
	bcf	(1124/8)^080h,(1124)&7
	line	158
	
l4625:	
;Projeto_TI.c: 158: RCIE=1;
	bsf	(1125/8)^080h,(1125)&7
	line	159
	
l4627:	
;Projeto_TI.c: 159: PEIE=1;
	bsf	(94/8),(94)&7
	line	160
	
l4629:	
;Projeto_TI.c: 160: RX9=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(198/8),(198)&7
	line	161
	
l4631:	
;Projeto_TI.c: 161: CREN=1;
	bsf	(196/8),(196)&7
	line	162
	
l1882:	
	return
	opt stack 0
GLOBAL	__end_of_serial_init
	__end_of_serial_init:
;; =============== function _serial_init ends ============

	signat	_serial_init,88
	global	_serial
psect	text335,local,class=CODE,delta=2
global __ptext335
__ptext335:

;; *************** function _serial *****************
;; Defined at:
;;		line 28 in file "C:\Users\Claudio\Desktop\TI\PIC\Projeto_TI.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  lixo            1    7[COMMON] unsigned char 
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
;;      Temps:          5       0       0       0
;;      Totals:         6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_sync
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text335
	file	"C:\Users\Claudio\Desktop\TI\PIC\Projeto_TI.c"
	line	28
	global	__size_of_serial
	__size_of_serial	equ	__end_of_serial-_serial
	
_serial:	
	opt	stack 1
; Regs used in _serial: [wreg-fsr0h+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_serial+1)
	movf	fsr0,w
	movwf	(??_serial+2)
	movf	pclath,w
	movwf	(??_serial+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_serial+4)
	ljmp	_serial
psect	text335
	line	32
	
i1l4475:	
;Projeto_TI.c: 29: char lixo;
;Projeto_TI.c: 32: if(INTF==1 && INTE==1)
	btfss	(89/8),(89)&7
	goto	u291_21
	goto	u291_20
u291_21:
	goto	i1l1847
u291_20:
	
i1l4477:	
	btfss	(92/8),(92)&7
	goto	u292_21
	goto	u292_20
u292_21:
	goto	i1l1847
u292_20:
	line	35
	
i1l4479:	
;Projeto_TI.c: 33: {
;Projeto_TI.c: 35: if(ready==1 && C_on==1)
	movf	(_ready),w
	xorlw	01h
	skipz
	goto	u293_21
	goto	u293_20
u293_21:
	goto	i1l1848
u293_20:
	
i1l4481:	
	movf	(_C_on),w
	xorlw	01h
	skipz
	goto	u294_21
	goto	u294_20
u294_21:
	goto	i1l1848
u294_20:
	line	37
	
i1l4483:	
;Projeto_TI.c: 36: {
;Projeto_TI.c: 37: sync(112,1);
	clrf	(?_sync)
	bsf	status,0
	rlf	(?_sync),f
	movlw	(070h)
	fcall	_sync
	line	38
	
i1l4485:	
;Projeto_TI.c: 38: INTE=0;
	bcf	(92/8),(92)&7
	line	39
;Projeto_TI.c: 39: }
	goto	i1l1849
	line	41
	
i1l1848:	
	line	43
;Projeto_TI.c: 41: else
;Projeto_TI.c: 42: {
;Projeto_TI.c: 43: RA5=0;
	bcf	(45/8),(45)&7
	line	44
;Projeto_TI.c: 44: RA4=1;
	bsf	(44/8),(44)&7
	line	45
	
i1l1849:	
	line	46
;Projeto_TI.c: 45: }
;Projeto_TI.c: 46: INTF=0;
	bcf	(89/8),(89)&7
	line	47
	
i1l1847:	
	line	50
;Projeto_TI.c: 47: }
;Projeto_TI.c: 50: if(RCIF==1 && RCIE==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u295_21
	goto	u295_20
u295_21:
	goto	i1l1850
u295_20:
	
i1l4487:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1125/8)^080h,(1125)&7
	goto	u296_21
	goto	u296_20
u296_21:
	goto	i1l1850
u296_20:
	line	53
	
i1l4489:	
;Projeto_TI.c: 51: {
;Projeto_TI.c: 53: if(FERR==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(194/8),(194)&7
	goto	u297_21
	goto	u297_20
u297_21:
	goto	i1l1851
u297_20:
	line	54
	
i1l4491:	
;Projeto_TI.c: 54: lixo=RCREG;
	movf	(26),w	;volatile
	movwf	(??_serial+0)+0
	movf	(??_serial+0)+0,w
	movwf	(serial@lixo)
	line	55
;Projeto_TI.c: 55: }
	goto	i1l1852
	line	57
	
i1l1851:	
;Projeto_TI.c: 57: else if(OERR==1){
	btfss	(193/8),(193)&7
	goto	u298_21
	goto	u298_20
u298_21:
	goto	i1l4495
u298_20:
	line	58
	
i1l4493:	
;Projeto_TI.c: 58: CREN=0;
	bcf	(196/8),(196)&7
	line	59
;Projeto_TI.c: 59: CREN=1;
	bsf	(196/8),(196)&7
	line	60
;Projeto_TI.c: 60: }
	goto	i1l1852
	line	63
	
i1l1853:	
	line	65
	
i1l4495:	
;Projeto_TI.c: 63: else
;Projeto_TI.c: 64: {
;Projeto_TI.c: 65: dado_rx=RCREG;
	movf	(26),w	;volatile
	movwf	(??_serial+0)+0
	movf	(??_serial+0)+0,w
	movwf	(_dado_rx)
	line	66
;Projeto_TI.c: 66: switch(dado_rx)
	goto	i1l4595
	line	69
;Projeto_TI.c: 67: {
;Projeto_TI.c: 69: case 'r':
	
i1l1856:	
	line	70
	
i1l4497:	
;Projeto_TI.c: 70: ready=1;
	clrf	(_ready)
	bsf	status,0
	rlf	(_ready),f
	line	71
;Projeto_TI.c: 71: C_on=1;
	clrf	(_C_on)
	bsf	status,0
	rlf	(_C_on),f
	line	72
	
i1l4499:	
;Projeto_TI.c: 72: flagstat=0;
	clrf	(_flagstat)
	line	73
	
i1l4501:	
;Projeto_TI.c: 73: RA5=1;
	bsf	(45/8),(45)&7
	line	74
	
i1l4503:	
;Projeto_TI.c: 74: RA4=0;
	bcf	(44/8),(44)&7
	line	75
;Projeto_TI.c: 75: ini=1;
	clrf	(_ini)
	bsf	status,0
	rlf	(_ini),f
	line	76
;Projeto_TI.c: 76: wait=1;
	clrf	(_wait)
	bsf	status,0
	rlf	(_wait),f
	line	77
;Projeto_TI.c: 77: break;
	goto	i1l1852
	line	80
;Projeto_TI.c: 80: case 'z':
	
i1l1858:	
	line	81
;Projeto_TI.c: 81: ready=0;
	clrf	(_ready)
	line	82
;Projeto_TI.c: 82: C_on=0;
	clrf	(_C_on)
	line	83
	
i1l4505:	
;Projeto_TI.c: 83: flagstat=1;
	clrf	(_flagstat)
	bsf	status,0
	rlf	(_flagstat),f
	line	84
	
i1l4507:	
;Projeto_TI.c: 84: RA5=0;
	bcf	(45/8),(45)&7
	line	85
	
i1l4509:	
;Projeto_TI.c: 85: RA4=1;
	bsf	(44/8),(44)&7
	line	86
	
i1l4511:	
;Projeto_TI.c: 86: ini=0;
	clrf	(_ini)
	line	87
;Projeto_TI.c: 87: flagmin=1;
	clrf	(_flagmin)
	bsf	status,0
	rlf	(_flagmin),f
	line	88
;Projeto_TI.c: 88: break;
	goto	i1l1852
	line	91
;Projeto_TI.c: 91: case 't':
	
i1l1859:	
	line	92
;Projeto_TI.c: 92: flagstat=0;
	clrf	(_flagstat)
	line	93
	
i1l4513:	
;Projeto_TI.c: 93: if(ready==0)
	movf	(_ready),f
	skipz
	goto	u299_21
	goto	u299_20
u299_21:
	goto	i1l1852
u299_20:
	line	95
	
i1l4515:	
;Projeto_TI.c: 94: {
;Projeto_TI.c: 95: ready=1;
	clrf	(_ready)
	bsf	status,0
	rlf	(_ready),f
	goto	i1l1852
	line	96
	
i1l1860:	
	line	97
;Projeto_TI.c: 96: }
;Projeto_TI.c: 97: break;
	goto	i1l1852
	line	102
;Projeto_TI.c: 102: case 'h':
	
i1l1861:	
	line	103
	
i1l4517:	
;Projeto_TI.c: 103: if(ready==1)
	movf	(_ready),w
	xorlw	01h
	skipz
	goto	u300_21
	goto	u300_20
u300_21:
	goto	i1l4521
u300_20:
	line	105
	
i1l4519:	
;Projeto_TI.c: 104: {
;Projeto_TI.c: 105: sync('h',0);
	clrf	(?_sync)
	movlw	(068h)
	fcall	_sync
	line	106
;Projeto_TI.c: 106: }
	goto	i1l1852
	line	107
	
i1l1862:	
	
i1l4521:	
;Projeto_TI.c: 107: else if(ready==0)
	movf	(_ready),f
	skipz
	goto	u301_21
	goto	u301_20
u301_21:
	goto	i1l1852
u301_20:
	goto	i1l4525
	line	109
	
i1l4523:	
	goto	i1l4525
	
i1l1865:	
	line	110
	
i1l4525:	
;Projeto_TI.c: 110: sync('h',0);
	clrf	(?_sync)
	movlw	(068h)
	fcall	_sync
	goto	i1l1852
	line	111
	
i1l1864:	
	goto	i1l1852
	line	112
	
i1l1863:	
;Projeto_TI.c: 111: }
;Projeto_TI.c: 112: break;
	goto	i1l1852
	line	116
;Projeto_TI.c: 116: case 'A': minutos=dado_rx-65; flagmin=1; dado_rx=0; break;
	
i1l1866:	
	
i1l4527:	
	movf	(_dado_rx),w
	addlw	0BFh
	movwf	(??_serial+0)+0
	movf	(??_serial+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_minutos)
	
i1l4529:	
	clrf	(_flagmin)
	bsf	status,0
	rlf	(_flagmin),f
	
i1l4531:	
	clrf	(_dado_rx)
	goto	i1l1852
	line	117
;Projeto_TI.c: 117: case 'B': minutos=dado_rx-65; flagmin=1; dado_rx=0; break;
	
i1l1867:	
	
i1l4533:	
	movf	(_dado_rx),w
	addlw	0BFh
	movwf	(??_serial+0)+0
	movf	(??_serial+0)+0,w
	movwf	(_minutos)
	
i1l4535:	
	clrf	(_flagmin)
	bsf	status,0
	rlf	(_flagmin),f
	
i1l4537:	
	clrf	(_dado_rx)
	goto	i1l1852
	line	118
;Projeto_TI.c: 118: case 'C': minutos=dado_rx-65; flagmin=1; dado_rx=0; break;
	
i1l1868:	
	
i1l4539:	
	movf	(_dado_rx),w
	addlw	0BFh
	movwf	(??_serial+0)+0
	movf	(??_serial+0)+0,w
	movwf	(_minutos)
	
i1l4541:	
	clrf	(_flagmin)
	bsf	status,0
	rlf	(_flagmin),f
	
i1l4543:	
	clrf	(_dado_rx)
	goto	i1l1852
	line	119
;Projeto_TI.c: 119: case 'D': minutos=dado_rx-65; flagmin=1; dado_rx=0; break;
	
i1l1869:	
	
i1l4545:	
	movf	(_dado_rx),w
	addlw	0BFh
	movwf	(??_serial+0)+0
	movf	(??_serial+0)+0,w
	movwf	(_minutos)
	
i1l4547:	
	clrf	(_flagmin)
	bsf	status,0
	rlf	(_flagmin),f
	
i1l4549:	
	clrf	(_dado_rx)
	goto	i1l1852
	line	120
;Projeto_TI.c: 120: case 'E': minutos=dado_rx-65; flagmin=1; dado_rx=0; break;
	
i1l1870:	
	
i1l4551:	
	movf	(_dado_rx),w
	addlw	0BFh
	movwf	(??_serial+0)+0
	movf	(??_serial+0)+0,w
	movwf	(_minutos)
	
i1l4553:	
	clrf	(_flagmin)
	bsf	status,0
	rlf	(_flagmin),f
	
i1l4555:	
	clrf	(_dado_rx)
	goto	i1l1852
	line	121
;Projeto_TI.c: 121: case 'F': minutos=dado_rx-65; flagmin=1; dado_rx=0; break;
	
i1l1871:	
	
i1l4557:	
	movf	(_dado_rx),w
	addlw	0BFh
	movwf	(??_serial+0)+0
	movf	(??_serial+0)+0,w
	movwf	(_minutos)
	
i1l4559:	
	clrf	(_flagmin)
	bsf	status,0
	rlf	(_flagmin),f
	
i1l4561:	
	clrf	(_dado_rx)
	goto	i1l1852
	line	122
;Projeto_TI.c: 122: case 'G': minutos=dado_rx-65; flagmin=1; dado_rx=0; break;
	
i1l1872:	
	
i1l4563:	
	movf	(_dado_rx),w
	addlw	0BFh
	movwf	(??_serial+0)+0
	movf	(??_serial+0)+0,w
	movwf	(_minutos)
	
i1l4565:	
	clrf	(_flagmin)
	bsf	status,0
	rlf	(_flagmin),f
	
i1l4567:	
	clrf	(_dado_rx)
	goto	i1l1852
	line	123
;Projeto_TI.c: 123: case 'H': minutos=dado_rx-65; flagmin=1; dado_rx=0; break;
	
i1l1873:	
	
i1l4569:	
	movf	(_dado_rx),w
	addlw	0BFh
	movwf	(??_serial+0)+0
	movf	(??_serial+0)+0,w
	movwf	(_minutos)
	
i1l4571:	
	clrf	(_flagmin)
	bsf	status,0
	rlf	(_flagmin),f
	
i1l4573:	
	clrf	(_dado_rx)
	goto	i1l1852
	line	124
;Projeto_TI.c: 124: case 'I': minutos=dado_rx-65; flagmin=1; dado_rx=0; break;
	
i1l1874:	
	
i1l4575:	
	movf	(_dado_rx),w
	addlw	0BFh
	movwf	(??_serial+0)+0
	movf	(??_serial+0)+0,w
	movwf	(_minutos)
	
i1l4577:	
	clrf	(_flagmin)
	bsf	status,0
	rlf	(_flagmin),f
	
i1l4579:	
	clrf	(_dado_rx)
	goto	i1l1852
	line	125
;Projeto_TI.c: 125: case 'J': minutos=dado_rx-65; flagmin=1; dado_rx=0; break;
	
i1l1875:	
	
i1l4581:	
	movf	(_dado_rx),w
	addlw	0BFh
	movwf	(??_serial+0)+0
	movf	(??_serial+0)+0,w
	movwf	(_minutos)
	
i1l4583:	
	clrf	(_flagmin)
	bsf	status,0
	rlf	(_flagmin),f
	
i1l4585:	
	clrf	(_dado_rx)
	goto	i1l1852
	line	126
;Projeto_TI.c: 126: case 'K': minutos=dado_rx-65; flagmin=1; dado_rx=0; break;
	
i1l1876:	
	
i1l4587:	
	movf	(_dado_rx),w
	addlw	0BFh
	movwf	(??_serial+0)+0
	movf	(??_serial+0)+0,w
	movwf	(_minutos)
	
i1l4589:	
	clrf	(_flagmin)
	bsf	status,0
	rlf	(_flagmin),f
	
i1l4591:	
	clrf	(_dado_rx)
	goto	i1l1852
	line	127
	
i1l4593:	
;Projeto_TI.c: 127: }
	goto	i1l1852
	line	66
	
i1l1855:	
	
i1l4595:	
	movf	(_dado_rx),w
	; Switch size 1, requested type "space"
; Number of cases is 15, Range of values is 65 to 122
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           46    24 (average)
; direct_byte          126    10 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	65^0	; case 65
	skipnz
	goto	i1l4527
	xorlw	66^65	; case 66
	skipnz
	goto	i1l4533
	xorlw	67^66	; case 67
	skipnz
	goto	i1l4539
	xorlw	68^67	; case 68
	skipnz
	goto	i1l4545
	xorlw	69^68	; case 69
	skipnz
	goto	i1l4551
	xorlw	70^69	; case 70
	skipnz
	goto	i1l4557
	xorlw	71^70	; case 71
	skipnz
	goto	i1l4563
	xorlw	72^71	; case 72
	skipnz
	goto	i1l4569
	xorlw	73^72	; case 73
	skipnz
	goto	i1l4575
	xorlw	74^73	; case 74
	skipnz
	goto	i1l4581
	xorlw	75^74	; case 75
	skipnz
	goto	i1l4587
	xorlw	104^75	; case 104
	skipnz
	goto	i1l4517
	xorlw	114^104	; case 114
	skipnz
	goto	i1l4497
	xorlw	116^114	; case 116
	skipnz
	goto	i1l1859
	xorlw	122^116	; case 122
	skipnz
	goto	i1l1858
	goto	i1l1852
	opt asmopt_on

	line	127
	
i1l1857:	
	goto	i1l1852
	line	128
	
i1l1854:	
	
i1l1852:	
	line	129
;Projeto_TI.c: 128: }
;Projeto_TI.c: 129: RCIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(101/8),(101)&7
	line	130
	
i1l1850:	
	line	133
;Projeto_TI.c: 130: }
;Projeto_TI.c: 133: if(TMR1IF ==1 && TMR1IE ==1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(96/8),(96)&7
	goto	u302_21
	goto	u302_20
u302_21:
	goto	i1l1879
u302_20:
	
i1l4597:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1120/8)^080h,(1120)&7
	goto	u303_21
	goto	u303_20
u303_21:
	goto	i1l1879
u303_20:
	line	136
	
i1l4599:	
;Projeto_TI.c: 134: {
;Projeto_TI.c: 136: if(seg)
	btfss	(_seg/8),(_seg)&7
	goto	u304_21
	goto	u304_20
u304_21:
	goto	i1l4605
u304_20:
	line	138
	
i1l4601:	
;Projeto_TI.c: 137: {
;Projeto_TI.c: 138: sync('t',0);
	clrf	(?_sync)
	movlw	(074h)
	fcall	_sync
	line	139
	
i1l4603:	
;Projeto_TI.c: 139: flagstat=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_flagstat)
	bsf	status,0
	rlf	(_flagstat),f
	goto	i1l4605
	line	140
	
i1l1878:	
	line	141
	
i1l4605:	
;Projeto_TI.c: 140: }
;Projeto_TI.c: 141: seg=!seg;
	movlw	1<<((_seg)&7)
	xorwf	((_seg)/8),f
	line	142
	
i1l4607:	
;Projeto_TI.c: 142: TMR1+=3036;
	movlw	low(0BDCh)
	bcf	status, 5	;RP0=0, select bank0
	addwf	(14),f	;volatile
	skipnc
	incf	(14+1),f	;volatile
	movlw	high(0BDCh)
	addwf	(14+1),f	;volatile
	line	143
	
i1l4609:	
;Projeto_TI.c: 143: TMR1IF=0;
	bcf	(96/8),(96)&7
	goto	i1l1879
	line	144
	
i1l1877:	
	line	145
	
i1l1879:	
	movf	(??_serial+4),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	movf	(??_serial+3),w
	movwf	pclath
	movf	(??_serial+2),w
	movwf	fsr0
	swapf	(??_serial+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_serial
	__end_of_serial:
;; =============== function _serial ends ============

	signat	_serial,88
	global	_sync
psect	text336,local,class=CODE,delta=2
global __ptext336
__ptext336:

;; *************** function _sync *****************
;; Defined at:
;;		line 21 in file "C:\Users\Claudio\Desktop\TI\PIC\Projeto_TI.c"
;; Parameters:    Size  Location     Type
;;  mode            1    wreg     unsigned char 
;;  data            1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  mode            1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_serial
;; This function uses a non-reentrant model
;;
psect	text336
	file	"C:\Users\Claudio\Desktop\TI\PIC\Projeto_TI.c"
	line	21
	global	__size_of_sync
	__size_of_sync	equ	__end_of_sync-_sync
	
_sync:	
	opt	stack 1
; Regs used in _sync: [wreg]
;sync@mode stored from wreg
	movwf	(sync@mode)
	line	22
	
i1l4469:	
;Projeto_TI.c: 22: TXREG='f'; while(!TRMT);
	movlw	(066h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	goto	i1l1835
	
i1l1836:	
	
i1l1835:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1217/8)^080h,(1217)&7
	goto	u288_21
	goto	u288_20
u288_21:
	goto	i1l1835
u288_20:
	goto	i1l4471
	
i1l1837:	
	line	23
	
i1l4471:	
;Projeto_TI.c: 23: TXREG=mode; while(!TRMT);
	movf	(sync@mode),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	goto	i1l1838
	
i1l1839:	
	
i1l1838:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1217/8)^080h,(1217)&7
	goto	u289_21
	goto	u289_20
u289_21:
	goto	i1l1838
u289_20:
	goto	i1l4473
	
i1l1840:	
	line	24
	
i1l4473:	
;Projeto_TI.c: 24: TXREG=data; while(!TRMT);
	movf	(sync@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	goto	i1l1841
	
i1l1842:	
	
i1l1841:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1217/8)^080h,(1217)&7
	goto	u290_21
	goto	u290_20
u290_21:
	goto	i1l1841
u290_20:
	goto	i1l1844
	
i1l1843:	
	line	25
	
i1l1844:	
	return
	opt stack 0
GLOBAL	__end_of_sync
	__end_of_sync:
;; =============== function _sync ends ============

	signat	_sync,8312
psect	text337,local,class=CODE,delta=2
global __ptext337
__ptext337:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
