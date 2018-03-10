#include 	<htc.h>
#include	<stdio.h>
__CONFIG(FOSC_INTRCIO & WDTE_OFF & PWRTE_ON & MCLRE_ON);
#ifndef _XTAL_FREQ
#define _XTAL_FREQ 2000000
#endif

bit flag,flag2;

void config(){
	OSCCON=0b01010001;
	nRABPU=0;
	INTCON=0b11001000;
	T2CON=0b00000010;
	TMR2=0;
	PR2=129;
	CCP1CON=0b00001111;
	CCPR1L=0;
	IOCA0=1;
	TMR2IE=1;
	TMR2IF=0;
	TMR2ON=1;
}

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
			if(!flag2){
				CCPR1L+=6;
				CCP1CON=0b00101111;
				flag2=1;
			}
			if(flag2){
				CCPR1L+=7;
				CCP1CON=0b00001111;
				flag2=0;
			}
				if(CCPR1L>=129){
					CCPR1L=130;
					flag=1;
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
	config();
	flag=flag2=0;
	
	while(1){
		if(RA0==0){
			__delay_ms(100);
			while(RA0==0);
			__delay_ms(100);
			IOCA0=1;
		}
	}
}