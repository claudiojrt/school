#include 	<htc.h>
#include	<stdio.h>
#include	"LCD_Claudio.c"
__CONFIG(FOSC_INTRCIO & WDTE_OFF & PWRTE_ON & MCLRE_ON); 
#ifndef _XTAL_FREQ
#define _XTAL_FREQ 4000000
#endif

bit		flag,ler,gravar,aux;
char	dado_rx=0,lixo=0,buffer=0;;

void write(char data, char adress){
	EEPGD=0;
	EEADR=adress;
	EEDAT=data;
	GIE=0;
	WREN=1;
	EECON2=0x55;
	EECON2=0XAA;
	WR=1;
	WREN=0;
	GIE=1;
}

char read(char adress){
	EEPGD=0;
	EEADR=adress;
	RD=1;
	NOP();
	return EEDAT;
}

void send(unsigned char c){
	TXREG=c;
	while(!TRMT);
}

void interrupt interrupts(void){
	if(RCIF){
		if(FERR){
			lixo=RCREG;
		}
		else if(OERR){
			CREN=0;
			CREN=1;
		}
		else{
			dado_rx=RCREG;
			flag=1;
		}
		RCIF=0;
	}
}

void serial_init(void){
	SYNC=0;
	BRGH=1;
	BRG16=1;
	SPBRGH=0;
	SPBRG=103;
	SPEN=1;	
	TX9=0;
	TXEN=1;
	TXIE=0;
	RCIE=1;
	PEIE=1;
	RX9=0;
	CREN=1;
}

void main(void){
	ANSEL=0;
	ANSELH=0;
	TRISA=0b00000111;
	TRISB=0;
	TRISC=0;
	PORTA=PORTB=PORTC=0;
	INTCON=0b11000000;
	IOCA0=0;
	IOCA1=1;
	INTEDG=1;
	lcd_init();
	serial_init();
	printf("Teste");
	
	while(1){
		if(flag){
			if(ler){
				send('R');
				send(read(dado_rx));
				printf("\fDado: %i",read(dado_rx));
				printf("\nEnd: 0x%.2i",dado_rx);
				ler=0;
			}
			else if(gravar){
				if(!aux){
					buffer=dado_rx;
					aux=1;
				}
				else{
					write(buffer,dado_rx);
					printf("\fDado gravado\ncom sucesso.");
					__delay_ms(1000);
					printf("\fDado: %i",buffer);
					printf("\nEnd: 0x%.2i",dado_rx);
					aux=0;
					gravar=0;
				}
			}
			else if(dado_rx=='R'){
				ler=1;
			}
			else if(dado_rx=='W'){
				gravar=1;
			}
			flag=0;
		}
	}
}