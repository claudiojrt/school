// Faça o projeto e a montagem de um sistema microcontrolado com o microcontrolador  PIC16F690, de modo que seja
// implementado um voltímetro em um dos canais do CAD e no outro canal, um termômetro com sensor de temperatura LM35.
// O voltímetro deverá ser capaz de medir tensão CC de até 20 V,com resolução de 8 bits. O termômetro deverá ter
// capacidade de medir temperaturas de até 100 ºC, com resolução de 10 bits. As medidas deverão ser apresentadas em um LCD 16x02.

// Obs:
// 1) Utilizar o módulo do CAD do microcontrolador;
// 2) Empregar interrupção de término de conversão AD;
// 3) Atualizar os valores no LCD a cada 250 ms;
// 4) Prever o reset do dispositivo (/MCLR).

#include 	<htc.h>
#include	<stdio.h>
#include	"lcd_claudio.c"
__CONFIG(FOSC_INTRCIO & WDTE_OFF & PWRTE_ON & MCLRE_ON); 
#ifndef _XTAL_FREQ
#define _XTAL_FREQ 4000000
#endif

#define	LM35	RA0
#define Input	RA1

bit		set=0;
char	cont=0;
int		Temperatura=0;
int		Voltimetro=0;

void interrupt interrupts(void){
	if(ADIF){
		set=1;
		ADIF=0;
	}
	if(TMR1IF){
		GO=1;
		TMR1IF=0;
		TMR1=64000;
	}
}

void adc_init(void){
	ADCON1=0b01110000;
	ADCON0=0b00000001;
	__delay_us(5);
	ADIF=0;
	ADIE=1;
}

void T1_init(void){
	T1CON=0b00110100;
	TMR1IF=0;
	TMR1IE=1;
	TMR1=64000;
	TMR1ON=1;
}

void main(void){
	ANSEL=0b00000011;
	ANSELH=0;
	TRISA=0b00001011;
	TRISB=0;
	TRISC=0;
	PORTA=PORTB=PORTC=0;
	INTCON=0b11000000;
	adc_init();
	T1_init();
	lcd_init();
	__delay_us(5);
	
	while(1){
		if(set){
			if(ADCON0==1){
				Temperatura+=(ADRESH<<2)+(ADRESL>>6);
				ADCON0=5;
				set=0;
			}
			else if(ADCON0==5){
				Voltimetro=(ADRESH<<2)+(ADRESL>>6);
				ADCON0=1;
				set=0;
				if(++cont>10){
					Temperatura-=45;					
					printf("\f      %i'C",Temperatura/20);
					printf("\n     %i,%.2i V",Voltimetro/50,Voltimetro%50);
					lcd_goto(21);
					cont=0;
					Temperatura=0;
				}
			}
		}
	}
}