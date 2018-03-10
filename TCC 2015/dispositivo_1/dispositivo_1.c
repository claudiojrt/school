#include 	<htc.h>
#include	<stdio.h>
#include	"lcd_claudio.c"
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
char	dado_rx=0;
char	enviando;
char	lixo=0;
char	cont=0;
char	flag=0;
char	enviar=0;

void send(){
	__delay_ms(1);
	ON;
	delay2;
	OFF;
	enviar=0;
	enviando--;
}

void protocol(){
	if(dado_rx==20){
		Rele=0;
	}
	else if(dado_rx==21){
		Rele=1;
	}
	else if(dado_rx==128){
		Rele=0;
		enviando=2;
	}
	else if(dado_rx==129){
		Rele=1;
		enviando=1;
	}
	else if(dado_rx==30){
		Rele=0;
		enviando=2;
	}
	else if(dado_rx==31){
		Rele=1;
		enviando=1;
	}
}

void interrupt interrupts(void){
	if(INTF){
		if(!enviando){
			TMR1ON=1;
			testa=1;
		}
		else if(enviando){
			enviar=1;
		}
		INTF=0;
	}
	if(TMR1IF){
		TMR1ON=0;
		TMR1=51536;
		TMR1IF=0;
		if(cont==1){
			Rele=1;
		}
		if(cont==2){
			Rele=0;
		}
		cont=0;
		recebeu=0;
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
			dado_rx=RCREG;
			printf("\f%d",dado_rx);
			bt_flag=1;
		}
		RCIF=0;
	}
}

void T1_init(void){
	T1CON=0b00110100;
	TMR1IF=0;
	TMR1IE=1;
	TMR1=51536;
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

void main (void){
	OSCCON=0b01110000;
	ANSEL=0;
	ANSELH=0;
	TRISA=0b00000100;
	TRISB=0;
	TRISC=0;
	PORTA=PORTB=PORTC=0;
	INTCON=0b11010000;
	INTEDG=0;
	T1_init();
	T2_init();
	serial_init();
	lcd_init();
	__delay_ms(5);

	while(1){
		if(bt_flag){
			protocol();
			bt_flag=0;
		}
		if(enviar){
			send();
		}
	}
}