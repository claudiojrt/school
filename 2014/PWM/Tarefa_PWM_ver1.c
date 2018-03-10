#include 	<htc.h>
#include	<stdio.h>
__CONFIG(FOSC_INTRCIO & WDTE_OFF & PWRTE_ON & MCLRE_ON);
#ifndef _XTAL_FREQ
#define _XTAL_FREQ 2000000
#endif

bit flag,flag_bt;

void interrupt interrupcao(){
	if(TMR2IF==1 && TMR2IE==1){
		TMR2IF=0;
	}
	if(INTE==1 && INTF==1){
		RA5=!RA5;
		if(!flag){
			CCPR1L+=7;
			if(CCPR1L>=125){
				CCPR1L=130;
				flag=!flag;
			}
		}
		else if(flag){
			CCPR1L-=13;
			if(CCPR1L<=0){
				CCPR1L=0;
				flag=0;
			}
		}
		flag_bt=1;
		INTE=0;
		INTF=0;
	}
}

void main(){
	ANSEL=0;
	ANSELH=0;
	TRISA=0b00001100;
	TRISB=0;
	TRISC=0;
	PORTA=PORTB=PORTC=0;
	OSCCON=0b01010001;
	INTCON=0b11010000;
	T2CON=0b00000010;
	TMR2=0;
	PR2=130;
	CCP1CON=0b00111111;
	CCPR1L=0;
	TMR2IE=1;
	TMR2IF=0;
	TMR2ON=1;
	flag=flag_bt=0;
	while(1){
		if(RA2==0 && flag_bt==1){
			__delay_ms(150);
			if(RA2==0){
				__delay_ms(50);
				flag_bt=0;
				INTE=1;
			}
		}
	}
}