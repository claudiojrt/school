#include 	<htc.h>
#include	<stdio.h>
__CONFIG(FOSC_INTRCIO & WDTE_OFF & PWRTE_ON & MCLRE_ON);
#ifndef _XTAL_FREQ
#define _XTAL_FREQ 8000000
#endif

#define		RX		RA0
#define		Rele	RA4
#define 	ON		CCPR1L=10			//Duty 50%
#define 	OFF		CCPR1L=20			//Duty 0%
#define		delay2	__delay_ms(2)

bit		bt_flag;
bit		recebeu=0;
bit		testa;
char	cont=0;
char	flag=0;
char	enviar=0;

void interrupt interrupts(void){
	if(INTF){
		testa=1;
		if(cont){
			recebeu=1;
		}
		TMR1ON=1;
		INTF=0;
	}
	if(TMR1IF){
		if(recebeu){
			if(cont==1){
				Rele=1;
			}
			if(cont==2){
				Rele=0;
			}
			cont=0;
			recebeu=0;
		}
		TMR1=62536;
		TMR1ON=0;
		TMR1IF=0;
	}
}

void T1_init(void){
	T1CON=0b00110100;
	TMR1IF=0;
	TMR1IE=1;
	TMR1=37536;
}

void main (void){
	OSCCON=0b01110000;
	ANSEL=0;
	ANSELH=0;
	TRISA=0b00000101;
	TRISB=0;
	TRISC=0;
	PORTA=PORTB=PORTC=0;
	INTCON=0b11010000;
	INTEDG=0;
	T1_init();
	__delay_ms(5);

	while(1){
		if(testa){
			if(RX){
				cont++;
				testa=0;
			}
		}
	}
}