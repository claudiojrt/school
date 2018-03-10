#include <htc.h>
#include "lcd.h"
#include <conio.h>
#include <stdio.h>

__CONFIG(FOSC_INTRCIO & WDTE_OFF & PWRTE_ON & MCLRE_OFF);
#ifndef _XTAL_FREQ
#define _XTAL_FREQ 4000000
#endif

#define LEDvd RA5	//Online
#define LEDvm RA4	//Offline

char dado_rx=0;
char ready=0,flagstat=0,ini=0,wait=1,flagmin=0,C_on=0;
char minutos=0;
bit seg,flag=0,conex=0;

void sync (char mode, char data){
    TXREG='f'; 	while(!TRMT);	//start byte
    TXREG=mode;	while(!TRMT);	//mode byte
    TXREG=data;	while(!TRMT);	//data carry
}

void interrupt serial(void){
	char lixo;

	//Sensor de passagem
	if(INTF==1 && INTE==1){
		//Se inicialização bem sucedida, e catraca aberta, envia sinal de passagem
		if(ready==1 && C_on==1){
			sync(112,1);
			INTE=0;
		}
		//Senão, mantém sinal visual
		else{
			LEDvd=0;
			LEDvm=1;
		}
		INTF=0;
	}

	//Recepção serial
	if(RCIF==1 && RCIE==1){
		//Frame error
		if(FERR==1){
			lixo=RCREG;
		}
		//Overrun error
		else if(OERR==1){
			CREN=0;
			CREN=1;
		}
		//Protocolo de recepção de dados
		else{
			dado_rx=RCREG;
			switch(dado_rx){
				//Ready - Libera catraca (conexão pronta)
				case 'r':
					ready=1;
					C_on=1;
					flagstat=0;
					LEDvd=1;
					LEDvm=0;
					ini=1;
					wait=1;
					break;
				//Unready - Trava catraca (conexão finalizada/perdida)
				case 'z':
					ready=0;
					C_on=0;
					flagstat=1;
					LEDvd=0;
					LEDvm=1;
					ini=0;
					flagmin=1;
					break;
				//Teste de estado da catraca (retorno do byte enviado pelo timer1)
				case 't':
					flagstat=0;
					if(ready==0){
						ready=1;
					}
					break;

				/*Byte teste enviado pelo PC. Se ok, retorna o byte para o computador, e como houve conexão,
				  indica que a conexão está pronta. Caso ainda não esteja informado (ready==1) e o status da
				  catraca for ligado, ele automaticamente faz a troca*/
				case 'h':
					if(ready==1){
						sync('h',0);
					}
					else if(ready==0){
						if(C_on){
							ready==1;
						}
						sync('h',0);
					}
					break;

				//Caso o dado recebido for do intervalo de 'A' a 'K', o microcontrolado interpretará
				//como o valor em minutos utilizado para mostrar no telão o próximo horário do trem
				case 'A': minutos=dado_rx-65; flagmin=1; dado_rx=0; break;
				case 'B': minutos=dado_rx-65; flagmin=1; dado_rx=0; break;
				case 'C': minutos=dado_rx-65; flagmin=1; dado_rx=0; break;
				case 'D': minutos=dado_rx-65; flagmin=1; dado_rx=0; break;
				case 'E': minutos=dado_rx-65; flagmin=1; dado_rx=0; break;
				case 'F': minutos=dado_rx-65; flagmin=1; dado_rx=0; break;
				case 'G': minutos=dado_rx-65; flagmin=1; dado_rx=0; break;
				case 'H': minutos=dado_rx-65; flagmin=1; dado_rx=0; break;
				case 'I': minutos=dado_rx-65; flagmin=1; dado_rx=0; break;
				case 'J': minutos=dado_rx-65; flagmin=1; dado_rx=0; break;
				case 'K': minutos=dado_rx-65; flagmin=1; dado_rx=0; break;
			}
		}
		RCIF=0;
	}

	//Teste de conexão com o PC pelo timer1
	if(TMR1IF ==1 && TMR1IE ==1){
		//Envia o byte teste de conexão com PC
		if(seg){
			sync('t',0);
			flagstat=1;
		}
		seg=!seg;
		TMR1+=3036;
		TMR1IF=0;
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
	TRISA=0b00001100;
	TRISB=0b00000000;
	TRISC=0b00000000;
	GIE=1;
	INTE=1;
	INTEDG=1;
	PEIE=1;
	TMR1IE=1;
	TMR1IF=0;
	TMR1=3036;
	TMR1ON=1;
	TMR1CS=0;
	T1CKPS1=1;
	T1CKPS0=1;
	nT1SYNC=1;
	lcd_init();
	serial_init();
	LEDvd=0;
	LEDvm=1;
	flagmin=1;

	while(1){
		//Exibe horários de trem no display

		//Default
		if(ready==0 && flagmin==1){
			printf("\f");
			flagmin=0;
		}
		//Com conexão
		if(minutos==0 && flagmin==1 && ready==1){
			printf("\fProximo trem:\nNA ESTACAO");
			flagmin=0;
		}
		if(minutos==1 && flagmin==1 && ready==1){
			printf("\fProximo trem:\nAprox. 10 min.");
			flagmin=0;
		}
		if(minutos==2 && flagmin==1 && ready==1){
			printf("\fProximo trem:\nAprox. 9 min.");
			flagmin=0;
		}
		if(minutos==3 && flagmin==1 && ready==1){
			printf("\fProximo trem:\nAprox. 8 min.");
			flagmin=0;
		}
		if(minutos==4 && flagmin==1 && ready==1){
			printf("\fProximo trem:\nAprox. 7 min.");
			flagmin=0;
		}
		if(minutos==5 && flagmin==1 && ready==1){
			printf("\fProximo trem:\nAprox. 6 min.");
			flagmin=0;
		}
		if(minutos==6 && flagmin==1 && ready==1){
			printf("\fProximo trem:\nAprox. 5 min.");
			flagmin=0;
		}
		if(minutos==7 && flagmin==1 && ready==1){
			printf("\fProximo trem:\nAprox. 4 min.");
			flagmin=0;
		}
		if(minutos==8 && flagmin==1 && ready==1){
			printf("\fProximo trem:\nAprox. 3 min.");
			flagmin=0;
		}
		if(minutos==9 && flagmin==1 && ready==1){
			printf("\fProximo trem:\nAprox. 2 min.");
			flagmin=0;
		}
		if(minutos==10 && flagmin==1 && ready==1){
			printf("\fProximo trem:\nAprox. 1 min.");
			flagmin=0;
		}
		if(minutos>10){
			minutos=0;
		}

		//Diminui trepidação do sensor
		if(RA2==1){
			__delay_ms(100);
		}
		else{
			INTE=1;
		}

		//Se PIC já estiver inicializado corretamente
		if(ini==1){
			//Aguarda comunicação estabilizar
			if(wait){
				__delay_ms(1000);
				wait=0;
			}
			//Faz o teste de rx/tx com o PC
			if(flagstat){
			//Tempo de resposta máximo do PC: 1,15s
				__delay_ms(150);
				if(flagstat && !seg){
					LEDvd=0;
					LEDvm=1;
					ready=0;
					flagmin=1;
					conex=1;
				}
			}
			else if(!flagstat && !seg){
				ready=1;
				LEDvd=1;
				LEDvm=0;
				if(conex){
					flagmin=1;
					conex=0;
				}
			}
		}
	}
}