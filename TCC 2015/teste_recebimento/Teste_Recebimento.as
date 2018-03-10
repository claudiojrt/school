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
# 3 "D:\Dropbox\TC - 2015\PIC\Teste de recebimento\Teste_Recebimento.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "D:\Dropbox\TC - 2015\PIC\Teste de recebimento\Teste_Recebimento.c"
	dw 0xFFFC & 0xFFF7 & 0xFFEF & 0xFFFF ;#
	FNCALL	_main,_T1_init
	FNCALL	_main,_init
	FNROOT	_main
	FNCALL	intlevel1,_interrupts
	global	intlevel1
	FNROOT	intlevel1
	global	_byte_cont
	global	_dado_rx
	global	_dado_rx2
	global	_start_cont
	global	_byte_test
	global	_dado_sel
	global	_end_startcode
	global	_recebeu_bit
	global	_start
	global	_testa
	global	_TMR1
psect	text56,local,class=CODE,delta=2
global __ptext56
__ptext56:
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
	global	_INTF
_INTF	set	89
	global	_RA0
_RA0	set	40
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
	global	_TMR1IE
_TMR1IE	set	1120
	global	_ANSEL
_ANSEL	set	286
	global	_ANSELH
_ANSELH	set	287
	file	"Teste_Recebimento.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bitbssCOMMON,class=COMMON,bit,space=1
global __pbitbssCOMMON
__pbitbssCOMMON:
_byte_test:
       ds      1

_dado_sel:
       ds      1

_end_startcode:
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
_byte_cont:
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
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
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
	global	?_init
?_init:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	3
	global	??_T1_init
??_T1_init:	; 0 bytes @ 0x3
	global	??_init
??_init:	; 0 bytes @ 0x3
	global	??_main
??_main:	; 0 bytes @ 0x3
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 4, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5      10
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
;;                                              3 COMMON     2     2      0
;;                            _T1_init
;;                               _init
;; ---------------------------------------------------------------------------------
;; (1) _init                                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _T1_init                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (2) _interrupts                                           3     3      0       0
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _T1_init
;;   _init
;;
;; _interrupts (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       1       0        7.1%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      5       A       1       71.4%
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
;;		line 137 in file "D:\Dropbox\TC - 2015\PIC\Teste de recebimento\Teste_Recebimento.c"
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
;;      Temps:          2       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_T1_init
;;		_init
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Dropbox\TC - 2015\PIC\Teste de recebimento\Teste_Recebimento.c"
	line	137
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	138
	
l2340:	
;Teste_Recebimento.c: 138: OSCCON=0b01110000;
	movlw	(070h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(143)^080h	;volatile
	line	139
	
l2342:	
;Teste_Recebimento.c: 139: ANSEL=0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(286)^0100h	;volatile
	line	140
	
l2344:	
;Teste_Recebimento.c: 140: ANSELH=0;
	clrf	(287)^0100h	;volatile
	line	141
;Teste_Recebimento.c: 141: TRISA=0b00000101;
	movlw	(05h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	142
	
l2346:	
;Teste_Recebimento.c: 142: TRISB=0;
	clrf	(134)^080h	;volatile
	line	143
	
l2348:	
;Teste_Recebimento.c: 143: TRISC=0;
	clrf	(135)^080h	;volatile
	line	144
	
l2350:	
;Teste_Recebimento.c: 144: PORTA=PORTB=PORTC=0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(7)	;volatile
	clrf	(6)	;volatile
	clrf	(5)	;volatile
	line	145
	
l2352:	
;Teste_Recebimento.c: 145: INTCON=0b11010000;
	movlw	(0D0h)
	movwf	(11)	;volatile
	line	146
	
l2354:	
;Teste_Recebimento.c: 146: T1_init();
	fcall	_T1_init
	line	147
	
l2356:	
;Teste_Recebimento.c: 147: init();
	fcall	_init
	line	148
	
l2358:	
;Teste_Recebimento.c: 148: _delay((unsigned long)((5)*(8000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_main+0)+0+1),f
	movlw	251
movwf	((??_main+0)+0),f
u247:
	decfsz	((??_main+0)+0),f
	goto	u247
	decfsz	((??_main+0)+0+1),f
	goto	u247
	nop2
opt asmopt_on

	line	159
	
l2360:	
;Teste_Recebimento.c: 159: if(testa){
	btfss	(_testa/8),(_testa)&7
	goto	u131
	goto	u130
u131:
	goto	l950
u130:
	line	160
	
l2362:	
;Teste_Recebimento.c: 160: if(!start){
	btfsc	(_start/8),(_start)&7
	goto	u141
	goto	u140
u141:
	goto	l951
u140:
	line	161
	
l2364:	
;Teste_Recebimento.c: 161: if(RA0 && recebeu_bit==0){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u151
	goto	u150
u151:
	goto	l950
u150:
	
l2366:	
	btfsc	(_recebeu_bit/8),(_recebeu_bit)&7
	goto	u161
	goto	u160
u161:
	goto	l950
u160:
	line	162
	
l2368:	
;Teste_Recebimento.c: 163: recebendo=1;
	bsf	(_recebeu_bit/8),(_recebeu_bit)&7
	line	164
;Teste_Recebimento.c: 164: switch(start_cont){
	goto	l2382
	line	165
;Teste_Recebimento.c: 165: case 0: start_cont=1; break;
	
l954:	
	clrf	(_start_cont)
	incf	(_start_cont),f
	goto	l950
	line	166
	
l2370:	
	movlw	(02h)
	movwf	(_start_cont)
	goto	l950
	line	167
	
l2372:	
	movlw	(03h)
	movwf	(_start_cont)
	goto	l950
	line	168
	
l2374:	
	clrf	(_start_cont)
	
l2376:	
	bsf	(_start/8),(_start)&7
	line	169
	
l2378:	
;Teste_Recebimento.c: 169: end_startcode=1; break;
	bsf	(_end_startcode/8),(_end_startcode)&7
	goto	l950
	line	164
	
l2382:	
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
	goto	l954
	xorlw	1^0	; case 1
	skipnz
	goto	l2370
	xorlw	2^1	; case 2
	skipnz
	goto	l2372
	xorlw	3^2	; case 3
	skipnz
	goto	l2374
	goto	l950
	opt asmopt_on

	line	173
	
l951:	
	line	174
;Teste_Recebimento.c: 173: else{
;Teste_Recebimento.c: 174: if(dado_sel==0){
	btfsc	(_dado_sel/8),(_dado_sel)&7
	goto	u171
	goto	u170
u171:
	goto	l960
u170:
	line	175
	
l2384:	
;Teste_Recebimento.c: 175: if(RA0 && recebeu_bit==0){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u181
	goto	u180
u181:
	goto	l950
u180:
	
l2386:	
	btfsc	(_recebeu_bit/8),(_recebeu_bit)&7
	goto	u191
	goto	u190
u191:
	goto	l950
u190:
	line	176
	
l2388:	
;Teste_Recebimento.c: 176: recebeu_bit=1;
	bsf	(_recebeu_bit/8),(_recebeu_bit)&7
	line	177
;Teste_Recebimento.c: 177: switch(byte_cont){
	goto	l2440
	line	178
;Teste_Recebimento.c: 178: case 0:
	
l963:	
	line	179
;Teste_Recebimento.c: 179: byte_cont=1;
	clrf	(_byte_cont)
	incf	(_byte_cont),f
	line	180
	
l2390:	
;Teste_Recebimento.c: 180: dado_rx++;
	incf	(_dado_rx),f
	line	181
	
l2392:	
;Teste_Recebimento.c: 181: dado_rx=dado_rx<<1;
	clrc
	rlf	(_dado_rx),f
	line	182
;Teste_Recebimento.c: 182: break;
	goto	l950
	line	184
	
l2394:	
;Teste_Recebimento.c: 184: byte_cont=2;
	movlw	(02h)
	movwf	(_byte_cont)
	goto	l2390
	line	189
	
l2400:	
;Teste_Recebimento.c: 189: byte_cont=3;
	movlw	(03h)
	movwf	(_byte_cont)
	goto	l2390
	line	194
	
l2406:	
;Teste_Recebimento.c: 194: byte_cont=4;
	movlw	(04h)
	movwf	(_byte_cont)
	goto	l2390
	line	199
	
l2412:	
;Teste_Recebimento.c: 199: byte_cont=5;
	movlw	(05h)
	movwf	(_byte_cont)
	goto	l2390
	line	204
	
l2418:	
;Teste_Recebimento.c: 204: byte_cont=6;
	movlw	(06h)
	movwf	(_byte_cont)
	goto	l2390
	line	209
	
l2424:	
;Teste_Recebimento.c: 209: byte_cont=7;
	movlw	(07h)
	movwf	(_byte_cont)
	goto	l2390
	line	214
	
l2430:	
;Teste_Recebimento.c: 215: recebendo=0;
	clrf	(_byte_cont)
	line	216
	
l2432:	
;Teste_Recebimento.c: 216: dado_sel=1;
	bsf	(_dado_sel/8),(_dado_sel)&7
	line	217
	
l2434:	
;Teste_Recebimento.c: 217: dado_rx++;
	incf	(_dado_rx),f
	line	218
	
l2436:	
;Teste_Recebimento.c: 218: start=0;
	bcf	(_start/8),(_start)&7
	line	219
;Teste_Recebimento.c: 219: break;
	goto	l950
	line	177
	
l2440:	
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
goto l950
movlw high(S2664)
movwf pclath
	clrc
	rlf fsr,w
	addlw low(S2664)
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S2664:
	ljmp	l963
	ljmp	l2394
	ljmp	l2400
	ljmp	l2406
	ljmp	l2412
	ljmp	l2418
	ljmp	l2424
	ljmp	l2430
psect	maintext

	line	223
	
l960:	
	line	224
;Teste_Recebimento.c: 223: else{
;Teste_Recebimento.c: 224: if(RA0 && recebeu_bit==0){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u201
	goto	u200
u201:
	goto	l950
u200:
	
l2442:	
	btfsc	(_recebeu_bit/8),(_recebeu_bit)&7
	goto	u211
	goto	u210
u211:
	goto	l950
u210:
	line	225
	
l2444:	
;Teste_Recebimento.c: 225: recebeu_bit=1;
	bsf	(_recebeu_bit/8),(_recebeu_bit)&7
	line	226
;Teste_Recebimento.c: 226: switch(byte_cont){
	goto	l2498
	line	227
;Teste_Recebimento.c: 227: case 0:
	
l975:	
	line	228
;Teste_Recebimento.c: 228: byte_cont=1;
	clrf	(_byte_cont)
	incf	(_byte_cont),f
	line	229
	
l2446:	
;Teste_Recebimento.c: 229: dado_rx2++;
	incf	(_dado_rx2),f
	line	230
	
l2448:	
;Teste_Recebimento.c: 230: dado_rx2=dado_rx2<<1;
	clrc
	rlf	(_dado_rx2),f
	line	231
;Teste_Recebimento.c: 231: break;
	goto	l950
	line	233
	
l2450:	
;Teste_Recebimento.c: 233: byte_cont=2;
	movlw	(02h)
	movwf	(_byte_cont)
	goto	l2446
	line	238
	
l2456:	
;Teste_Recebimento.c: 238: byte_cont=3;
	movlw	(03h)
	movwf	(_byte_cont)
	goto	l2446
	line	243
	
l2462:	
;Teste_Recebimento.c: 243: byte_cont=4;
	movlw	(04h)
	movwf	(_byte_cont)
	goto	l2446
	line	248
	
l2468:	
;Teste_Recebimento.c: 248: byte_cont=5;
	movlw	(05h)
	movwf	(_byte_cont)
	goto	l2446
	line	253
	
l2474:	
;Teste_Recebimento.c: 253: byte_cont=6;
	movlw	(06h)
	movwf	(_byte_cont)
	goto	l2446
	line	258
	
l2480:	
;Teste_Recebimento.c: 258: byte_cont=7;
	movlw	(07h)
	movwf	(_byte_cont)
	goto	l2446
	line	263
	
l2486:	
;Teste_Recebimento.c: 264: recebendo=0;
	clrf	(_byte_cont)
	line	265
	
l2488:	
;Teste_Recebimento.c: 265: dado_sel=0;
	bcf	(_dado_sel/8),(_dado_sel)&7
	line	266
	
l2490:	
;Teste_Recebimento.c: 266: dado_rx2++;
	incf	(_dado_rx2),f
	line	267
	
l2492:	
;Teste_Recebimento.c: 267: start=0;
	bcf	(_start/8),(_start)&7
	line	268
	
l2494:	
;Teste_Recebimento.c: 268: byte_test=1;
	bsf	(_byte_test/8),(_byte_test)&7
	line	269
;Teste_Recebimento.c: 269: break;
	goto	l950
	line	226
	
l2498:	
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
goto l950
movlw high(S2666)
movwf pclath
	clrc
	rlf fsr,w
	addlw low(S2666)
	movwf pc
psect	swtext2,local,class=CONST,delta=2
global __pswtext2
__pswtext2:
S2666:
	ljmp	l975
	ljmp	l2450
	ljmp	l2456
	ljmp	l2462
	ljmp	l2468
	ljmp	l2474
	ljmp	l2480
	ljmp	l2486
psect	maintext

	line	274
	
l950:	
	line	275
;Teste_Recebimento.c: 271: }
;Teste_Recebimento.c: 272: }
;Teste_Recebimento.c: 273: }
;Teste_Recebimento.c: 274: }
;Teste_Recebimento.c: 275: if(byte_test){
	btfss	(_byte_test/8),(_byte_test)&7
	goto	u221
	goto	u220
u221:
	goto	l2360
u220:
	line	276
	
l2500:	
;Teste_Recebimento.c: 277: byte_done=1;
	movf	(_dado_rx),w
	xorwf	(_dado_rx2),w
	skipz
	goto	u231
	goto	u230
u231:
	goto	l2504
u230:
	line	278
	
l2502:	
;Teste_Recebimento.c: 278: dado_rx2=0;
	clrf	(_dado_rx2)
	line	282
;Teste_Recebimento.c: 282: }
	goto	l2506
	line	285
	
l2504:	
;Teste_Recebimento.c: 285: dado_rx=dado_rx2=0;
	clrf	(_dado_rx2)
	clrf	(_dado_rx)
	line	287
	
l2506:	
;Teste_Recebimento.c: 286: }
;Teste_Recebimento.c: 287: byte_test=0;
	bcf	(_byte_test/8),(_byte_test)&7
	goto	l2360
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	290
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_init
psect	text57,local,class=CODE,delta=2
global __ptext57
__ptext57:

;; *************** function _init *****************
;; Defined at:
;;		line 127 in file "D:\Dropbox\TC - 2015\PIC\Teste de recebimento\Teste_Recebimento.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text57
	file	"D:\Dropbox\TC - 2015\PIC\Teste de recebimento\Teste_Recebimento.c"
	line	127
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
	opt	stack 6
; Regs used in _init: []
	line	129
	
l2338:	
;Teste_Recebimento.c: 129: dado_sel=0;
	bcf	(_dado_sel/8),(_dado_sel)&7
	line	130
;Teste_Recebimento.c: 131: recebendo=0;
	bcf	(_end_startcode/8),(_end_startcode)&7
	line	132
;Teste_Recebimento.c: 132: recebeu_bit=0;
	bcf	(_recebeu_bit/8),(_recebeu_bit)&7
	line	133
;Teste_Recebimento.c: 133: start=0;
	bcf	(_start/8),(_start)&7
	line	134
;Teste_Recebimento.c: 134: testa=0;
	bcf	(_testa/8),(_testa)&7
	line	135
	
l946:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
;; =============== function _init ends ============

	signat	_init,88
	global	_T1_init
psect	text58,local,class=CODE,delta=2
global __ptext58
__ptext58:

;; *************** function _T1_init *****************
;; Defined at:
;;		line 120 in file "D:\Dropbox\TC - 2015\PIC\Teste de recebimento\Teste_Recebimento.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text58
	file	"D:\Dropbox\TC - 2015\PIC\Teste de recebimento\Teste_Recebimento.c"
	line	120
	global	__size_of_T1_init
	__size_of_T1_init	equ	__end_of_T1_init-_T1_init
	
_T1_init:	
	opt	stack 6
; Regs used in _T1_init: [wreg]
	line	121
	
l2332:	
;Teste_Recebimento.c: 121: T1CON=0b00110100;
	movlw	(034h)
	movwf	(16)	;volatile
	line	122
	
l2334:	
;Teste_Recebimento.c: 122: TMR1IF=0;
	bcf	(96/8),(96)&7
	line	123
	
l2336:	
;Teste_Recebimento.c: 123: TMR1IE=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	124
;Teste_Recebimento.c: 124: TMR1=51536;
	movlw	low(0C950h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(14)	;volatile
	movlw	high(0C950h)
	movwf	((14))+1	;volatile
	line	125
	
l943:	
	return
	opt stack 0
GLOBAL	__end_of_T1_init
	__end_of_T1_init:
;; =============== function _T1_init ends ============

	signat	_T1_init,88
	global	_interrupts
psect	text59,local,class=CODE,delta=2
global __ptext59
__ptext59:

;; *************** function _interrupts *****************
;; Defined at:
;;		line 23 in file "D:\Dropbox\TC - 2015\PIC\Teste de recebimento\Teste_Recebimento.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text59
	file	"D:\Dropbox\TC - 2015\PIC\Teste de recebimento\Teste_Recebimento.c"
	line	23
	global	__size_of_interrupts
	__size_of_interrupts	equ	__end_of_interrupts-_interrupts
	
_interrupts:	
	opt	stack 6
; Regs used in _interrupts: [wreg-fsr0h+status,2+status,0]
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
psect	text59
	line	24
	
i1l2212:	
;Teste_Recebimento.c: 24: if(INTF){
	btfss	(89/8),(89)&7
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l913
u1_20:
	line	25
	
i1l2214:	
;Teste_Recebimento.c: 25: TMR1ON=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(128/8),(128)&7
	line	26
;Teste_Recebimento.c: 26: testa=1;
	bsf	(_testa/8),(_testa)&7
	line	27
;Teste_Recebimento.c: 27: INTF=0;
	bcf	(89/8),(89)&7
	line	28
	
i1l913:	
	line	29
;Teste_Recebimento.c: 28: }
;Teste_Recebimento.c: 29: if(TMR1IF){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l940
u2_20:
	line	30
	
i1l2216:	
;Teste_Recebimento.c: 30: TMR1ON=0;
	bcf	(128/8),(128)&7
	line	31
	
i1l2218:	
;Teste_Recebimento.c: 31: TMR1=51536;
	movlw	low(0C950h)
	movwf	(14)	;volatile
	movlw	high(0C950h)
	movwf	((14))+1	;volatile
	line	32
	
i1l2220:	
;Teste_Recebimento.c: 32: TMR1IF=0;
	bcf	(96/8),(96)&7
	line	33
	
i1l2222:	
;Teste_Recebimento.c: 33: testa=0;
	bcf	(_testa/8),(_testa)&7
	line	34
	
i1l2224:	
;Teste_Recebimento.c: 34: if(!start && !recebeu_bit){
	btfsc	(_start/8),(_start)&7
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l915
u3_20:
	
i1l2226:	
	btfsc	(_recebeu_bit/8),(_recebeu_bit)&7
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l915
u4_20:
	line	35
	
i1l2228:	
;Teste_Recebimento.c: 36: recebendo=0;
	clrf	(_start_cont)
	line	37
;Teste_Recebimento.c: 37: }
	goto	i1l916
	line	38
	
i1l915:	
;Teste_Recebimento.c: 38: else if(start && !recebeu_bit && !dado_sel && !end_startcode){
	btfss	(_start/8),(_start)&7
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l917
u5_20:
	
i1l2230:	
	btfsc	(_recebeu_bit/8),(_recebeu_bit)&7
	goto	u6_21
	goto	u6_20
u6_21:
	goto	i1l917
u6_20:
	
i1l2232:	
	btfsc	(_dado_sel/8),(_dado_sel)&7
	goto	u7_21
	goto	u7_20
u7_21:
	goto	i1l917
u7_20:
	
i1l2234:	
	btfsc	(_end_startcode/8),(_end_startcode)&7
	goto	u8_21
	goto	u8_20
u8_21:
	goto	i1l917
u8_20:
	goto	i1l2270
	line	40
;Teste_Recebimento.c: 40: case 0:
	
i1l919:	
	line	41
;Teste_Recebimento.c: 41: byte_cont=1;
	clrf	(_byte_cont)
	incf	(_byte_cont),f
	line	42
;Teste_Recebimento.c: 42: dado_rx=dado_rx<<1;
	clrc
	rlf	(_dado_rx),f
	line	43
;Teste_Recebimento.c: 43: break;
	goto	i1l916
	line	45
	
i1l2238:	
;Teste_Recebimento.c: 45: byte_cont=2;
	movlw	(02h)
	movwf	(_byte_cont)
	line	46
	
i1l2240:	
;Teste_Recebimento.c: 46: dado_rx=dado_rx<<1;
	clrc
	rlf	(_dado_rx),f
	line	47
;Teste_Recebimento.c: 47: break;
	goto	i1l916
	line	49
	
i1l2242:	
;Teste_Recebimento.c: 49: byte_cont=3;
	movlw	(03h)
	movwf	(_byte_cont)
	goto	i1l2240
	line	53
	
i1l2246:	
;Teste_Recebimento.c: 53: byte_cont=4;
	movlw	(04h)
	movwf	(_byte_cont)
	goto	i1l2240
	line	57
	
i1l2250:	
;Teste_Recebimento.c: 57: byte_cont=5;
	movlw	(05h)
	movwf	(_byte_cont)
	goto	i1l2240
	line	61
	
i1l2254:	
;Teste_Recebimento.c: 61: byte_cont=6;
	movlw	(06h)
	movwf	(_byte_cont)
	goto	i1l2240
	line	65
	
i1l2258:	
;Teste_Recebimento.c: 65: byte_cont=7;
	movlw	(07h)
	movwf	(_byte_cont)
	goto	i1l2240
	line	69
	
i1l2262:	
;Teste_Recebimento.c: 70: recebendo=0;
	clrf	(_byte_cont)
	line	71
	
i1l2264:	
;Teste_Recebimento.c: 71: dado_sel=1;
	bsf	(_dado_sel/8),(_dado_sel)&7
	line	72
	
i1l2266:	
;Teste_Recebimento.c: 72: start=0;
	bcf	(_start/8),(_start)&7
	line	73
;Teste_Recebimento.c: 73: break;
	goto	i1l916
	line	39
	
i1l2270:	
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
goto i1l916
movlw high(i1S2668)
movwf pclath
	clrc
	rlf fsr,w
	addlw low(i1S2668)
	movwf pc
psect	swtext3,local,class=CONST,delta=2
global __pswtext3
__pswtext3:
i1S2668:
	ljmp	i1l919
	ljmp	i1l2238
	ljmp	i1l2242
	ljmp	i1l2246
	ljmp	i1l2250
	ljmp	i1l2254
	ljmp	i1l2258
	ljmp	i1l2262
psect	text59

	line	76
	
i1l917:	
;Teste_Recebimento.c: 76: else if(start && !recebeu_bit && dado_sel && !end_startcode){
	btfss	(_start/8),(_start)&7
	goto	u9_21
	goto	u9_20
u9_21:
	goto	i1l916
u9_20:
	
i1l2272:	
	btfsc	(_recebeu_bit/8),(_recebeu_bit)&7
	goto	u10_21
	goto	u10_20
u10_21:
	goto	i1l916
u10_20:
	
i1l2274:	
	btfss	(_dado_sel/8),(_dado_sel)&7
	goto	u11_21
	goto	u11_20
u11_21:
	goto	i1l916
u11_20:
	
i1l2276:	
	btfsc	(_end_startcode/8),(_end_startcode)&7
	goto	u12_21
	goto	u12_20
u12_21:
	goto	i1l916
u12_20:
	goto	i1l2314
	line	78
;Teste_Recebimento.c: 78: case 0:
	
i1l931:	
	line	79
;Teste_Recebimento.c: 79: byte_cont=1;
	clrf	(_byte_cont)
	incf	(_byte_cont),f
	line	80
;Teste_Recebimento.c: 80: dado_rx2=dado_rx2<<1;
	clrc
	rlf	(_dado_rx2),f
	line	81
;Teste_Recebimento.c: 81: break;
	goto	i1l916
	line	83
	
i1l2280:	
;Teste_Recebimento.c: 83: byte_cont=2;
	movlw	(02h)
	movwf	(_byte_cont)
	line	84
	
i1l2282:	
;Teste_Recebimento.c: 84: dado_rx2=dado_rx2<<1;
	clrc
	rlf	(_dado_rx2),f
	line	85
;Teste_Recebimento.c: 85: break;
	goto	i1l916
	line	87
	
i1l2284:	
;Teste_Recebimento.c: 87: byte_cont=3;
	movlw	(03h)
	movwf	(_byte_cont)
	goto	i1l2282
	line	91
	
i1l2288:	
;Teste_Recebimento.c: 91: byte_cont=4;
	movlw	(04h)
	movwf	(_byte_cont)
	goto	i1l2282
	line	95
	
i1l2292:	
;Teste_Recebimento.c: 95: byte_cont=5;
	movlw	(05h)
	movwf	(_byte_cont)
	goto	i1l2282
	line	99
	
i1l2296:	
;Teste_Recebimento.c: 99: byte_cont=6;
	movlw	(06h)
	movwf	(_byte_cont)
	goto	i1l2282
	line	103
	
i1l2300:	
;Teste_Recebimento.c: 103: byte_cont=7;
	movlw	(07h)
	movwf	(_byte_cont)
	goto	i1l2282
	line	107
	
i1l2304:	
;Teste_Recebimento.c: 108: recebendo=0;
	clrf	(_byte_cont)
	line	109
	
i1l2306:	
;Teste_Recebimento.c: 109: dado_sel=0;
	bcf	(_dado_sel/8),(_dado_sel)&7
	line	110
	
i1l2308:	
;Teste_Recebimento.c: 110: start=0;
	bcf	(_start/8),(_start)&7
	line	111
	
i1l2310:	
;Teste_Recebimento.c: 111: byte_test=1;
	bsf	(_byte_test/8),(_byte_test)&7
	line	112
;Teste_Recebimento.c: 112: break;
	goto	i1l916
	line	77
	
i1l2314:	
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
goto i1l916
movlw high(i1S2670)
movwf pclath
	clrc
	rlf fsr,w
	addlw low(i1S2670)
	movwf pc
psect	swtext4,local,class=CONST,delta=2
global __pswtext4
__pswtext4:
i1S2670:
	ljmp	i1l931
	ljmp	i1l2280
	ljmp	i1l2284
	ljmp	i1l2288
	ljmp	i1l2292
	ljmp	i1l2296
	ljmp	i1l2300
	ljmp	i1l2304
psect	text59

	line	115
	
i1l916:	
;Teste_Recebimento.c: 114: }
;Teste_Recebimento.c: 115: recebeu_bit=0;
	bcf	(_recebeu_bit/8),(_recebeu_bit)&7
	line	116
;Teste_Recebimento.c: 116: end_startcode=0;
	bcf	(_end_startcode/8),(_end_startcode)&7
	line	118
	
i1l940:	
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
psect	text60,local,class=CODE,delta=2
global __ptext60
__ptext60:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
