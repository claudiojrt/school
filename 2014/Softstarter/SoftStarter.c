///*************************************************************
/// Versão: 3
///	Autor: Cláudio Tondin
/// Data da Versão: 27/08/2015.
///*************************************************************

#include 	<htc.h>
#include	<stdio.h>
__CONFIG(FOSC_INTRCIO & WDTE_OFF & PWRTE_ON & MCLRE_ON);
#ifndef _XTAL_FREQ
#define _XTAL_FREQ 2000000
#endif

#define	bypass	RA1
#define	LED_150 RA4
#define	LED_200	RA5

bit		Rampa;
bit		set=0;
bit		adif=0;
bit		sel=0;
bit		I_150=0;
bit		critic=0;
bit		L_150=0;
char	dado_rx=0;
char	lixo;
char	cont=0;
int		T1=0;
int		AD=0;

void send(unsigned char c){
	TXREG=c;
	while(!TRMT);
}

void T1Cfg(float Time){
	T1=(Time/0.0041);
	TMR1=(65536-T1);
}

void interrupt interrupts(){
	// Medição de Corrente
	if(ADIE==1 && ADIF==1){
		set=1;
		adif=1;
		ADIF=0;
	}
	// Tempo de Rampa
	if(TMR1IE==1 && TMR1IF==1){
		TMR1IF=0;
		TMR1+=(65536-T1);
		// Motor Subindo
		if(!Rampa){
			if(I_150){
				bypass=0;
				if(CCPR1L==255){
					NOP();
				}
				else{
					CCPR1L++;
				}
			}
			else{
				CCPR1L--;
				if(CCPR1L<2 && bypass==0){
					bypass=1;
				}
				if(CCPR1L==0){
					TMR1ON=0;
				}
			}
		}
		// Motor Descendo
		else{
			CCPR1L++;
			if(CCPR1L>1 && bypass==1){
				bypass=0;
			}
			if(CCPR1L==255){
				TMR1ON=0;
			}
		}
	}
	// Sincronia com Rede
	if(INTE==1 && INTF==1){
		TMR2=PR2;
		__delay_us(400);
		INTF=0;
	}
	// Recepção Serial (comandos)
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
			// Ligar
			if(dado_rx==83){
				Rampa=0;
				critic=0;
				TMR1ON=1;
				dado_rx=0;
			}
			// Desligar
			else if(dado_rx==80 && critic==0){
				Rampa=1;
				TMR1ON=1;
				dado_rx=0;
			}
			// Tempo da Rampa
			else{
				T1Cfg(dado_rx);
				dado_rx=0;
			}
		}
		RCIF=0;
	}
}
//Init
void serial_init(void){
	SYNC=0;
	BRGH=1;
	BRG16=0;
	SPBRGH=0;
	SPBRG=12;
	SPEN=1;
	TX9=0;
	TXEN=1;
	TXIE=0;
	RCIE=1;
	PEIE=1;
	RX9=0;
	CREN=1;
}

void T2_init(void){
	T2CON=0b01111010;
	TMR2=0;
	PR2=254;
	CCP1CON=0b00001111;
	CCPR1L=255;
	TMR2ON=1;
}

void T1_init(void){
	T1CON=0b00110100;
	TMR1IE=1;
	TMR1IF=0;
	TMR1=0;
}

void ADC_init(void){
	ADCON1=0b01110000;
	ADCON0=0b00000001;
	__delay_us(5);
	ADIF=0;
	ADIE=1;
}

void main(){
	ANSEL=0b00000001;
	ANSELH=0;
	TRISA=0b00001101;
	TRISB=0b00100000;
	TRISC=0;
	PORTA=PORTB=PORTC=0;
	OSCCON=0b01010000;
	INTCON=0b11010000;
	INTEDG=0;
	ADC_init();
	T1_init();
	T2_init();
	serial_init();
	Rampa=1;
	while(1){
		__delay_ms(150);
		GO=1;
		if(set){
			AD=(ADRESH<<2)+(ADRESL>>6);
			// Corrente > 150%
			if(AD>600 && AD<699 && critic==0 && Rampa==0 && CCPR1L<170){
				I_150=1;
				TMR1ON=1;
				L_150=1;
			}
			// Corrente > 200%
			else if(AD>=700){
				critic=1;
				TMR1ON=0;
				bypass=0;
				CCPR1L=255;
				cont=1;
			}
			// Corrente < 150%
			else{
				I_150=0;
				L_150=0;
			}
			set=0;
		}
		// Amostragem de tensão
		if(adif){
			send(ADRESH);
			adif=0;
		}
		if(L_150){
			LED_150=!LED_150;
		}
		if(cont){
			LED_200=!LED_200;
			if(cont++ > 7){
				cont=0;
				LED_200=0;
			}
		}
	}
}