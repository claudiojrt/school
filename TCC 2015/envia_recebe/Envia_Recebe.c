#include 	<htc.h>
#include	<stdio.h>
#include	"LCD_Claudio.c"
__CONFIG(FOSC_INTRCIO & WDTE_OFF & PWRTE_ON & MCLRE_ON);
#ifndef _XTAL_FREQ
#define _XTAL_FREQ 8000000
#endif

#define		RX		RA0																					//Pino pelo qual será recebido os bits
#define		DT		RA2																					//Pino da detecção de passagem por zero
#define		Saida	RC5																					//Pino de saída do burst de 120 kHz
#define 	ON		CCPR1L=10																			//Duty 50%
#define 	OFF		CCPR1L=20																			//Duty 0%
#define		delay1	__delay_ms(1)																		//Delay padrão

bit		already;																						//Bit que indica que bit já foi enviado no ciclo atual
bit		bit_tx;																							//Bit para enviar
bit		byte_done;																						//Flag que indica que o byte recebido está correto para uso
bit		byte_test;																						//Flag que manda iniciar teste de comparação dos 2 bytes recebidos
bit		dado_sel;																						//Flag que selecionará onde é pra guardar o dado recebido (se em dado_rx ou dado_rx2)
bit		end_startcode;																					//Flag que setará quando o bytestart houver terminado, evitando que em TMR1IF não entre direto em guardar dado como 0
bit		env;																							//Flag que setará quando dado for enviado 1x, para poder-se enviar 2x
bit		enviando;																						//Flag que indica que dado está sendo enviado
bit		enviar;																							//Flag que indica inicio de novo ciclo, indicando que é pra enviar bits
bit		recebendo;																						//Flag que indica que dado está sendo recebido
bit		recebeu_bit;																					//Flag que indica que houve recebimento de bit durante a rotina de varredura da porta RX
bit		start;																							//Flag após startcode bem sucedido.
bit		testa;																							//Flag que habilita testar a entrada para '1' ou '0'
char	byte_cont=0;																					//Cont que irá contar os 8 bits de dados
char	cycle=0;																						//Flag que indica numero de ciclos de rede que já aconteceram
char	dado_rx=0;																						//Dado completo 1 (UTILIZADO CASO IGUAL AO 2)
char	dado_rx2=0;																						//Dado completo 2 para comparação
char	dado_tx=0;																						//Dado a ser enviado
char	start_cont=0;																					//Cont que irá contar 4 bits de startcode
char	teste_tx=0;																						//Dado de teste, receberá dados enviados

void func_teste(){																						//Função de teste para o dado enviado
	teste_tx=bit_tx;																					//Joga bit na posição 1
	teste_tx=teste_tx<<1;																				//Desloca para esquerda
}

void rx_test(){																							//Testa recepção
	dado_rx=116;																						//Configuração
	dado_rx2=11;						 																// "
	start=1;																							// "
	dado_sel=1;																							// "
	byte_cont=7;																						// "
	TMR1IF=1;																							// "
}

void set_bit(){																							//Seta bits em dado_rx
	byte_cont++;																						//Proximo bit
	dado_rx++;																							//Seta bit atual
	dado_rx=dado_rx<<1;																					//Desloca pra esquerda
}

void set_bit2(){																						//Seta bits em dado_rx2
	byte_cont++;																						//Proximo bit
	dado_rx2++;																							//Seta bit atual
	dado_rx2=dado_rx2<<1;																				//Desloca pra esquerda
}

void reset_bit(){																						//Reseta bits em dado_rx
	byte_cont++;																						//Proximo bit
	dado_rx=dado_rx<<1;																					//Desloca pra esquerda (deixando o bit anterior em '0')
}

void reset_bit2(){																						//Reseta bits em dado_rx2
	byte_cont++;																						//Proximo bit
	dado_rx2=dado_rx2<<1;																				//Desloca pra esquerda (deixando o bit anterior em '0')
}

void scode(){																							//Start code (on)
	ON;																									//Liga saída
	delay1;																								//1mS ligado
	OFF;																								//Desliga saída
	cycle++;																							//Acrescenta ciclo
}

void test_bit(){																						//Teste de bit para envio
	if(bit_tx){																							//Testa o bit
		ON;																								//Liga saída
	}
	else{
		OFF;																							//Desliga saída
	}
	delay1;																								//1mS ligado
	OFF;																								//Desliga saída
	cycle++;																							//Acrescenta ciclo
	func_teste();																						///Função de teste do dado enviado
}

void blank(){																							//Espaço entre dados
	OFF;																								//Mantém saída desligada
	cycle++;																							//Acrescenta ciclo
}

void end_cycle(){																						//Fim do ciclo de envio
	if(!env){																							//Testa quantas vezes dado foi enviado. Caso não tenha sido enviado nenhum ainda
		env=1;																							//Indica que dado foi enviado 1x
	}
	else{																								/// DADO ENVIADO 2x
		env=0;																							//Enviado 2x, muda estado para 0
		enviando=0;																						//Após enviar 2x, desliga flag Enviando
		bit_tx=0;																						//Zera bit_tx
		dado_tx=0;																						//Zera dado_rx
	}
	cycle=0;																							//Reseta ciclo
}

void send(){																							/// BYTE SEND
	switch(cycle){																						//Testa qual ciclo que está no momento
		case 0:	 scode(); 						break;													//Start code 1
		case 1:	 scode(); 						break;													//Start code 2
		case 2:	 scode(); 						break;													//Start code 3
		case 3:	 scode(); 						break;													//Start code 4
		case 4:	 bit_tx=dado_tx>>7;	test_bit(); break;													//Bit 7
		case 5:	 bit_tx=dado_tx>>6;	test_bit(); break;													//Bit 6
		case 6:	 bit_tx=dado_tx>>5;	test_bit(); break;													//Bit 5
		case 7:	 bit_tx=dado_tx>>4;	test_bit(); break;													//Bit 4
		case 8:	 bit_tx=dado_tx>>3;	test_bit(); break;													//Bit 3
		case 9:	 bit_tx=dado_tx>>2;	test_bit(); break;													//Bit 2
		case 10: bit_tx=dado_tx>>1;	test_bit(); break;													//Bit 1
		case 11: bit_tx=dado_tx;	test_bit();	break;													//Bit 0
		case 12: blank();						break;													//Blank 1
		case 13: blank();						break;													//Blank 2
		case 14: blank();						break;													//Blank 3
		case 15: blank(); end_cycle();			break;													//Blank 4
	}
	already=1;																							//Avisa que já enviou o bit do ciclo
	enviar=0;																							//Bit enviado
}

void interrupt interrupts(void){																		/// INTERRUPÇÕES
	if(INTF){																							/// DETECÇÃO DE ZERO
		if(!enviando){																					//Se não estiver enviando,
			TMR1ON=1;																					//Habilita teste da porta para receber dados (7mS)
			testa=1;																					// "
		}
		else if(dado_tx && !recebendo){																	//Se tiver dado pra enviar, e não estiver recebendo dados
			enviar=1;																					//Avisa para enviar mais um bit
			already=0;																					//Zera a flag
		}
		INTF=0;																							//Zera a flag da interrupção
	}
	if(TMR1IF){																							/// TIMER1
		TMR1ON=0;																						//Desliga timer
		TMR1=51536;																						//14.000, 1:8, 8MHz -> 7mS
		TMR1IF=0;																						//Zera a flag da interrupção
		testa=0;																						//Termina tempo de teste
		if(!start && !recebeu_bit){																		//Se start não foi completado (4 bits) e, terminou o ciclo e não recebeu nenhum bit
			start_cont=0;																				//Zera contador do startcode (pois houve zeros no meio do startcode, possível ruido)
			recebendo=0;																				//Não estará mais como "recebendo"
		}
		else if(start && !recebeu_bit && !dado_sel && !end_startcode){									//Se start FOI completado (4 bits) e, terminou o ciclo e não recebeu nenhum bit, e for pra guardar em dado_rx e ainda não ter acabado de completar o startcode
			switch(byte_cont){																			//Testa cont de dado_rx
				case 0:	reset_bit();	break;															//Bit 0
				case 1:	reset_bit();	break;															//Bit 1
				case 2:	reset_bit();	break;															//Bit 2
				case 3:	reset_bit();	break;															//Bit 3
				case 4:	reset_bit();	break;															//Bit 4
				case 5:	reset_bit();	break;															//Bit 5
				case 6:	reset_bit();	break;															//Bit 6
				case 7:																					//Bit 7:
					byte_cont=0;																		//Fim de cont
					recebendo=0;																		//Não estará mais como "recebendo"
					dado_sel=1;																			//Próximos bits recebidos irão pra dado_rx2
					start=0;																			//Chegando ao fim, seta start para 0, para possibilitar receber novo startcode
					break;
			}
		}
		else if(start && !recebeu_bit && dado_sel && !end_startcode){									//Se start FOI completado (4 bits) e, terminou o ciclo e não recebeu nenhum bit, e for pra guardar em dado_rx2 e ainda, não ter acabado de completar o startcode
			switch(byte_cont){																			//Testa cont de dado_rx2
				case 0:	reset_bit2();	break;															//Bit 0
				case 1:	reset_bit2();	break;															//Bit 1
				case 2:	reset_bit2();	break;															//Bit 2
				case 3:	reset_bit2();	break;															//Bit 3
				case 4:	reset_bit2();	break;															//Bit 4
				case 5:	reset_bit2();	break;															//Bit 5
				case 6:	reset_bit2();	break;															//Bit 6
				case 7:																					//Bit 7:
					byte_cont=0;																		//Fim de cont
					recebendo=0;																		//Não estará mais como "recebendo"
					dado_sel=0;																			//Próximos bits recebidos irão pra dado_rx
					start=0;																			//Chegando ao fim, seta start para 0, para possibilitar receber novo startcode
					byte_test=1;																		//Habilita testar bytes dado_rx e dado_rx2
					break;
				}
		}
		recebeu_bit=0;																					//Se não passou pelo teste de erro, significa um bit válido, logo, zera-se a flag de recebimento de bit (após bit guardado)
		end_startcode=0;																				//Garante que será zero
	}
}

void T1_init(void){																						/// INICIALIZA TIMER1
	T1CON=0b00110100;																					//1:8, Sync=0, off
	TMR1IF=0;																							//Flag interrupção
	TMR1IE=1;																							//Interrupt Enable
	TMR1=51536;																							//Contagens. 14.000 -> 7mS
}

void T2_init(void){																						/// INICIALIZA TIMER2
	T2CON=0;																							//1:1, no post-scale, off
	TMR2=0;																								//Zera
	PR2=19;																								//Limite
	CCP1CON=0b00001111;																					//Single, Active-high
	CCPR1L=20;																							//Duty 0%
	TMR2ON=1;																							//Liga
}

void init(void){																						/// INICIALIZA BIT FLAGS
	bit_tx=0;																							// "
	byte_done=0;																						// "
	dado_sel=0;																							// "
	end_startcode=0;																					// "
	env=0;																								// "
	enviando=0;																							// "
	recebendo=0;																						// "
	recebeu_bit=0;																						// "
	enviar=0;																							// "
	start=0;																							// "
	testa=0;																							// "
}

void main (void){																						/// MAIN
	OSCCON=0b01110000;																					//8MHz
	ANSEL=0;																							//Analógicas
	ANSELH=0;																							// "
	TRISA=0b00000101;																					//Inputs
	TRISB=0;																							// "
	TRISC=0;																							// "
	PORTA=PORTB=PORTC=0;																				// "
	INTCON=0b11010000;																					//GIE, PEIE, INTE
	T1_init();																							//Inicializa
	T2_init();																							// "
	init();																								// "
	lcd_init();																							// "
	__delay_ms(5);																						//Delay para estabilização
	printf("\f");																						//Limpa LCD
	
	// rx_test();																						//Teste de recepção
	// dado_tx=170;																						//Teste de envio
	// printf("\fTeste de LCD.");																		//Teste do LCD
	
	while(1){																							/// PROGRAM
		if(testa){																						//Teste da entrada - 7mS
			if(!start){																					//Caso não se tenha recebido o startcode ainda
				if(RX && recebeu_bit==0){																//Caso ocorra '1' em RX e ainda não tenha sido registrado um bit recebido
					recebeu_bit=1;																		// "
					recebendo=1;																		//Se receber algum '1', focaliza apenas em receber
					switch(start_cont){																	//Testa cont de startcode
						case 0:	start_cont=1; break;													// "
						case 1: start_cont=2; break;													// "
						case 2: start_cont=3; break;													// "
						case 3: start_cont=0; start=1;													//Quando chegar a 4 bits seguidos, diz que houve startcode e inicia recebimento de bits
								end_startcode=1; break;													//Identifica que acabou de completar o startcode
					}
				}
			}
			else{																						//Se recebeu startcode:
				if(dado_sel==0){																		//Se for 0, guardar em dado_rx
					if(RX && recebeu_bit==0){															//Caso ocorra '1' em RX e ainda não tenha sido registrado um bit recebido
						recebeu_bit=1;																	// "
						switch(byte_cont){																//Testa cont de dado_rx
							case 0:	set_bit();	break;													//Bit 0
							case 1:	set_bit();	break;													//Bit 1
							case 2:	set_bit();	break;													//Bit 2
							case 3:	set_bit();	break;													//Bit 3
							case 4:	set_bit();	break;													//Bit 4
							case 5:	set_bit();	break;													//Bit 5
							case 6:	set_bit();	break;													//Bit 6
							case 7:																		//Bit 7:
								byte_cont=0;															//Fim de cont
								recebendo=0;															//Não estará mais como "recebendo"
								dado_sel=1;																//Próximos bits recebidos irão pra dado_rx2
								dado_rx++;																//Seta bit
								start=0;																//Chegando ao fim, seta start para 0, para possibilitar receber novo startcode
								break;
						}
					}
				}
				else{																					//Senão, guardar em dado_rx2
					if(RX && recebeu_bit==0){															//Caso ocorra '1' em RX e ainda não tenha sido registrado um bit recebido
						recebeu_bit=1;																	// "
						switch(byte_cont){																//Testa cont de dado_rx2
							case 0:	set_bit2();	break;													//Bit 0
							case 1:	set_bit2();	break;													//Bit 1
							case 2:	set_bit2();	break;													//Bit 2
							case 3:	set_bit2();	break;													//Bit 3
							case 4:	set_bit2();	break;													//Bit 4
							case 5:	set_bit2();	break;													//Bit 5
							case 6:	set_bit2();	break;													//Bit 6
							case 7:																		//Bit 7:
								byte_cont=0;															//Fim de cont
								recebendo=0;															//Não estará mais como "recebendo"
								dado_sel=0;																//Próximos bits recebidos irão pra dado_rx
								dado_rx2++;																//Seta bit
								start=0;																//Chegando ao fim, seta start para 0, para possibilitar receber novo startcode
								byte_test=1;															//Habilita testar se dado_rx é igual a dado_rx2
								break;
						}
					}
				}
			}
		}
		if(byte_test){																					/// BYTE TEST
			if(dado_rx==dado_rx2){																		//Testa se os dois bytes recebidos são iguais
				byte_done=1;																			//Caso iguais, byte pronto para uso
				dado_rx2=0;																				//Zera registrador auxiliar
				printf("\fDado recebido: %c",dado_rx);													//Imprime no LCD o dado recebido
				dado_rx=0;																				//Zera dado já utilizado
				/// TODO
				/// PROTOCOLO COMEÇA AQUI
			}
			else{																						//Caso diferentes
				byte_done=0;																			//Assegura que byte_done será 0
				dado_rx=dado_rx2=0;																		//Limpa registradores
			}
			byte_test=0;																				//Teste concluido
		}
		if(dado_tx && !recebendo){																		//Se dado_tx for diferente de 0 e não estiver recebendo
			enviando=1;																					//Avisa que dado será enviado
		}
		if(enviando){																					//Se há dado para enviar, habilita rotina de envio
			if(enviar){																					//Quando detectar passagem por zero
				send();																					//Chamará send()
			}
		}
	}
}