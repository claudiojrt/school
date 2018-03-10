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
# 21 "D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\Envia_Recebe.c"
	psect config,class=CONFIG,delta=2 ;#
# 21 "D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\Envia_Recebe.c"
	dw 0xFFFC & 0xFFF7 & 0xFFEF & 0xFFFF ;#
	FNCALL	_main,_T1_init
	FNCALL	_main,_T2_init
	FNCALL	_main,_init
	FNCALL	_main,_lcd_init
	FNCALL	_main,_printf
	FNCALL	_main,_set_bit
	FNCALL	_main,_set_bit2
	FNCALL	_main,_send
	FNCALL	_printf,_putch
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
	FNCALL	_send,_scode
	FNCALL	_send,_test_bit
	FNCALL	_send,_blank
	FNCALL	_send,_end_cycle
	FNCALL	_Write,_Enable
	FNCALL	_test_bit,_func_teste
	FNROOT	_main
	FNCALL	_interrupts,_reset_bit
	FNCALL	_interrupts,_reset_bit2
	FNCALL	intlevel1,_interrupts
	global	intlevel1
	FNROOT	intlevel1
	global	_byte_cont
	global	_cycle
	global	_dado_rx
	global	_dado_rx2
	global	_start_cont
	global	_dado_tx
	global	_bit_tx
	global	_byte_test
	global	_dado_sel
	global	_end_startcode
	global	_env
	global	_enviando
	global	_enviar
	global	_recebendo
	global	_recebeu_bit
	global	_start
	global	_testa
	global	_TMR1
psect	text641,local,class=CODE,delta=2
global __ptext641
__ptext641:
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
	global	_T1CON
_T1CON	set	16
	global	_T2CON
_T2CON	set	18
	global	_TMR2
_TMR2	set	17
	global	_INTF
_INTF	set	89
	global	_RA0
_RA0	set	40
	global	_RC6
_RC6	set	62
	global	_RC7
_RC7	set	63
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
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TMR1IE
_TMR1IE	set	1120
	global	_ANSEL
_ANSEL	set	286
	global	_ANSELH
_ANSELH	set	287
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
	
STR_2:	
	retlw	68	;'D'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	101	;'e'
	retlw	98	;'b'
	retlw	105	;'i'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	99	;'c'
	retlw	0
psect	strings
	
STR_1:	
	retlw	12
	retlw	0
psect	strings
	file	"Envia_Recebe.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bitbssCOMMON,class=COMMON,bit,space=1
global __pbitbssCOMMON
__pbitbssCOMMON:
_bit_tx:
       ds      1

_byte_test:
       ds      1

_dado_sel:
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

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_dado_tx:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_byte_cont:
       ds      1

_cycle:
       ds      1

_dado_rx:
       ds      1

_dado_rx2:
       ds      1

_start_cont:
       ds      1

; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
	clrf	((__pbitbssCOMMON/8)+1)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
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
	global	?_func_teste
?_func_teste:	; 0 bytes @ 0x0
	global	?_set_bit
?_set_bit:	; 0 bytes @ 0x0
	global	?_set_bit2
?_set_bit2:	; 0 bytes @ 0x0
	global	?_reset_bit
?_reset_bit:	; 0 bytes @ 0x0
	global	??_reset_bit
??_reset_bit:	; 0 bytes @ 0x0
	global	?_reset_bit2
?_reset_bit2:	; 0 bytes @ 0x0
	global	??_reset_bit2
??_reset_bit2:	; 0 bytes @ 0x0
	global	?_scode
?_scode:	; 0 bytes @ 0x0
	global	?_test_bit
?_test_bit:	; 0 bytes @ 0x0
	global	?_blank
?_blank:	; 0 bytes @ 0x0
	global	?_end_cycle
?_end_cycle:	; 0 bytes @ 0x0
	global	?_send
?_send:	; 0 bytes @ 0x0
	global	?_interrupts
?_interrupts:	; 0 bytes @ 0x0
	global	??_interrupts
??_interrupts:	; 0 bytes @ 0x0
	global	?_T1_init
?_T1_init:	; 0 bytes @ 0x0
	global	?_T2_init
?_T2_init:	; 0 bytes @ 0x0
	global	?_init
?_init:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	3
	global	??_Enable
??_Enable:	; 0 bytes @ 0x3
	global	??_Write
??_Write:	; 0 bytes @ 0x3
	global	??_func_teste
??_func_teste:	; 0 bytes @ 0x3
	global	??_set_bit
??_set_bit:	; 0 bytes @ 0x3
	global	??_set_bit2
??_set_bit2:	; 0 bytes @ 0x3
	global	??_scode
??_scode:	; 0 bytes @ 0x3
	global	??_test_bit
??_test_bit:	; 0 bytes @ 0x3
	global	??_blank
??_blank:	; 0 bytes @ 0x3
	global	??_end_cycle
??_end_cycle:	; 0 bytes @ 0x3
	global	??_T1_init
??_T1_init:	; 0 bytes @ 0x3
	global	??_T2_init
??_T2_init:	; 0 bytes @ 0x3
	global	??_init
??_init:	; 0 bytes @ 0x3
	ds	1
	global	??_send
??_send:	; 0 bytes @ 0x4
	global	Write@c
Write@c:	; 1 bytes @ 0x4
	ds	1
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x5
	global	??_Clear
??_Clear:	; 0 bytes @ 0x5
	global	lcd_goto@pos
lcd_goto@pos:	; 1 bytes @ 0x5
	ds	2
	global	??_lcd_putc
??_lcd_putc:	; 0 bytes @ 0x7
	global	lcd_putc@c
lcd_putc@c:	; 1 bytes @ 0x7
	ds	1
	global	??_printf
??_printf:	; 0 bytes @ 0x8
	global	??_putch
??_putch:	; 0 bytes @ 0x8
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x0
	global	putch@c
putch@c:	; 1 bytes @ 0x0
	ds	1
	global	?_printf
?_printf:	; 2 bytes @ 0x1
	ds	2
	global	printf@ap
printf@ap:	; 1 bytes @ 0x3
	ds	1
	global	printf@f
printf@f:	; 1 bytes @ 0x4
	ds	1
	global	printf@c
printf@c:	; 1 bytes @ 0x5
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x6
	ds	2
;;Data sizes: Strings 20, constant 0, data 0, bss 6, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8      11
;; BANK0           80      8      13
;; BANK1           80      0       0
;; BANK2           80      0       0

;;
;; Pointer list with targets:

;; printf@f	PTR const unsigned char  size(1) Largest target is 18
;;		 -> STR_2(CODE[18]), STR_1(CODE[2]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_printf(BANK0[2]), 
;;
;; S1650$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _putch->_lcd_putc
;;   _lcd_init->_Clear
;;   _lcd_putc->_Clear
;;   _lcd_goto->_Write
;;   _Clear->_Write
;;   _send->_scode
;;   _send->_test_bit
;;
;; Critical Paths under _interrupts in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_printf
;;   _printf->_putch
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
;; (0) _main                                                 2     2      0     914
;;                                              6 BANK0      2     2      0
;;                            _T1_init
;;                            _T2_init
;;                               _init
;;                           _lcd_init
;;                             _printf
;;                            _set_bit
;;                           _set_bit2
;;                               _send
;; ---------------------------------------------------------------------------------
;; (1) _printf                                              11     9      2     790
;;                                              1 BANK0      5     3      2
;;                              _putch
;; ---------------------------------------------------------------------------------
;; (2) _putch                                                1     1      0     589
;;                                              0 BANK0      1     1      0
;;                           _lcd_putc
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             2     2      0     124
;;                                              0 BANK0      2     2      0
;;                             _Enable
;;                              _Write
;;                              _Clear
;; ---------------------------------------------------------------------------------
;; (3) _lcd_putc                                             1     1      0     558
;;                                              7 COMMON     1     1      0
;;                              _Clear
;;                           _lcd_goto
;;                              _Write
;;                           _lcd_putc
;; ---------------------------------------------------------------------------------
;; (4) _lcd_goto                                             1     1      0      93
;;                                              5 COMMON     1     1      0
;;                              _Write
;; ---------------------------------------------------------------------------------
;; (4) _Clear                                                2     2      0      62
;;                                              5 COMMON     2     2      0
;;                              _Write
;; ---------------------------------------------------------------------------------
;; (1) _send                                                 1     1      0       0
;;                                              4 COMMON     1     1      0
;;                              _scode
;;                           _test_bit
;;                              _blank
;;                          _end_cycle
;; ---------------------------------------------------------------------------------
;; (4) _Write                                                2     2      0      62
;;                                              3 COMMON     2     2      0
;;                             _Enable
;; ---------------------------------------------------------------------------------
;; (2) _test_bit                                             1     1      0       0
;;                                              3 COMMON     1     1      0
;;                         _func_teste
;; ---------------------------------------------------------------------------------
;; (2) _scode                                                1     1      0       0
;;                                              3 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (5) _Enable                                               0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _init                                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _T2_init                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _T1_init                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _end_cycle                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _blank                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _set_bit2                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _set_bit                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _func_teste                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (7) _interrupts                                           3     3      0       0
;;                                              0 COMMON     3     3      0
;;                          _reset_bit
;;                         _reset_bit2
;; ---------------------------------------------------------------------------------
;; (8) _reset_bit2                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; (8) _reset_bit                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 8
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _T1_init
;;   _T2_init
;;   _init
;;   _lcd_init
;;     _Enable
;;     _Write
;;       _Enable
;;     _Clear
;;       _Write
;;         _Enable
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
;;   _set_bit
;;   _set_bit2
;;   _send
;;     _scode
;;     _test_bit
;;       _func_teste
;;     _blank
;;     _end_cycle
;;
;; _interrupts (ROOT)
;;   _reset_bit
;;   _reset_bit2
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       2       0       14.3%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      8       B       1       78.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       B       2        0.0%
;;BANK0               50      8       D       3       16.3%
;;BITBANK1            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK1               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK2            50      0       0       6        0.0%
;;BANK2               50      0       0       7        0.0%
;;ABS                  0      0      18       8        0.0%
;;BITBANK0            50      0       0       9        0.0%
;;DATA                 0      0      23      10        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 242 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\Envia_Recebe.c"
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
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_T1_init
;;		_T2_init
;;		_init
;;		_lcd_init
;;		_printf
;;		_set_bit
;;		_set_bit2
;;		_send
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\Envia_Recebe.c"
	line	242
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	243
	
l3656:	
;Envia_Recebe.c: 243: OSCCON=0b01110000;
	movlw	(070h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(143)^080h	;volatile
	line	244
	
l3658:	
;Envia_Recebe.c: 244: ANSEL=0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(286)^0100h	;volatile
	line	245
	
l3660:	
;Envia_Recebe.c: 245: ANSELH=0;
	clrf	(287)^0100h	;volatile
	line	246
;Envia_Recebe.c: 246: TRISA=0b00000101;
	movlw	(05h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	247
	
l3662:	
;Envia_Recebe.c: 247: TRISB=0;
	clrf	(134)^080h	;volatile
	line	248
	
l3664:	
;Envia_Recebe.c: 248: TRISC=0;
	clrf	(135)^080h	;volatile
	line	249
	
l3666:	
;Envia_Recebe.c: 249: PORTA=PORTB=PORTC=0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(7)	;volatile
	clrf	(6)	;volatile
	clrf	(5)	;volatile
	line	250
	
l3668:	
;Envia_Recebe.c: 250: INTCON=0b11010000;
	movlw	(0D0h)
	movwf	(11)	;volatile
	line	251
	
l3670:	
;Envia_Recebe.c: 251: T1_init();
	fcall	_T1_init
	line	252
	
l3672:	
;Envia_Recebe.c: 252: T2_init();
	fcall	_T2_init
	line	253
	
l3674:	
;Envia_Recebe.c: 253: init();
	fcall	_init
	line	254
	
l3676:	
;Envia_Recebe.c: 254: lcd_init();
	fcall	_lcd_init
	line	255
	
l3678:	
;Envia_Recebe.c: 255: _delay((unsigned long)((5)*(4000000/4000.0)));
	opt asmopt_off
movlw	7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u1107:
	decfsz	((??_main+0)+0),f
	goto	u1107
	decfsz	((??_main+0)+0+1),f
	goto	u1107
opt asmopt_on

	line	256
	
l3680:	
;Envia_Recebe.c: 256: printf("\f");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_printf
	line	263
	
l3682:	
;Envia_Recebe.c: 263: if(testa){
	btfss	(_testa/8),(_testa)&7
	goto	u951
	goto	u950
u951:
	goto	l1066
u950:
	line	264
	
l3684:	
;Envia_Recebe.c: 264: if(!start){
	btfsc	(_start/8),(_start)&7
	goto	u961
	goto	u960
u961:
	goto	l1067
u960:
	line	265
	
l3686:	
;Envia_Recebe.c: 265: if(RA0 && recebeu_bit==0){
	btfss	(40/8),(40)&7
	goto	u971
	goto	u970
u971:
	goto	l1066
u970:
	
l3688:	
	btfsc	(_recebeu_bit/8),(_recebeu_bit)&7
	goto	u981
	goto	u980
u981:
	goto	l1066
u980:
	line	266
	
l3690:	
;Envia_Recebe.c: 266: recebeu_bit=1;
	bsf	(_recebeu_bit/8),(_recebeu_bit)&7
	line	267
;Envia_Recebe.c: 267: recebendo=1;
	bsf	(_recebendo/8),(_recebendo)&7
	line	268
;Envia_Recebe.c: 268: switch(start_cont){
	goto	l3704
	line	269
;Envia_Recebe.c: 269: case 0: start_cont=1; break;
	
l1070:	
	clrf	(_start_cont)
	incf	(_start_cont),f
	goto	l1066
	line	270
	
l3692:	
	movlw	(02h)
	movwf	(_start_cont)
	goto	l1066
	line	271
	
l3694:	
	movlw	(03h)
	movwf	(_start_cont)
	goto	l1066
	line	272
	
l3696:	
	clrf	(_start_cont)
	
l3698:	
	bsf	(_start/8),(_start)&7
	line	273
	
l3700:	
;Envia_Recebe.c: 273: end_startcode=1; break;
	bsf	(_end_startcode/8),(_end_startcode)&7
	goto	l1066
	line	268
	
l3704:	
	movf	(_start_cont),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           15     7 (fixed)
; jumptable            260     6 (fixed)
; rangetable             8     6 (fixed)
; spacedrange           14     9 (fixed)
; locatedrange           4     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l1070
	xorlw	1^0	; case 1
	skipnz
	goto	l3692
	xorlw	2^1	; case 2
	skipnz
	goto	l3694
	xorlw	3^2	; case 3
	skipnz
	goto	l3696
	goto	l1066
	opt asmopt_on

	line	277
	
l1067:	
	line	278
;Envia_Recebe.c: 277: else{
;Envia_Recebe.c: 278: if(dado_sel==0){
	btfsc	(_dado_sel/8),(_dado_sel)&7
	goto	u991
	goto	u990
u991:
	goto	l1076
u990:
	line	279
	
l3706:	
;Envia_Recebe.c: 279: if(RA0 && recebeu_bit==0){
	btfss	(40/8),(40)&7
	goto	u1001
	goto	u1000
u1001:
	goto	l1066
u1000:
	
l3708:	
	btfsc	(_recebeu_bit/8),(_recebeu_bit)&7
	goto	u1011
	goto	u1010
u1011:
	goto	l1066
u1010:
	line	280
	
l3710:	
;Envia_Recebe.c: 280: recebeu_bit=1;
	bsf	(_recebeu_bit/8),(_recebeu_bit)&7
	line	281
;Envia_Recebe.c: 281: switch(byte_cont){
	goto	l3738
	line	282
	
l3712:	
	fcall	_set_bit
	goto	l1066
	line	290
	
l3726:	
;Envia_Recebe.c: 290: byte_cont=0;
	clrf	(_byte_cont)
	line	291
	
l3728:	
;Envia_Recebe.c: 291: recebendo=0;
	bcf	(_recebendo/8),(_recebendo)&7
	line	292
	
l3730:	
;Envia_Recebe.c: 292: dado_sel=1;
	bsf	(_dado_sel/8),(_dado_sel)&7
	line	293
	
l3732:	
;Envia_Recebe.c: 293: dado_rx++;
	incf	(_dado_rx),f
	line	294
	
l3734:	
;Envia_Recebe.c: 294: start=0;
	bcf	(_start/8),(_start)&7
	line	295
;Envia_Recebe.c: 295: break;
	goto	l1066
	line	281
	
l3738:	
	movf	(_byte_cont),w
	; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 0 to 7
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           23     7 (fixed)
; simple_byte           25    13 (average)
; jumptable            260     6 (fixed)
; rangetable            12     6 (fixed)
; spacedrange           22     9 (fixed)
; locatedrange           8     3 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	8
	subwf	fsr,w
skipnc
goto l1066
movlw high(S3928)
movwf pclath
	clrc
	rlf fsr,w
	addlw low(S3928)
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S3928:
	ljmp	l3712
	ljmp	l3712
	ljmp	l3712
	ljmp	l3712
	ljmp	l3712
	ljmp	l3712
	ljmp	l3712
	ljmp	l3726
psect	maintext

	line	299
	
l1076:	
	line	300
;Envia_Recebe.c: 299: else{
;Envia_Recebe.c: 300: if(RA0 && recebeu_bit==0){
	btfss	(40/8),(40)&7
	goto	u1021
	goto	u1020
u1021:
	goto	l1066
u1020:
	
l3740:	
	btfsc	(_recebeu_bit/8),(_recebeu_bit)&7
	goto	u1031
	goto	u1030
u1031:
	goto	l1066
u1030:
	line	301
	
l3742:	
;Envia_Recebe.c: 301: recebeu_bit=1;
	bsf	(_recebeu_bit/8),(_recebeu_bit)&7
	line	302
;Envia_Recebe.c: 302: switch(byte_cont){
	goto	l3772
	line	303
	
l3744:	
	fcall	_set_bit2
	goto	l1066
	line	311
	
l3758:	
;Envia_Recebe.c: 311: byte_cont=0;
	clrf	(_byte_cont)
	line	312
	
l3760:	
;Envia_Recebe.c: 312: recebendo=0;
	bcf	(_recebendo/8),(_recebendo)&7
	line	313
	
l3762:	
;Envia_Recebe.c: 313: dado_sel=0;
	bcf	(_dado_sel/8),(_dado_sel)&7
	line	314
	
l3764:	
;Envia_Recebe.c: 314: dado_rx2++;
	incf	(_dado_rx2),f
	line	315
	
l3766:	
;Envia_Recebe.c: 315: start=0;
	bcf	(_start/8),(_start)&7
	line	316
	
l3768:	
;Envia_Recebe.c: 316: byte_test=1;
	bsf	(_byte_test/8),(_byte_test)&7
	line	317
;Envia_Recebe.c: 317: break;
	goto	l1066
	line	302
	
l3772:	
	movf	(_byte_cont),w
	; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 0 to 7
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           23     7 (fixed)
; simple_byte           25    13 (average)
; jumptable            260     6 (fixed)
; rangetable            12     6 (fixed)
; spacedrange           22     9 (fixed)
; locatedrange           8     3 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	8
	subwf	fsr,w
skipnc
goto l1066
movlw high(S3930)
movwf pclath
	clrc
	rlf fsr,w
	addlw low(S3930)
	movwf pc
psect	swtext2,local,class=CONST,delta=2
global __pswtext2
__pswtext2:
S3930:
	ljmp	l3744
	ljmp	l3744
	ljmp	l3744
	ljmp	l3744
	ljmp	l3744
	ljmp	l3744
	ljmp	l3744
	ljmp	l3758
psect	maintext

	line	322
	
l1066:	
	line	323
;Envia_Recebe.c: 319: }
;Envia_Recebe.c: 320: }
;Envia_Recebe.c: 321: }
;Envia_Recebe.c: 322: }
;Envia_Recebe.c: 323: if(byte_test){
	btfss	(_byte_test/8),(_byte_test)&7
	goto	u1041
	goto	u1040
u1041:
	goto	l3786
u1040:
	line	324
	
l3774:	
;Envia_Recebe.c: 325: byte_done=1;
	movf	(_dado_rx),w
	xorwf	(_dado_rx2),w
	skipz
	goto	u1051
	goto	u1050
u1051:
	goto	l3782
u1050:
	line	326
	
l3776:	
;Envia_Recebe.c: 326: dado_rx2=0;
	clrf	(_dado_rx2)
	line	327
	
l3778:	
;Envia_Recebe.c: 327: printf("Dado recebido: %c",dado_rx);
	movf	(_dado_rx),w
	movwf	(?_printf)
	clrf	(?_printf+1)
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_printf
	line	328
	
l3780:	
;Envia_Recebe.c: 328: dado_rx=0;
	clrf	(_dado_rx)
	line	331
;Envia_Recebe.c: 331: }
	goto	l3784
	line	334
	
l3782:	
;Envia_Recebe.c: 334: dado_rx=dado_rx2=0;
	clrf	(_dado_rx2)
	clrf	(_dado_rx)
	line	336
	
l3784:	
;Envia_Recebe.c: 335: }
;Envia_Recebe.c: 336: byte_test=0;
	bcf	(_byte_test/8),(_byte_test)&7
	line	338
	
l3786:	
;Envia_Recebe.c: 337: }
;Envia_Recebe.c: 338: if(dado_tx && !recebendo){
	movf	(_dado_tx),w
	skipz
	goto	u1060
	goto	l1103
u1060:
	
l3788:	
	btfsc	(_recebendo/8),(_recebendo)&7
	goto	u1071
	goto	u1070
u1071:
	goto	l1103
u1070:
	line	339
	
l3790:	
;Envia_Recebe.c: 339: enviando=1;
	bsf	(_enviando/8),(_enviando)&7
	line	340
	
l1103:	
	line	341
;Envia_Recebe.c: 340: }
;Envia_Recebe.c: 341: if(enviando){
	btfss	(_enviando/8),(_enviando)&7
	goto	u1081
	goto	u1080
u1081:
	goto	l3682
u1080:
	line	342
	
l3792:	
;Envia_Recebe.c: 342: if(enviar){
	btfss	(_enviar/8),(_enviar)&7
	goto	u1091
	goto	u1090
u1091:
	goto	l3682
u1090:
	line	343
	
l3794:	
;Envia_Recebe.c: 343: send();
	fcall	_send
	goto	l3682
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	347
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_printf
psect	text642,local,class=CODE,delta=2
global __ptext642
__ptext642:

;; *************** function _printf *****************
;; Defined at:
;;		line 461 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_2(18), STR_1(2), 
;; Auto vars:     Size  Location     Type
;;  f               1    4[BANK0 ] PTR const unsigned char 
;;		 -> STR_2(18), STR_1(2), 
;;  _val            4    0        struct .
;;  c               1    5[BANK0 ] char 
;;  ap              1    3[BANK0 ] PTR void [1]
;;		 -> ?_printf(2), 
;;  flag            1    0        unsigned char 
;;  prec            1    0        char 
;; Return value:  Size  Location     Type
;;                  2    1[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       3       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_putch
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text642
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	461
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
;; using string table level
	opt	stack 1
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;printf@f stored from wreg
	line	537
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printf@f)
	
l3638:	
	movlw	(?_printf)&0ffh
	movwf	(printf@ap)
	line	540
	goto	l3654
	line	542
	
l3640:	
	movf	(printf@c),w
	xorlw	025h
	skipnz
	goto	u931
	goto	u930
u931:
	goto	l3652
u930:
	line	545
	
l3642:	
	movf	(printf@c),w
	fcall	_putch
	line	546
	goto	l3654
	line	802
	
l3644:	
	movf	(printf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(printf@c)
	
l3646:	
	incf	(printf@ap),f
	incf	(printf@ap),f
	line	812
	
l3648:	
	movf	(printf@c),w
	fcall	_putch
	line	813
	goto	l3654
	line	638
	
l3652:	
	movf	(printf@f),w
	incf	(printf@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 99
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte          207     7 (fixed)
; jumptable            260     6 (fixed)
; rangetable           104     6 (fixed)
; spacedrange          206     9 (fixed)
; locatedrange         100     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l1127
	xorlw	99^0	; case 99
	skipnz
	goto	l3644
	goto	l3648
	opt asmopt_on

	line	540
	
l3654:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printf@f),w
	incf	(printf@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)
	movf	((printf@c)),f
	skipz
	goto	u941
	goto	u940
u941:
	goto	l3640
u940:
	line	1533
	
l1127:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_putch
psect	text643,local,class=CODE,delta=2
global __ptext643
__ptext643:

;; *************** function _putch *****************
;; Defined at:
;;		line 107 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\LCD_Claudio.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    0[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_lcd_putc
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text643
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\LCD_Claudio.c"
	line	107
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 0
; Regs used in _putch: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;putch@c stored from wreg
	movwf	(putch@c)
	line	108
	
l3636:	
;LCD_Claudio.c: 108: lcd_putc(c);
	movf	(putch@c),w
	fcall	_lcd_putc
	line	109
	
l965:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_lcd_init
psect	text644,local,class=CODE,delta=2
global __ptext644
__ptext644:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 87 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\LCD_Claudio.c"
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Enable
;;		_Write
;;		_Clear
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text644
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\LCD_Claudio.c"
	line	87
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 2
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	88
	
l3604:	
;LCD_Claudio.c: 88: _delay((unsigned long)((15)*(4000000/4000.0)));
	opt asmopt_off
movlw	20
movwf	((??_lcd_init+0)+0+1),f
	movlw	121
movwf	((??_lcd_init+0)+0),f
u1117:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1117
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1117
	nop2
opt asmopt_on

	line	89
	
l3606:	
;LCD_Claudio.c: 89: PORTC&=0xF0;
	movlw	(0F0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(7),f	;volatile
	line	90
	
l3608:	
;LCD_Claudio.c: 90: PORTC|=0X03;
	movlw	(03h)
	iorwf	(7),f	;volatile
	line	91
	
l3610:	
;LCD_Claudio.c: 91: Enable();
	fcall	_Enable
	line	92
	
l3612:	
;LCD_Claudio.c: 92: _delay((unsigned long)((5)*(4000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_lcd_init+0)+0+1),f
	movlw	125
movwf	((??_lcd_init+0)+0),f
u1127:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1127
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1127
opt asmopt_on

	line	93
	
l3614:	
;LCD_Claudio.c: 93: PORTC&=0xF0;
	movlw	(0F0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(7),f	;volatile
	line	94
	
l3616:	
;LCD_Claudio.c: 94: PORTC|=0X03;
	movlw	(03h)
	iorwf	(7),f	;volatile
	line	95
;LCD_Claudio.c: 95: Enable();
	fcall	_Enable
	line	96
	
l3618:	
;LCD_Claudio.c: 96: _delay((unsigned long)((100)*(4000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_init+0)+0,f
u1137:
decfsz	(??_lcd_init+0)+0,f
	goto	u1137
opt asmopt_on

	line	97
	
l3620:	
;LCD_Claudio.c: 97: PORTC&=0xF0;
	movlw	(0F0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(7),f	;volatile
	line	98
	
l3622:	
;LCD_Claudio.c: 98: PORTC|=0X02;
	bsf	(7)+(1/8),(1)&7	;volatile
	line	99
	
l3624:	
;LCD_Claudio.c: 99: Enable();
	fcall	_Enable
	line	100
	
l3626:	
;LCD_Claudio.c: 100: _delay((unsigned long)((40)*(4000000/4000000.0)));
	opt asmopt_off
movlw	13
movwf	(??_lcd_init+0)+0,f
u1147:
decfsz	(??_lcd_init+0)+0,f
	goto	u1147
opt asmopt_on

	line	101
	
l3628:	
;LCD_Claudio.c: 101: Write(0x28);
	movlw	(028h)
	fcall	_Write
	line	102
	
l3630:	
;LCD_Claudio.c: 102: Write(0x0D);
	movlw	(0Dh)
	fcall	_Write
	line	103
	
l3632:	
;LCD_Claudio.c: 103: Write(0x06);
	movlw	(06h)
	fcall	_Write
	line	104
	
l3634:	
;LCD_Claudio.c: 104: Clear();
	fcall	_Clear
	line	105
	
l962:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_putc
psect	text645,local,class=CODE,delta=2
global __ptext645
__ptext645:

;; *************** function _lcd_putc *****************
;; Defined at:
;;		line 50 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\LCD_Claudio.c"
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
;;		_Clear
;;		_lcd_goto
;;		_Write
;;		_lcd_putc
;; This function is called by:
;;		_putch
;; This function uses a non-reentrant model
;;
psect	text645
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\LCD_Claudio.c"
	line	50
	global	__size_of_lcd_putc
	__size_of_lcd_putc	equ	__end_of_lcd_putc-_lcd_putc
	
_lcd_putc:	
	opt	stack 0
; Regs used in _lcd_putc: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_putc@c stored from wreg
	movwf	(lcd_putc@c)
	line	51
	
l3582:	
;LCD_Claudio.c: 51: switch (c){
	goto	l3602
	line	53
	
l3584:	
;LCD_Claudio.c: 53: Clear();
	fcall	_Clear
	line	54
;LCD_Claudio.c: 54: break;
	goto	l956
	line	56
	
l3586:	
;LCD_Claudio.c: 56: lcd_goto(0x40);
	movlw	(040h)
	fcall	_lcd_goto
	line	57
;LCD_Claudio.c: 57: break;
	goto	l956
	line	58
;LCD_Claudio.c: 58: case '\r':
	
l952:	
	line	59
;LCD_Claudio.c: 59: RC6 = 0;
	bcf	(62/8),(62)&7
	line	60
	
l3588:	
;LCD_Claudio.c: 60: Write(0x80);
	movlw	(080h)
	fcall	_Write
	line	61
;LCD_Claudio.c: 61: break;
	goto	l956
	line	62
;LCD_Claudio.c: 62: case '\b':
	
l953:	
	line	63
;LCD_Claudio.c: 63: RC6=0;
	bcf	(62/8),(62)&7
	line	64
	
l3590:	
;LCD_Claudio.c: 64: Write(0b0000010000);
	movlw	(010h)
	fcall	_Write
	line	65
	
l3592:	
;LCD_Claudio.c: 65: RC6=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(62/8),(62)&7
	line	66
;LCD_Claudio.c: 66: lcd_putc(32);
	movlw	(020h)
	fcall	_lcd_putc
	line	67
	
l3594:	
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
	goto	l956
	line	70
;LCD_Claudio.c: 70: case '\t':
	
l954:	
	line	71
;LCD_Claudio.c: 71: RC6=0;
	bcf	(62/8),(62)&7
	line	72
	
l3596:	
;LCD_Claudio.c: 72: Write(0b0000010100);
	movlw	(014h)
	fcall	_Write
	line	73
;LCD_Claudio.c: 73: Write(0b0000010100);
	movlw	(014h)
	fcall	_Write
	line	74
;LCD_Claudio.c: 74: break;
	goto	l956
	line	75
;LCD_Claudio.c: 75: default:
	
l955:	
	line	76
;LCD_Claudio.c: 76: RC6 = 1;
	bsf	(62/8),(62)&7
	line	77
	
l3598:	
;LCD_Claudio.c: 77: Write( c );
	movf	(lcd_putc@c),w
	fcall	_Write
	line	78
;LCD_Claudio.c: 78: break;
	goto	l956
	line	51
	
l3602:	
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
	goto	l953
	xorlw	9^8	; case 9
	skipnz
	goto	l954
	xorlw	10^9	; case 10
	skipnz
	goto	l3586
	xorlw	12^10	; case 12
	skipnz
	goto	l3584
	xorlw	13^12	; case 13
	skipnz
	goto	l952
	goto	l955
	opt asmopt_on

	line	80
	
l956:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putc
	__end_of_lcd_putc:
;; =============== function _lcd_putc ends ============

	signat	_lcd_putc,4216
	global	_lcd_goto
psect	text646,local,class=CODE,delta=2
global __ptext646
__ptext646:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 82 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\LCD_Claudio.c"
;; Parameters:    Size  Location     Type
;;  pos             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pos             1    5[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Write
;; This function is called by:
;;		_lcd_putc
;; This function uses a non-reentrant model
;;
psect	text646
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\LCD_Claudio.c"
	line	82
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 0
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@pos stored from wreg
	movwf	(lcd_goto@pos)
	line	83
	
l3578:	
;LCD_Claudio.c: 83: RC6 = 0;
	bcf	(62/8),(62)&7
	line	84
	
l3580:	
;LCD_Claudio.c: 84: Write(0x80+pos);
	movf	(lcd_goto@pos),w
	addlw	080h
	fcall	_Write
	line	85
	
l959:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_Clear
psect	text647,local,class=CODE,delta=2
global __ptext647
__ptext647:

;; *************** function _Clear *****************
;; Defined at:
;;		line 38 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\LCD_Claudio.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Write
;; This function is called by:
;;		_lcd_putc
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text647
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\LCD_Claudio.c"
	line	38
	global	__size_of_Clear
	__size_of_Clear	equ	__end_of_Clear-_Clear
	
_Clear:	
	opt	stack 0
; Regs used in _Clear: [wreg+status,2+status,0+pclath+cstack]
	line	39
	
l3572:	
;LCD_Claudio.c: 39: RC6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7
	line	40
	
l3574:	
;LCD_Claudio.c: 40: Write(0x01);
	movlw	(01h)
	fcall	_Write
	line	41
	
l3576:	
;LCD_Claudio.c: 41: _delay((unsigned long)((2)*(4000000/4000.0)));
	opt asmopt_off
movlw	3
movwf	((??_Clear+0)+0+1),f
	movlw	151
movwf	((??_Clear+0)+0),f
u1157:
	decfsz	((??_Clear+0)+0),f
	goto	u1157
	decfsz	((??_Clear+0)+0+1),f
	goto	u1157
	nop2
opt asmopt_on

	line	42
	
l939:	
	return
	opt stack 0
GLOBAL	__end_of_Clear
	__end_of_Clear:
;; =============== function _Clear ends ============

	signat	_Clear,88
	global	_send
psect	text648,local,class=CODE,delta=2
global __ptext648
__ptext648:

;; *************** function _send *****************
;; Defined at:
;;		line 128 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\Envia_Recebe.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_scode
;;		_test_bit
;;		_blank
;;		_end_cycle
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text648
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\Envia_Recebe.c"
	line	128
	global	__size_of_send
	__size_of_send	equ	__end_of_send-_send
	
_send:	
	opt	stack 3
; Regs used in _send: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	129
	
l3144:	
;Envia_Recebe.c: 129: switch(cycle){
	goto	l3196
	line	130
	
l3146:	
	fcall	_scode
	goto	l1004
	line	134
	
l3154:	
	movf	(_dado_tx),w
	movwf	(??_send+0)+0
	movlw	07h
u645:
	clrc
	rrf	(??_send+0)+0,f
	addlw	-1
	skipz
	goto	u645
	bcf	(_bit_tx/8),(_bit_tx)&7
	btfss	0+(??_send+0)+0,0
	goto	u655
	bsf	(_bit_tx/8),(_bit_tx)&7
u655:

	
l3156:	
	fcall	_test_bit
	goto	l1004
	line	135
	
l3158:	
	movf	(_dado_tx),w
	movwf	(??_send+0)+0
	movlw	06h
u665:
	clrc
	rrf	(??_send+0)+0,f
	addlw	-1
	skipz
	goto	u665
	bcf	(_bit_tx/8),(_bit_tx)&7
	btfss	0+(??_send+0)+0,0
	goto	u675
	bsf	(_bit_tx/8),(_bit_tx)&7
u675:

	goto	l3156
	line	136
	
l3162:	
	movf	(_dado_tx),w
	movwf	(??_send+0)+0
	movlw	05h
u685:
	clrc
	rrf	(??_send+0)+0,f
	addlw	-1
	skipz
	goto	u685
	bcf	(_bit_tx/8),(_bit_tx)&7
	btfss	0+(??_send+0)+0,0
	goto	u695
	bsf	(_bit_tx/8),(_bit_tx)&7
u695:

	goto	l3156
	line	137
	
l3166:	
	movf	(_dado_tx),w
	movwf	(??_send+0)+0
	movlw	04h
u705:
	clrc
	rrf	(??_send+0)+0,f
	addlw	-1
	skipz
	goto	u705
	bcf	(_bit_tx/8),(_bit_tx)&7
	btfss	0+(??_send+0)+0,0
	goto	u715
	bsf	(_bit_tx/8),(_bit_tx)&7
u715:

	goto	l3156
	line	138
	
l3170:	
	movf	(_dado_tx),w
	movwf	(??_send+0)+0
	clrc
	rrf	(??_send+0)+0,f
	clrc
	rrf	(??_send+0)+0,f
	clrc
	rrf	(??_send+0)+0,f
	bcf	(_bit_tx/8),(_bit_tx)&7
	btfss	0+(??_send+0)+0,0
	goto	u725
	bsf	(_bit_tx/8),(_bit_tx)&7
u725:

	goto	l3156
	line	139
	
l3174:	
	movf	(_dado_tx),w
	movwf	(??_send+0)+0
	clrc
	rrf	(??_send+0)+0,f
	clrc
	rrf	(??_send+0)+0,f
	bcf	(_bit_tx/8),(_bit_tx)&7
	btfss	0+(??_send+0)+0,0
	goto	u735
	bsf	(_bit_tx/8),(_bit_tx)&7
u735:

	goto	l3156
	line	140
	
l3178:	
	movf	(_dado_tx),w
	movwf	(??_send+0)+0
	clrc
	rrf	(??_send+0)+0,f
	bcf	(_bit_tx/8),(_bit_tx)&7
	btfss	0+(??_send+0)+0,0
	goto	u745
	bsf	(_bit_tx/8),(_bit_tx)&7
u745:

	goto	l3156
	line	141
;Envia_Recebe.c: 141: case 11: bit_tx=dado_tx; test_bit(); break;
	
l1015:	
	bcf	(_bit_tx/8),(_bit_tx)&7
	btfss	(_dado_tx),0
	goto	u755
	bsf	(_bit_tx/8),(_bit_tx)&7
u755:

	goto	l3156
	line	142
	
l3184:	
	fcall	_blank
	goto	l1004
	line	145
	
l3190:	
	fcall	_blank
	
l3192:	
	fcall	_end_cycle
	goto	l1004
	line	129
	
l3196:	
	movf	(_cycle),w
	; Switch size 1, requested type "space"
; Number of cases is 16, Range of values is 0 to 15
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           39     7 (fixed)
; simple_byte           49    25 (average)
; jumptable            260     6 (fixed)
; rangetable            20     6 (fixed)
; spacedrange           38     9 (fixed)
; locatedrange          16     3 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	16
	subwf	fsr,w
skipnc
goto l1004
movlw high(S3932)
movwf pclath
	clrc
	rlf fsr,w
	addlw low(S3932)
	movwf pc
psect	swtext3,local,class=CONST,delta=2
global __pswtext3
__pswtext3:
S3932:
	ljmp	l3146
	ljmp	l3146
	ljmp	l3146
	ljmp	l3146
	ljmp	l3154
	ljmp	l3158
	ljmp	l3162
	ljmp	l3166
	ljmp	l3170
	ljmp	l3174
	ljmp	l3178
	ljmp	l1015
	ljmp	l3184
	ljmp	l3184
	ljmp	l3184
	ljmp	l3190
psect	text648

	line	146
;Envia_Recebe.c: 147: already=1;
	
l1004:	
	line	148
;Envia_Recebe.c: 148: enviar=0;
	bcf	(_enviar/8),(_enviar)&7
	line	149
	
l1020:	
	return
	opt stack 0
GLOBAL	__end_of_send
	__end_of_send:
;; =============== function _send ends ============

	signat	_send,88
	global	_Write
psect	text649,local,class=CODE,delta=2
global __ptext649
__ptext649:

;; *************** function _Write *****************
;; Defined at:
;;		line 28 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\LCD_Claudio.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    4[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Enable
;; This function is called by:
;;		_Clear
;;		_lcd_putc
;;		_lcd_goto
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text649
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\LCD_Claudio.c"
	line	28
	global	__size_of_Write
	__size_of_Write	equ	__end_of_Write-_Write
	
_Write:	
	opt	stack 1
; Regs used in _Write: [wreg+status,2+status,0+pclath+cstack]
;Write@c stored from wreg
	movwf	(Write@c)
	line	29
	
l3560:	
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
	
l3562:	
;LCD_Claudio.c: 31: Enable();
	fcall	_Enable
	line	32
	
l3564:	
;LCD_Claudio.c: 32: PORTC&=0XF0;
	movlw	(0F0h)
	andwf	(7),f	;volatile
	line	33
	
l3566:	
;LCD_Claudio.c: 33: PORTC|=(c & 0X0F);
	movf	(Write@c),w
	andlw	0Fh
	iorwf	(7),f	;volatile
	line	34
	
l3568:	
;LCD_Claudio.c: 34: Enable();
	fcall	_Enable
	line	35
	
l3570:	
;LCD_Claudio.c: 35: _delay((unsigned long)((40)*(4000000/4000000.0)));
	opt asmopt_off
movlw	13
movwf	(??_Write+0)+0,f
u1167:
decfsz	(??_Write+0)+0,f
	goto	u1167
opt asmopt_on

	line	36
	
l936:	
	return
	opt stack 0
GLOBAL	__end_of_Write
	__end_of_Write:
;; =============== function _Write ends ============

	signat	_Write,4216
	global	_test_bit
psect	text650,local,class=CODE,delta=2
global __ptext650
__ptext650:

;; *************** function _test_bit *****************
;; Defined at:
;;		line 97 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\Envia_Recebe.c"
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
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_func_teste
;; This function is called by:
;;		_send
;; This function uses a non-reentrant model
;;
psect	text650
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\Envia_Recebe.c"
	line	97
	global	__size_of_test_bit
	__size_of_test_bit	equ	__end_of_test_bit-_test_bit
	
_test_bit:	
	opt	stack 3
; Regs used in _test_bit: [wreg+status,2+status,0+pclath+cstack]
	line	98
	
l3122:	
;Envia_Recebe.c: 98: if(bit_tx){
	btfss	(_bit_tx/8),(_bit_tx)&7
	goto	u631
	goto	u630
u631:
	goto	l3126
u630:
	line	99
	
l3124:	
;Envia_Recebe.c: 99: CCPR1L=10;
	movlw	(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	100
;Envia_Recebe.c: 100: }
	goto	l990
	line	102
	
l3126:	
;Envia_Recebe.c: 101: else{
;Envia_Recebe.c: 102: CCPR1L=20;
	movlw	(014h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	103
	
l990:	
	line	104
;Envia_Recebe.c: 103: }
;Envia_Recebe.c: 104: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_test_bit+0)+0,f
u1177:
	clrwdt
decfsz	(??_test_bit+0)+0,f
	goto	u1177
	nop2	;nop
	clrwdt
opt asmopt_on

	line	105
;Envia_Recebe.c: 105: CCPR1L=20;
	movlw	(014h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	106
	
l3128:	
;Envia_Recebe.c: 106: cycle++;
	incf	(_cycle),f
	line	107
	
l3130:	
;Envia_Recebe.c: 107: func_teste();
	fcall	_func_teste
	line	108
	
l991:	
	return
	opt stack 0
GLOBAL	__end_of_test_bit
	__end_of_test_bit:
;; =============== function _test_bit ends ============

	signat	_test_bit,88
	global	_scode
psect	text651,local,class=CODE,delta=2
global __ptext651
__ptext651:

;; *************** function _scode *****************
;; Defined at:
;;		line 90 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\Envia_Recebe.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_send
;; This function uses a non-reentrant model
;;
psect	text651
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\Envia_Recebe.c"
	line	90
	global	__size_of_scode
	__size_of_scode	equ	__end_of_scode-_scode
	
_scode:	
	opt	stack 4
; Regs used in _scode: [wreg+status,2+status,0]
	line	91
	
l3118:	
;Envia_Recebe.c: 91: CCPR1L=10;
	movlw	(0Ah)
	movwf	(21)	;volatile
	line	92
;Envia_Recebe.c: 92: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_scode+0)+0,f
u1187:
	clrwdt
decfsz	(??_scode+0)+0,f
	goto	u1187
	nop2	;nop
	clrwdt
opt asmopt_on

	line	93
;Envia_Recebe.c: 93: CCPR1L=20;
	movlw	(014h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	94
	
l3120:	
;Envia_Recebe.c: 94: cycle++;
	incf	(_cycle),f
	line	95
	
l986:	
	return
	opt stack 0
GLOBAL	__end_of_scode
	__end_of_scode:
;; =============== function _scode ends ============

	signat	_scode,88
	global	_Enable
psect	text652,local,class=CODE,delta=2
global __ptext652
__ptext652:

;; *************** function _Enable *****************
;; Defined at:
;;		line 22 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\LCD_Claudio.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Write
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text652
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\LCD_Claudio.c"
	line	22
	global	__size_of_Enable
	__size_of_Enable	equ	__end_of_Enable-_Enable
	
_Enable:	
	opt	stack 1
; Regs used in _Enable: []
	line	23
	
l3558:	
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
	
l933:	
	return
	opt stack 0
GLOBAL	__end_of_Enable
	__end_of_Enable:
;; =============== function _Enable ends ============

	signat	_Enable,88
	global	_init
psect	text653,local,class=CODE,delta=2
global __ptext653
__ptext653:

;; *************** function _init *****************
;; Defined at:
;;		line 228 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\Envia_Recebe.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
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
psect	text653
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\Envia_Recebe.c"
	line	228
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
	opt	stack 5
; Regs used in _init: []
	line	229
	
l3114:	
;Envia_Recebe.c: 230: byte_done=0;
	bcf	(_bit_tx/8),(_bit_tx)&7
	line	231
;Envia_Recebe.c: 231: dado_sel=0;
	bcf	(_dado_sel/8),(_dado_sel)&7
	line	232
;Envia_Recebe.c: 232: end_startcode=0;
	bcf	(_end_startcode/8),(_end_startcode)&7
	line	233
;Envia_Recebe.c: 233: env=0;
	bcf	(_env/8),(_env)&7
	line	234
;Envia_Recebe.c: 234: enviando=0;
	bcf	(_enviando/8),(_enviando)&7
	line	235
;Envia_Recebe.c: 235: recebendo=0;
	bcf	(_recebendo/8),(_recebendo)&7
	line	236
;Envia_Recebe.c: 236: recebeu_bit=0;
	bcf	(_recebeu_bit/8),(_recebeu_bit)&7
	line	237
;Envia_Recebe.c: 237: enviar=0;
	bcf	(_enviar/8),(_enviar)&7
	line	238
;Envia_Recebe.c: 238: start=0;
	bcf	(_start/8),(_start)&7
	line	239
;Envia_Recebe.c: 239: testa=0;
	bcf	(_testa/8),(_testa)&7
	line	240
	
l1062:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
;; =============== function _init ends ============

	signat	_init,88
	global	_T2_init
psect	text654,local,class=CODE,delta=2
global __ptext654
__ptext654:

;; *************** function _T2_init *****************
;; Defined at:
;;		line 219 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\Envia_Recebe.c"
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
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
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
psect	text654
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\Envia_Recebe.c"
	line	219
	global	__size_of_T2_init
	__size_of_T2_init	equ	__end_of_T2_init-_T2_init
	
_T2_init:	
	opt	stack 5
; Regs used in _T2_init: [wreg+status,2]
	line	220
	
l3104:	
;Envia_Recebe.c: 220: T2CON=0;
	clrf	(18)	;volatile
	line	221
;Envia_Recebe.c: 221: TMR2=0;
	clrf	(17)	;volatile
	line	222
	
l3106:	
;Envia_Recebe.c: 222: PR2=19;
	movlw	(013h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	223
	
l3108:	
;Envia_Recebe.c: 223: CCP1CON=0b00001111;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(23)	;volatile
	line	224
	
l3110:	
;Envia_Recebe.c: 224: CCPR1L=20;
	movlw	(014h)
	movwf	(21)	;volatile
	line	225
	
l3112:	
;Envia_Recebe.c: 225: TMR2ON=1;
	bsf	(146/8),(146)&7
	line	226
	
l1059:	
	return
	opt stack 0
GLOBAL	__end_of_T2_init
	__end_of_T2_init:
;; =============== function _T2_init ends ============

	signat	_T2_init,88
	global	_T1_init
psect	text655,local,class=CODE,delta=2
global __ptext655
__ptext655:

;; *************** function _T1_init *****************
;; Defined at:
;;		line 212 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\Envia_Recebe.c"
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
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
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
psect	text655
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\Envia_Recebe.c"
	line	212
	global	__size_of_T1_init
	__size_of_T1_init	equ	__end_of_T1_init-_T1_init
	
_T1_init:	
	opt	stack 5
; Regs used in _T1_init: [wreg]
	line	213
	
l3098:	
;Envia_Recebe.c: 213: T1CON=0b00110100;
	movlw	(034h)
	movwf	(16)	;volatile
	line	214
	
l3100:	
;Envia_Recebe.c: 214: TMR1IF=0;
	bcf	(96/8),(96)&7
	line	215
	
l3102:	
;Envia_Recebe.c: 215: TMR1IE=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	216
;Envia_Recebe.c: 216: TMR1=51536;
	movlw	low(0C950h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(14)	;volatile
	movlw	high(0C950h)
	movwf	((14))+1	;volatile
	line	217
	
l1056:	
	return
	opt stack 0
GLOBAL	__end_of_T1_init
	__end_of_T1_init:
;; =============== function _T1_init ends ============

	signat	_T1_init,88
	global	_end_cycle
psect	text656,local,class=CODE,delta=2
global __ptext656
__ptext656:

;; *************** function _end_cycle *****************
;; Defined at:
;;		line 115 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\Envia_Recebe.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
;;		_send
;; This function uses a non-reentrant model
;;
psect	text656
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\Envia_Recebe.c"
	line	115
	global	__size_of_end_cycle
	__size_of_end_cycle	equ	__end_of_end_cycle-_end_cycle
	
_end_cycle:	
	opt	stack 4
; Regs used in _end_cycle: [status,2]
	line	116
	
l2986:	
;Envia_Recebe.c: 116: if(!env){
	btfsc	(_env/8),(_env)&7
	goto	u471
	goto	u470
u471:
	goto	l997
u470:
	line	117
	
l2988:	
;Envia_Recebe.c: 117: env=1;
	bsf	(_env/8),(_env)&7
	line	118
;Envia_Recebe.c: 118: }
	goto	l998
	line	119
	
l997:	
	line	120
;Envia_Recebe.c: 119: else{
;Envia_Recebe.c: 120: env=0;
	bcf	(_env/8),(_env)&7
	line	121
;Envia_Recebe.c: 121: enviando=0;
	bcf	(_enviando/8),(_enviando)&7
	line	122
;Envia_Recebe.c: 122: bit_tx=0;
	bcf	(_bit_tx/8),(_bit_tx)&7
	line	123
	
l2990:	
;Envia_Recebe.c: 123: dado_tx=0;
	clrf	(_dado_tx)
	line	124
	
l998:	
	line	125
;Envia_Recebe.c: 124: }
;Envia_Recebe.c: 125: cycle=0;
	clrf	(_cycle)
	line	126
	
l999:	
	return
	opt stack 0
GLOBAL	__end_of_end_cycle
	__end_of_end_cycle:
;; =============== function _end_cycle ends ============

	signat	_end_cycle,88
	global	_blank
psect	text657,local,class=CODE,delta=2
global __ptext657
__ptext657:

;; *************** function _blank *****************
;; Defined at:
;;		line 110 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\Envia_Recebe.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_send
;; This function uses a non-reentrant model
;;
psect	text657
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\Envia_Recebe.c"
	line	110
	global	__size_of_blank
	__size_of_blank	equ	__end_of_blank-_blank
	
_blank:	
	opt	stack 4
; Regs used in _blank: [wreg+status,2+status,0]
	line	111
	
l2982:	
;Envia_Recebe.c: 111: CCPR1L=20;
	movlw	(014h)
	movwf	(21)	;volatile
	line	112
	
l2984:	
;Envia_Recebe.c: 112: cycle++;
	incf	(_cycle),f
	line	113
	
l994:	
	return
	opt stack 0
GLOBAL	__end_of_blank
	__end_of_blank:
;; =============== function _blank ends ============

	signat	_blank,88
	global	_set_bit2
psect	text658,local,class=CODE,delta=2
global __ptext658
__ptext658:

;; *************** function _set_bit2 *****************
;; Defined at:
;;		line 74 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\Envia_Recebe.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
psect	text658
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\Envia_Recebe.c"
	line	74
	global	__size_of_set_bit2
	__size_of_set_bit2	equ	__end_of_set_bit2-_set_bit2
	
_set_bit2:	
	opt	stack 5
; Regs used in _set_bit2: [status]
	line	75
	
l2970:	
;Envia_Recebe.c: 75: byte_cont++;
	incf	(_byte_cont),f
	line	76
;Envia_Recebe.c: 76: dado_rx2++;
	incf	(_dado_rx2),f
	line	77
	
l2972:	
;Envia_Recebe.c: 77: dado_rx2=dado_rx2<<1;
	clrc
	rlf	(_dado_rx2),f
	line	78
	
l977:	
	return
	opt stack 0
GLOBAL	__end_of_set_bit2
	__end_of_set_bit2:
;; =============== function _set_bit2 ends ============

	signat	_set_bit2,88
	global	_set_bit
psect	text659,local,class=CODE,delta=2
global __ptext659
__ptext659:

;; *************** function _set_bit *****************
;; Defined at:
;;		line 68 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\Envia_Recebe.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
psect	text659
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\Envia_Recebe.c"
	line	68
	global	__size_of_set_bit
	__size_of_set_bit	equ	__end_of_set_bit-_set_bit
	
_set_bit:	
	opt	stack 5
; Regs used in _set_bit: [status]
	line	69
	
l2966:	
;Envia_Recebe.c: 69: byte_cont++;
	incf	(_byte_cont),f
	line	70
;Envia_Recebe.c: 70: dado_rx++;
	incf	(_dado_rx),f
	line	71
	
l2968:	
;Envia_Recebe.c: 71: dado_rx=dado_rx<<1;
	clrc
	rlf	(_dado_rx),f
	line	72
	
l974:	
	return
	opt stack 0
GLOBAL	__end_of_set_bit
	__end_of_set_bit:
;; =============== function _set_bit ends ============

	signat	_set_bit,88
	global	_func_teste
psect	text660,local,class=CODE,delta=2
global __ptext660
__ptext660:

;; *************** function _func_teste *****************
;; Defined at:
;;		line 54 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\Envia_Recebe.c"
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
;;		Unchanged: FFFFFF9F/0
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
;;		_test_bit
;; This function uses a non-reentrant model
;;
psect	text660
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\Envia_Recebe.c"
	line	54
	global	__size_of_func_teste
	__size_of_func_teste	equ	__end_of_func_teste-_func_teste
	
_func_teste:	
	opt	stack 3
; Regs used in _func_teste: []
	line	57
	
l968:	
	return
	opt stack 0
GLOBAL	__end_of_func_teste
	__end_of_func_teste:
;; =============== function _func_teste ends ============

	signat	_func_teste,88
	global	_interrupts
psect	text661,local,class=CODE,delta=2
global __ptext661
__ptext661:

;; *************** function _interrupts *****************
;; Defined at:
;;		line 151 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\Envia_Recebe.c"
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
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          3       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_reset_bit
;;		_reset_bit2
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text661
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\Envia_Recebe.c"
	line	151
	global	__size_of_interrupts
	__size_of_interrupts	equ	__end_of_interrupts-_interrupts
	
_interrupts:	
	opt	stack 0
; Regs used in _interrupts: [wreg-fsr0h+status,2+status,0+pclath+cstack]
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
	ljmp	_interrupts
psect	text661
	line	152
	
i1l2992:	
;Envia_Recebe.c: 152: if(INTF){
	btfss	(89/8),(89)&7
	goto	u48_21
	goto	u48_20
u48_21:
	goto	i1l1023
u48_20:
	line	153
	
i1l2994:	
;Envia_Recebe.c: 153: if(!enviando){
	btfsc	(_enviando/8),(_enviando)&7
	goto	u49_21
	goto	u49_20
u49_21:
	goto	i1l2998
u49_20:
	line	154
	
i1l2996:	
;Envia_Recebe.c: 154: TMR1ON=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(128/8),(128)&7
	line	155
;Envia_Recebe.c: 155: testa=1;
	bsf	(_testa/8),(_testa)&7
	line	156
;Envia_Recebe.c: 156: }
	goto	i1l1025
	line	157
	
i1l2998:	
;Envia_Recebe.c: 157: else if(dado_tx && !recebendo){
	movf	(_dado_tx),w
	skipz
	goto	u50_20
	goto	i1l1025
u50_20:
	
i1l3000:	
	btfsc	(_recebendo/8),(_recebendo)&7
	goto	u51_21
	goto	u51_20
u51_21:
	goto	i1l1025
u51_20:
	line	158
	
i1l3002:	
;Envia_Recebe.c: 159: already=0;
	bsf	(_enviar/8),(_enviar)&7
	line	161
	
i1l1025:	
;Envia_Recebe.c: 160: }
;Envia_Recebe.c: 161: INTF=0;
	bcf	(89/8),(89)&7
	line	162
	
i1l1023:	
	line	163
;Envia_Recebe.c: 162: }
;Envia_Recebe.c: 163: if(TMR1IF){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7
	goto	u52_21
	goto	u52_20
u52_21:
	goto	i1l1053
u52_20:
	line	164
	
i1l3004:	
;Envia_Recebe.c: 164: TMR1ON=0;
	bcf	(128/8),(128)&7
	line	165
	
i1l3006:	
;Envia_Recebe.c: 165: TMR1=51536;
	movlw	low(0C950h)
	movwf	(14)	;volatile
	movlw	high(0C950h)
	movwf	((14))+1	;volatile
	line	166
	
i1l3008:	
;Envia_Recebe.c: 166: TMR1IF=0;
	bcf	(96/8),(96)&7
	line	167
	
i1l3010:	
;Envia_Recebe.c: 167: testa=0;
	bcf	(_testa/8),(_testa)&7
	line	168
	
i1l3012:	
;Envia_Recebe.c: 168: if(!start && !recebeu_bit){
	btfsc	(_start/8),(_start)&7
	goto	u53_21
	goto	u53_20
u53_21:
	goto	i1l1028
u53_20:
	
i1l3014:	
	btfsc	(_recebeu_bit/8),(_recebeu_bit)&7
	goto	u54_21
	goto	u54_20
u54_21:
	goto	i1l1028
u54_20:
	line	169
	
i1l3016:	
;Envia_Recebe.c: 169: start_cont=0;
	clrf	(_start_cont)
	line	170
	
i1l3018:	
;Envia_Recebe.c: 170: recebendo=0;
	bcf	(_recebendo/8),(_recebendo)&7
	line	171
;Envia_Recebe.c: 171: }
	goto	i1l1029
	line	172
	
i1l1028:	
;Envia_Recebe.c: 172: else if(start && !recebeu_bit && !dado_sel && !end_startcode){
	btfss	(_start/8),(_start)&7
	goto	u55_21
	goto	u55_20
u55_21:
	goto	i1l1030
u55_20:
	
i1l3020:	
	btfsc	(_recebeu_bit/8),(_recebeu_bit)&7
	goto	u56_21
	goto	u56_20
u56_21:
	goto	i1l1030
u56_20:
	
i1l3022:	
	btfsc	(_dado_sel/8),(_dado_sel)&7
	goto	u57_21
	goto	u57_20
u57_21:
	goto	i1l1030
u57_20:
	
i1l3024:	
	btfsc	(_end_startcode/8),(_end_startcode)&7
	goto	u58_21
	goto	u58_20
u58_21:
	goto	i1l1030
u58_20:
	goto	i1l3052
	line	174
	
i1l3028:	
	fcall	_reset_bit
	goto	i1l1029
	line	182
	
i1l3042:	
;Envia_Recebe.c: 182: byte_cont=0;
	clrf	(_byte_cont)
	line	183
	
i1l3044:	
;Envia_Recebe.c: 183: recebendo=0;
	bcf	(_recebendo/8),(_recebendo)&7
	line	184
	
i1l3046:	
;Envia_Recebe.c: 184: dado_sel=1;
	bsf	(_dado_sel/8),(_dado_sel)&7
	line	185
	
i1l3048:	
;Envia_Recebe.c: 185: start=0;
	bcf	(_start/8),(_start)&7
	line	186
;Envia_Recebe.c: 186: break;
	goto	i1l1029
	line	173
	
i1l3052:	
	movf	(_byte_cont),w
	; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 0 to 7
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           23     7 (fixed)
; simple_byte           25    13 (average)
; jumptable            260     6 (fixed)
; rangetable            12     6 (fixed)
; spacedrange           22     9 (fixed)
; locatedrange           8     3 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	8
	subwf	fsr,w
skipnc
goto i1l1029
movlw high(i1S3934)
movwf pclath
	clrc
	rlf fsr,w
	addlw low(i1S3934)
	movwf pc
psect	swtext4,local,class=CONST,delta=2
global __pswtext4
__pswtext4:
i1S3934:
	ljmp	i1l3028
	ljmp	i1l3028
	ljmp	i1l3028
	ljmp	i1l3028
	ljmp	i1l3028
	ljmp	i1l3028
	ljmp	i1l3028
	ljmp	i1l3042
psect	text661

	line	189
	
i1l1030:	
;Envia_Recebe.c: 189: else if(start && !recebeu_bit && dado_sel && !end_startcode){
	btfss	(_start/8),(_start)&7
	goto	u59_21
	goto	u59_20
u59_21:
	goto	i1l1029
u59_20:
	
i1l3054:	
	btfsc	(_recebeu_bit/8),(_recebeu_bit)&7
	goto	u60_21
	goto	u60_20
u60_21:
	goto	i1l1029
u60_20:
	
i1l3056:	
	btfss	(_dado_sel/8),(_dado_sel)&7
	goto	u61_21
	goto	u61_20
u61_21:
	goto	i1l1029
u61_20:
	
i1l3058:	
	btfsc	(_end_startcode/8),(_end_startcode)&7
	goto	u62_21
	goto	u62_20
u62_21:
	goto	i1l1029
u62_20:
	goto	i1l3088
	line	191
	
i1l3062:	
	fcall	_reset_bit2
	goto	i1l1029
	line	199
	
i1l3076:	
;Envia_Recebe.c: 199: byte_cont=0;
	clrf	(_byte_cont)
	line	200
	
i1l3078:	
;Envia_Recebe.c: 200: recebendo=0;
	bcf	(_recebendo/8),(_recebendo)&7
	line	201
	
i1l3080:	
;Envia_Recebe.c: 201: dado_sel=0;
	bcf	(_dado_sel/8),(_dado_sel)&7
	line	202
	
i1l3082:	
;Envia_Recebe.c: 202: start=0;
	bcf	(_start/8),(_start)&7
	line	203
	
i1l3084:	
;Envia_Recebe.c: 203: byte_test=1;
	bsf	(_byte_test/8),(_byte_test)&7
	line	204
;Envia_Recebe.c: 204: break;
	goto	i1l1029
	line	190
	
i1l3088:	
	movf	(_byte_cont),w
	; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 0 to 7
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           23     7 (fixed)
; simple_byte           25    13 (average)
; jumptable            260     6 (fixed)
; rangetable            12     6 (fixed)
; spacedrange           22     9 (fixed)
; locatedrange           8     3 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	8
	subwf	fsr,w
skipnc
goto i1l1029
movlw high(i1S3936)
movwf pclath
	clrc
	rlf fsr,w
	addlw low(i1S3936)
	movwf pc
psect	swtext5,local,class=CONST,delta=2
global __pswtext5
__pswtext5:
i1S3936:
	ljmp	i1l3062
	ljmp	i1l3062
	ljmp	i1l3062
	ljmp	i1l3062
	ljmp	i1l3062
	ljmp	i1l3062
	ljmp	i1l3062
	ljmp	i1l3076
psect	text661

	line	207
	
i1l1029:	
;Envia_Recebe.c: 206: }
;Envia_Recebe.c: 207: recebeu_bit=0;
	bcf	(_recebeu_bit/8),(_recebeu_bit)&7
	line	208
;Envia_Recebe.c: 208: end_startcode=0;
	bcf	(_end_startcode/8),(_end_startcode)&7
	line	210
	
i1l1053:	
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
	global	_reset_bit2
psect	text662,local,class=CODE,delta=2
global __ptext662
__ptext662:

;; *************** function _reset_bit2 *****************
;; Defined at:
;;		line 85 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\Envia_Recebe.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
;;		_interrupts
;; This function uses a non-reentrant model
;;
psect	text662
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\Envia_Recebe.c"
	line	85
	global	__size_of_reset_bit2
	__size_of_reset_bit2	equ	__end_of_reset_bit2-_reset_bit2
	
_reset_bit2:	
	opt	stack 0
; Regs used in _reset_bit2: [status]
	line	86
	
i1l2978:	
;Envia_Recebe.c: 86: byte_cont++;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_byte_cont),f
	line	87
	
i1l2980:	
;Envia_Recebe.c: 87: dado_rx2=dado_rx2<<1;
	clrc
	rlf	(_dado_rx2),f
	line	88
	
i1l983:	
	return
	opt stack 0
GLOBAL	__end_of_reset_bit2
	__end_of_reset_bit2:
;; =============== function _reset_bit2 ends ============

	signat	_reset_bit2,88
	global	_reset_bit
psect	text663,local,class=CODE,delta=2
global __ptext663
__ptext663:

;; *************** function _reset_bit *****************
;; Defined at:
;;		line 80 in file "D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\Envia_Recebe.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
;;		_interrupts
;; This function uses a non-reentrant model
;;
psect	text663
	file	"D:\Dropbox\TC - 2015\Pesquisas\PIC\Envio + Recebimento\Envia_Recebe.c"
	line	80
	global	__size_of_reset_bit
	__size_of_reset_bit	equ	__end_of_reset_bit-_reset_bit
	
_reset_bit:	
	opt	stack 0
; Regs used in _reset_bit: [status]
	line	81
	
i1l2974:	
;Envia_Recebe.c: 81: byte_cont++;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_byte_cont),f
	line	82
	
i1l2976:	
;Envia_Recebe.c: 82: dado_rx=dado_rx<<1;
	clrc
	rlf	(_dado_rx),f
	line	83
	
i1l980:	
	return
	opt stack 0
GLOBAL	__end_of_reset_bit
	__end_of_reset_bit:
;; =============== function _reset_bit ends ============

	signat	_reset_bit,88
psect	text664,local,class=CODE,delta=2
global __ptext664
__ptext664:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
