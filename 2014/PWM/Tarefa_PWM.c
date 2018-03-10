#include 	<htc.h>
#include	<stdio.h>
__CONFIG(FOSC_INTRCIO & WDTE_OFF & PWRTE_ON & MCLRE_ON);
#ifndef _XTAL_FREQ
#define _XTAL_FREQ 2000000
#endif

bit flag,flagc;

void interrupt interrupcao(){
	if(TMR2IF==1 && TMR2IE==1){
		TMR2IF=0;
	}
	if(RABIF==1 && RA0==0 && IOCA0==1){
		RABIF=0;
		IOCA0=0;
		RA0=RA0;
		RA5=!RA5;
		if(!flag){
			if(!flagc){
				CCPR1L+=6;
				flagc=!flagc;
			}
			if(flagc){
				CCPR1L+=7;
				flagc=!flagc;
			}
			if(CCPR1L>=130){
				CCPR1L=130;
				flag=!flag;
			}
		}
		else if(flag){
			CCPR1L-=13;
			if(CCPR1L<12){
				CCPR1L=0;
				flag=0;
			}
		}
	}
}

void main(){
	ANSEL=0;
	ANSELH=0;
	TRISA=0b00000001;
	TRISB=0;
	TRISC=0;
	PORTA=PORTB=PORTC=0;
	OSCCON=0b01010001;
	nRABPU=0;
	INTCON=0b11001000;
	T2CON=0b00000010;
	TMR2=0;
	PR2=130;
	CCP1CON=0b00001111;
	CCPR1L=0;
	IOCA0=1;
	TMR2IE=1;
	TMR2IF=0;
	TMR2ON=1;
	flag=flagc=0;
	
	while(1){
		if(RA0==0){
			__delay_ms(100);
			while(RA0==0);
			__delay_ms(100);
			IOCA0=1;
		}
	}
}