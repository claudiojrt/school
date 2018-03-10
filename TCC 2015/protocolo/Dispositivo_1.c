#include 	<htc.h>
#include	<stdio.h>
#include	"LCD_Claudio.c"
__CONFIG(FOSC_INTRCIO & WDTE_OFF & PWRTE_ON & MCLRE_ON);
#ifndef _XTAL_FREQ
#define _XTAL_FREQ 8000000
#endif

#define		END		10
#define		RX		RA0
#define		DT		RA2
#define		Saida	RC5
#define		Rele	RA4
#define 	ON		CCPR1L=10			//Duty 50%
#define 	OFF		CCPR1L=20			//Duty 0%
#define		delay2	__delay_ms(2)

bit		bit_tx;
bit		bt_use;
bit		byte_done;
bit		end_startcode;
bit		env;
bit		enviando;
bit		enviar;
bit		recebendo;
bit		recebeu_bit;
bit		start;
bit		testa;
char	byte_cont=0;
char	cycle=0;
char	dado_rx0=0;
char	dado_rx=0;
char	dado_tx=0;
char	lixo=0;
char	start_cont=0;
char	flag=0;

void acao_bt(){
	if((dado_rx0&0b00000001)==1){
		Rele=1;
	}
	else{
		Rele=0;
	}
}
void protocol_bt(){
	if(dado_rx0>=128){
		acao_bt();
	}
	else if(((dado_rx0&0b01111110)>>1)==END){
		acao_bt();
	}
}

void set_bit(){
	byte_cont++;
	dado_rx++;
	dado_rx=dado_rx<<1;
}

void reset_bit(){
	byte_cont++;
	dado_rx=dado_rx<<1;
}

void scode(){
	delay2;
	ON;
	delay2;
	OFF;
	cycle++;
}

void test_bit(){
	delay2;
	if(bit_tx){
		ON;
	}
	else{
		OFF;
	}
	delay2;
	OFF;
	cycle++;
}

void end_cycle(){
	enviando=0;
	bit_tx=0;
	dado_tx=0;
	cycle=0;
}

void send(){
	switch(cycle){
		case 0:	 scode(); 											break;
		case 1:	 scode(); 											break;
		case 2:	 scode(); 											break;
		case 3:	 scode(); 											break;
		case 4:	 bit_tx=dado_tx>>7;	test_bit();						break;
		case 5:	 bit_tx=dado_tx>>6;	test_bit();						break;
		case 6:	 bit_tx=dado_tx>>5;	test_bit();						break;
		case 7:	 bit_tx=dado_tx>>4;	test_bit(); 					break;
		case 8:	 bit_tx=dado_tx>>3;	test_bit(); 					break;
		case 9:	 bit_tx=dado_tx>>2;	test_bit(); 					break;
		case 10: bit_tx=dado_tx>>1;	test_bit(); 					break;
		case 11: bit_tx=dado_tx;	test_bit();						break;
		case 12: cycle++;											break;
		case 13: cycle++;											break;
		case 14: cycle++;											break;
		case 15: cycle++;											break;
		case 16: scode(); 											break;
		case 17: scode(); 											break;
		case 18: scode(); 											break;
		case 19: scode(); 											break;
		case 20: bit_tx=dado_tx>>7;	test_bit();						break;
		case 21: bit_tx=dado_tx>>6;	test_bit();						break;
		case 22: bit_tx=dado_tx>>5;	test_bit();						break;
		case 23: bit_tx=dado_tx>>4;	test_bit(); 					break;
		case 24: bit_tx=dado_tx>>3;	test_bit(); 					break;
		case 25: bit_tx=dado_tx>>2;	test_bit(); 					break;
		case 26: bit_tx=dado_tx>>1;	test_bit(); 					break;
		case 27: bit_tx=dado_tx;	test_bit();		end_cycle();	break;
	}
	enviar=0;
}

void interrupt interrupts(void){
	if(INTF){
		if(dado_tx){
			enviar=1;
		}
		INTF=0;
	}
	if(RCIF==1 && RCIE==1){
		if(FERR==1){
			lixo=RCREG;
		}
		else if(OERR==1){
			CREN=0;
			CREN=1;
		}
		else{
			dado_rx0=RCREG;
			printf("\f%d",dado_rx0);
			bt_use=1;
		}
		RCIF=0;
	}
}

void T2_init(void){
	T2CON=0;
	TMR2=0;
	PR2=19;
	CCP1CON=0b00001111;
	CCPR1L=20;
	TMR2ON=1;
}

void serial_init(void){
	SYNC=0;
	BRGH=1;
	BRG16=0;
	SPBRGH=0;
	SPBRG=51;
	SPEN=1;
	TX9=0;
	TXEN=1;
	TXIE=0;
	RCIE=1;
	PEIE=1;
	RX9=0;
	CREN=1;
}

void init(void){
	bit_tx=0;
	byte_done=0;
	end_startcode=0;
	enviando=0;
	recebendo=0;
	recebeu_bit=0;
	enviar=0;
	start=0;
	testa=0;
}

void main (void){
	OSCCON=0b01110000;
	ANSEL=0;
	ANSELH=0;
	TRISA=0b00000100;
	TRISB=0;
	TRISC=0;
	PORTA=PORTB=PORTC=0;
	INTCON=0b11010000;
	T2_init();
	init();
	serial_init();
	lcd_init();
	__delay_ms(5);

	while(1){
		if(dado_tx){
			enviando=1;
		}
		if(enviando){
			if(enviar){
				send();
			}
		}
		if(bt_use){
			protocol_bt();
			dado_tx=dado_rx0;
			dado_rx0=0;
			bt_use=0;
		}
	}
}