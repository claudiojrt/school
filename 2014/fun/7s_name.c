#include 	<htc.h>
__CONFIG(FOSC_INTRCIO & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_OFF & IESO_OFF & FCMEN_OFF);

#ifndef _XTAL_FREQ
#define _XTAL_FREQ 4000000
#endif

#define sa		RC0
#define sb		RC1
#define sc		RC2
#define sd		RC3
#define se		RC4
#define sf		RC5
#define sg		RC6
#define K1		RA0
#define K2		RA1
#define K3		RA2
#define BOTAO	RA3

char const name[]= {0,0,0,0b00111001,0b00111000,0b01110111,0b00111110,0b01011110,0b00000110,0b00111111,0,0};

void main (void)
{
ANSEL=0;
TRISA=0b00001000;
TRISB=0;
TRISC=0;
PORTC=0;
K1=K2=K3=1;
char x,y;
	while(1){
		x=0;
		for(x=0;x<12;x++){
			for(y=0;y<50;y++){
				PORTC=0;
				K1=0;
				PORTC=name[x];
				__delay_ms(3);
				K1=1;
				PORTC=0;
				K2=0;
				PORTC=name[x+1];
				__delay_ms(3);
				K2=1;
				PORTC=0;
				K3=0;
				PORTC=name[x+2];
				__delay_ms(3);
				K3=1;
			}
		}
	}
}