#include 	<htc.h>
#include	<stdio.h>
__CONFIG(FOSC_INTRCIO & WDTE_OFF & PWRTE_ON & MCLRE_ON);
#ifndef _XTAL_FREQ
#define _XTAL_FREQ 8000000
#endif

#define		RX	RA0						//Pino pelo qual será recebido os bits

bit		byte_done;						//Flag que indica que o byte recebido está correto para uso
bit		byte_test;						//Flag que manda iniciar teste de comparação dos 2 bytes recebidos
bit		dado_sel;						//Flag que selecionará onde é pra guardar o dado recebido (se em dado_rx ou dado_rx2)
bit		end_startcode;					//Flag que setará quando o bytestart houver terminado, evitando que em TMR1IF não entre direto em guardar dado como 0
bit		recebendo;						//Flag que indica que dado está sendo recebido
bit		recebeu_bit;					//Flag que indica que houve recebimento de bit durante a rotina de varredura da porta RX
bit		start;							//Flag após startcode bem sucedido.
bit		testa;							//Flag que habilita testar a entrada para '1' ou '0'
char	dado_rx=0;						//Dado completo 1 (UTILIZADO CASO IGUAL AO 2)
char	dado_rx2=0;						//Dado completo 2 para comparação
char	start_cont=0;					//Cont que irá contar 4 bits de startcode
char	byte_cont=0;					//Cont que irá contar os 8 bits de dados

void interrupt interrupts(void){						/// INTERRUPÇÕES
	if(INTF){											/// DETECÇÃO DE ZERO
		TMR1ON=1;										//Habilita teste da porta para receber dados (7mS)
		testa=1;										//	"
		INTF=0;											//Zera a flag da interrupção
	}
	if(TMR1IF){																/// TIMER1
		TMR1ON=0;															//Desliga timer
		TMR1=51536;															//14.000, 1:8, 8MHz -> 7mS
		TMR1IF=0;															//Zera a flag da interrupção
		testa=0;															//Termina tempo de teste
		if(!start && !recebeu_bit){											//Se start não foi completado (4 bits) e, terminou o ciclo e não recebeu nenhum bit
			start_cont=0;													//Zera contador do startcode (pois houve zeros no meio do startcode, possível ruido)
			recebendo=0;													//Não estará mais como "recebendo"
		}
		else if(start && !recebeu_bit && !dado_sel && !end_startcode){		//Se start FOI completado (4 bits) e, terminou o ciclo e não recebeu nenhum bit, e for pra guardar em dado_rx e ainda não ter acabado de completar o startcode
			switch(byte_cont){												//Testa cont de dado_rx
				case 0: 													// Bit 0:
					byte_cont=1;											//Proximo bit 1
					dado_rx=dado_rx<<1;										//Desloca pra esquerda (deixando o bit 0 em '0')
					break;													// "
				case 1:														// Bit 1:
					byte_cont=2;											//Proximo bit 2
					dado_rx=dado_rx<<1;										//Desloca pra esquerda (deixando o bit 1 em '0'
					break;													// "
				case 2:														// Bit 2:
					byte_cont=3;											//Proximo bit 3
					dado_rx=dado_rx<<1;										//Desloca pra esquerda (deixando o bit 2 em '0'
					break;													// "
				case 3:														// Bit 3:
					byte_cont=4;											//Proximo bit 4
					dado_rx=dado_rx<<1;										//Desloca pra esquerda (deixando o bit 3 em '0'
					break;													// "
				case 4:														// Bit 4:
					byte_cont=5;											//Proximo bit 5
					dado_rx=dado_rx<<1;										//Desloca pra esquerda (deixando o bit 4 em '0'
					break;													// "
				case 5:														// Bit 5:
					byte_cont=6;											//Proximo bit 6
					dado_rx=dado_rx<<1;										//Desloca pra esquerda (deixando o bit 5 em '0'
					break;													// "
				case 6:														// Bit 6:
					byte_cont=7;											//Proximo bit 7
					dado_rx=dado_rx<<1;										//Desloca pra esquerda (deixando o bit 6 em '0'
					break;													// "
				case 7:														// Bit 7:
					byte_cont=0;											//Fim de cont
					recebendo=0;											//Não estará mais como "recebendo"
					dado_sel=1;												//Próximos bits recebidos irão pra dado_rx2
					start=0;												//Chegando ao fim, seta start para 0, para possibilitar receber novo startcode
					break;													// "
			}
		}
		else if(start && !recebeu_bit && dado_sel && !end_startcode){		//Se start FOI completado (4 bits) e, terminou o ciclo e não recebeu nenhum bit, e for pra guardar em dado_rx2 e ainda, não ter acabado de completar o startcode
			switch(byte_cont){							//Testa cont de dado_rx2
				case 0: 								// Bit 0:
					byte_cont=1;						//Proximo bit 1
					dado_rx2=dado_rx2<<1;				//Desloca pra esquerda (deixando o bit 0 em '0')
					break;								// "
				case 1:									// Bit 1:
					byte_cont=2;						//Proximo bit 2
					dado_rx2=dado_rx2<<1;				//Desloca pra esquerda (deixando o bit 1 em '0'
					break;								// "
				case 2:									// Bit 2:
					byte_cont=3;						//Proximo bit 3
					dado_rx2=dado_rx2<<1;				//Desloca pra esquerda (deixando o bit 2 em '0'
					break;								// "
				case 3:									// Bit 3:
					byte_cont=4;						//Proximo bit 4
					dado_rx2=dado_rx2<<1;				//Desloca pra esquerda (deixando o bit 3 em '0'
					break;								// "
				case 4:									// Bit 4:
					byte_cont=5;						//Proximo bit 5
					dado_rx2=dado_rx2<<1;				//Desloca pra esquerda (deixando o bit 4 em '0'
					break;								// "
				case 5:									// Bit 5:
					byte_cont=6;						//Proximo bit 6
					dado_rx2=dado_rx2<<1;				//Desloca pra esquerda (deixando o bit 5 em '0'
					break;								// "
				case 6:									// Bit 6:
					byte_cont=7;						//Proximo bit 7
					dado_rx2=dado_rx2<<1;				//Desloca pra esquerda (deixando o bit 6 em '0'
					break;								// "
				case 7:									// Bit 7:
					byte_cont=0;						//Fim de cont
					recebendo=0;						//Não estará mais como "recebendo"
					dado_sel=0;							//Próximos bits recebidos irão pra dado_rx
					start=0;							//Chegando ao fim, seta start para 0, para possibilitar receber novo startcode
					byte_test=1;						//Habilita testar bytes dado_rx e dado_rx2
					break;								// "
				}
		}
		recebeu_bit=0;									//Se não passou pelo teste de erro, significa um bit válido, logo, zera-se a flag de recebimento de bit (após bit guardado)
		end_startcode=0;								//Garante que será zero
	}
}

void T1_init(void){						/// INICIALIZA TIMER1
	T1CON=0b00110100;					//1:8, Sync=0, off
	TMR1IF=0;							//Flag interrupção
	TMR1IE=1;							// "
	TMR1=51536;							// Contagens. 14.000 -> 7mS
}

void init(void){						/// INICIALIZA BIT FLAGS
	byte_done=0;						// "
	dado_sel=0;							// "
	end_startcode=0;					// "
	recebendo=0;						// "
	recebeu_bit=0;						// "
	start=0;							// "
	testa=0;							// "
}

void main (void){						/// MAIN
	OSCCON=0b01110000;					//8MHz
	ANSEL=0;							//Analógicas
	ANSELH=0;							// "
	TRISA=0b00000101;					//Inputs
	TRISB=0;							// "
	TRISC=0;							// "
	PORTA=PORTB=PORTC=0;				// "
	INTCON=0b11010000;					//GIE, PEIE, INTE
	T1_init();							//Inicializa
	init();								// "
	__delay_ms(5);						// Delay para estabilização
	
	// Test
	// dado_rx=116;
	// dado_rx2=11;
	// start=1;
	// dado_sel=1;
	// byte_cont=7;
	// TMR1IF=1;
	
	while(1){														/// PROGRAMA
		if(testa){													//Teste da entrada - 7mS
			if(!start){												//Caso não se tenha recebido o startcode ainda
				if(RX && recebeu_bit==0){							//Caso ocorra '1' em RX e ainda não tenha sido registrado um bit recebido
					recebeu_bit=1;									// "
					recebendo=1;									//Se receber algum '1', focaliza apenas em receber
					switch(start_cont){								//Testa cont de startcode
						case 0:	start_cont=1; break;				// "
						case 1: start_cont=2; break;				// "
						case 2: start_cont=3; break;				// "
						case 3: start_cont=0; start=1;				//Quando chegar a 4 bits seguidos, diz que houve startcode e inicia recebimento de bits
								end_startcode=1; break;				//Identifica que acabou de completar o startcode
					}
				}
			}
			else{													//Se recebeu startcode:
				if(dado_sel==0){									//Se for 0, guardar em dado_rx
					if(RX && recebeu_bit==0){						//Caso ocorra '1' em RX e ainda não tenha sido registrado um bit recebido
						recebeu_bit=1;								// "
						switch(byte_cont){							//Testa cont de dado_rx
							case 0: 								// Bit 0:
								byte_cont=1;						//Proximo bit 1
								dado_rx++;							//Seta bit
								dado_rx=dado_rx<<1;					//Desloca pra esquerda
								break;
							case 1:									// Bit 1:
								byte_cont=2;						//Proximo bit 2
								dado_rx++;							//Seta bit
								dado_rx=dado_rx<<1;					//Desloca pra esquerda
								break;
							case 2:									// Bit 2:
								byte_cont=3;						//Proximo bit 3
								dado_rx++;							//Seta bit
								dado_rx=dado_rx<<1;					//Desloca pra esquerda
								break;
							case 3:									// Bit 3:
								byte_cont=4;						//Proximo bit 4
								dado_rx++;							//Seta bit
								dado_rx=dado_rx<<1;					//Desloca pra esquerda
								break;
							case 4:									// Bit 4:
								byte_cont=5;						//Proximo bit 5
								dado_rx++;							//Seta bit
								dado_rx=dado_rx<<1;					//Desloca pra esquerda
								break;
							case 5:									// Bit 5:
								byte_cont=6;						//Proximo bit 6
								dado_rx++;							//Seta bit
								dado_rx=dado_rx<<1;					//Desloca pra esquerda
								break;
							case 6:									// Bit 6:
								byte_cont=7;						//Proximo bit 7
								dado_rx++;							//Seta bit
								dado_rx=dado_rx<<1;					//Desloca pra esquerda
								break;
							case 7:									// Bit 7:
								byte_cont=0;						//Fim de cont
								recebendo=0;						//Não estará mais como "recebendo"
								dado_sel=1;							//Próximos bits recebidos irão pra dado_rx2
								dado_rx++;							//Seta bit
								start=0;							//Chegando ao fim, seta start para 0, para possibilitar receber novo startcode
								break;
						}
					}
				}
				else{												//Senão, guardar em dado_rx2
					if(RX && recebeu_bit==0){						//Caso ocorra '1' em RX e ainda não tenha sido registrado um bit recebido
						recebeu_bit=1;								// "
						switch(byte_cont){							//Testa cont de dado_rx2
							case 0: 								// Bit 0:
								byte_cont=1;						//Proximo bit 1
								dado_rx2++;							//Seta bit
								dado_rx2=dado_rx2<<1;				//Desloca pra esquerda
								break;
							case 1:									// Bit 1:
								byte_cont=2;						//Proximo bit 2
								dado_rx2++;							//Seta bit
								dado_rx2=dado_rx2<<1;				//Desloca pra esquerda
								break;
							case 2:									// Bit 2:
								byte_cont=3;						//Proximo bit 3
								dado_rx2++;							//Seta bit
								dado_rx2=dado_rx2<<1;				//Desloca pra esquerda
								break;
							case 3:									// Bit 3:
								byte_cont=4;						//Proximo bit 4
								dado_rx2++;							//Seta bit
								dado_rx2=dado_rx2<<1;				//Desloca pra esquerda
								break;
							case 4:									// Bit 4:
								byte_cont=5;						//Proximo bit 5
								dado_rx2++;							//Seta bit
								dado_rx2=dado_rx2<<1;				//Desloca pra esquerda
								break;
							case 5:									// Bit 5:
								byte_cont=6;						//Proximo bit 6
								dado_rx2++;							//Seta bit
								dado_rx2=dado_rx2<<1;				//Desloca pra esquerda
								break;
							case 6:									// Bit 6:
								byte_cont=7;						//Proximo bit 7
								dado_rx2++;							//Seta bit
								dado_rx2=dado_rx2<<1;				//Desloca pra esquerda
								break;
							case 7:									// Bit 7:
								byte_cont=0;						//Fim de cont
								recebendo=0;						//Não estará mais como "recebendo"
								dado_sel=0;							//Próximos bits recebidos irão pra dado_rx
								dado_rx2++;							//Seta bit
								start=0;							//Chegando ao fim, seta start para 0, para possibilitar receber novo startcode
								byte_test=1;						//Habilita testar se dado_rx é igual a dado_rx2
								break;
						}
					}
				}
			}
		}
		if(byte_test){												/// BYTE TEST
			if(dado_rx==dado_rx2){									// "
				byte_done=1;										//Caso iguais, byte pronto para uso
				dado_rx2=0;
				/// TODO:
				/// Utilizar o dado recebido com sucesso
				///
			}
			else{													//Caso diferentes
				byte_done=0;										//Assegura que byte_done será 0
				dado_rx=dado_rx2=0;
			}
			byte_test=0;											//Teste concluido
		}
	}																/// END PROGRAM
}																	/// END MAIN









