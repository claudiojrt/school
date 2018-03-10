#include <stdio.h>
#include <stdlib.h>
#include <windows.h>
#include <conio2>
#include <locale.h>
#include <time.h>

HANDLE  AbreComm (char *nomecom);
COORD   coord={0,0};
char    ready=0,C_on=0;
char    menu1=0;
char    Cstat[10];
char    PIC_status;
char    seg=0,flag=0,flag_3=0;
int     passageiros=0;
char    mincont='A';
char    leitura[100];

char data1[13];                     //Data para arquivos
char data2[13];                     //Data para passageiros
char data3[13];                     //Data para comparação
char data_anterior[13];             //Data para comparação
char hora[7];                       //Hora para sistema
char hora_anterior[7];              //Hora para comparação
char hora_p[7];                     //Hora para passageiros
char minuto[7],minuto_anterior[7];  //Minutos para comparação
struct tm * DATA;                   //Estrutura do horário
time_t t;
char ajuste[2];

//Menu principal
void mostra (void){
    _strdate(data2);
    ajuste[0]=data2[0];ajuste[1]=data2[1];data2[0]=data2[3];data2[1]=data2[4];data2[3]=ajuste[0];data2[4]=ajuste[1];
	//Carimbo de data
    printf("%s",data2);
    gotoxy(29,0);
	//Título
    printf("[Catraca Inteligente]");
    gotoxy(1,24);
    printf("COM5: 9600 bits/s");
    gotoxy(50,24);
    printf("Status da catraca: %s",Cstat);
    gotoxy(0,3);
    printf("[1] - Liberar catraca\n");
    printf("[2] - Travar catraca\n");
    printf("[3] - Atualizar hora do trem");
}

//Função gotoxy (tela)
void gotoxy(int x,int y){
    coord.X=x;
    coord.Y=y;
    SetConsoleCursorPosition(GetStdHandle(STD_OUTPUT_HANDLE),coord);
 }


int main(void){
    //Configurações básicas
    setlocale(LC_ALL, "Portuguese");
    DCB dcb;
    HANDLE hcom;
    unsigned long n;
    char port_name[]="COM5";
    char *ncom = port_name,x=1,y=1;
    char dado[1];
    _strdate(data2);
    ajuste[0]=data2[0];ajuste[1]=data2[1];data2[0]=data2[3];data2[1]=data2[4];data2[3]=ajuste[0];data2[4]=ajuste[1];

    //Rotina de conexão
    gotoxy(27,12);
    printf("Estabelecendo comunicação...");
    hcom=AbreComm(ncom);
    if(hcom==INVALID_HANDLE_VALUE){
        //Enquanto usuário não fechar o programa, não se estabelece a conexão
        while(menu1!=0x1b && hcom==INVALID_HANDLE_VALUE){
            system("cls");
            gotoxy(29,10);
            printf("Falha na comunicação.");
            gotoxy(28,12);
            printf("[ESC] - Sair do programa");
            gotoxy(28,13);
            printf("Qualquer tecla - Repetir");
            menu1=getch();
            if(menu1==0x1b){
                system("cls");
                gotoxy(28,12);
                printf("Fechando o programa...");
                getch();
                exit(0);
            }
            system("cls");
            gotoxy(27,12);
            printf("Estabelecendo comunicação...");
            hcom=AbreComm(ncom);
        }
    }

    //Envia a confirmação de conexão para o PIC
    *dado='r';
    WriteFile(hcom,dado, 1, &n, NULL);
    *dado=0;
	//Carimbo de status da catraca
    strcpy(Cstat,"Online");
    system("cls");
    mostra();

    //Abre/cria o arquivo correspondente a data atual
    time(&t);
    DATA = localtime(&t);
    strftime(data1, 11, "%Y_%m_%d", DATA);
    data1[10]='.';
    data1[11]='t';
    data1[12]='x';
    data1[13]='t';
    data1[14]='\0';
    FILE * dat = fopen(data1,"a+");
    _strdate(data2);
    ajuste[0]=data2[0];ajuste[1]=data2[1];data2[0]=data2[3];data2[1]=data2[4];data2[3]=ajuste[0];data2[4]=ajuste[1];
    _strtime(hora);
    fprintf(dat,"==========================================================\n");
	//Pega hora/data atual e marca o carimbo de inicio no arquivo
    fprintf(dat,"%s %s\tInício das operações.\n\n",data2,hora); 
    _strdate(data2);
	//Salva a data atual para posterior comparação
    strcpy(data_anterior,data2);                                
    passageiros=0;
    C_on=1;

    while(1){
        //Lê a todo instante a entrada serial
        *dado=0;
        ReadFile(hcom, dado, 1, &n, NULL);

        //'f' = Start byte, indica que haverá uma mudança de estado
        if(*dado == 'f'){
            //Enquanto o dado lido for == a 'f', o programa continua lendo para receber o próximo dado
            while(*dado == 'f'){
                ReadFile(hcom, dado, 1, &n, NULL);
            }

            //Ao receber outro dado (diferente de 'f') ele testa para ver o modo do comando (mode byte)
            switch(*dado){
                //Se o mode byte for 'p', indica que houve passagem pela catraca
                case 'p':
                    printf("%c",*dado);
                    while(*dado == 'p'){
                        ReadFile(hcom, dado, 1, &n, NULL);
                        if(*dado != 'p'){
                            _strtime(hora_p);
                            fprintf(dat,"\t %s\tPassageiro %i\n",hora_p,++passageiros);
                        }
                        *dado=0;
                    }
                    break;

                //Se o mode byte for 't', significa o teste de conexão do PIC para o PC
                case 't':
                    *dado='t';
                    WriteFile(hcom,dado, 1, &n, NULL);
                    *dado=0;
                    break;

                //Se o mode byte for 'h', indica o retorno do teste de conexão do PC
                case 'h':
                    PIC_status=1;
                    seg=0;
                    break;
            }
        }

        //Verifica se foi pressionado alguma tecla
        if(kbhit()){
            menu1=getch();
			//Se o usuário der ESC
            if(menu1==0x1b && flag_3==0){
				//Envia o byte de encerramento para o PIC
                *dado='z';
                WriteFile(hcom,dado, 1, &n, NULL);
                _strtime(hora);
                _strdate(data2);
                ajuste[0]=data2[0];ajuste[1]=data2[1];data2[0]=data2[3];data2[1]=data2[4];data2[3]=ajuste[0];data2[4]=ajuste[1];
				//Carimba horário e data do término das operações (finalizado pelo usuário)
                fprintf(dat,"\n%s %s\tFim das operações.\n",data2,hora);
                fprintf(dat,"==========================================================\n\n");
				//Fecha o ponteiro de arquivo
                fclose(dat);
                system("cls");
                gotoxy(23,12);
                printf("Programa finalizado pelo usuário.");
                getch();
                return(0);
            }

            if(menu1==0x1b && flag_3==1){
                flag_3=0;
                system("cls");
                mostra();
            }

            if(menu1=='1' && flag_3==0){
                *dado='r';
                WriteFile(hcom,dado, 1, &n, NULL);
                *dado=0;
				 //Carimbo de status da catraca
                strcpy(Cstat,"Online");    
                system("cls");
                mostra();
                *dado=mincont;
                WriteFile(hcom,dado, 1, &n, NULL);
                *dado=0;
                if(C_on==0){
                    _strtime(hora);
                    fprintf(dat,"\t %s\tCatraca liberada.\n",hora);
                }
                C_on=1;
            }

            if(menu1=='2' && flag_3==0){
                *dado='z';
                WriteFile(hcom,dado, 1, &n, NULL);
                *dado=0;
				//Carimbo de status da catraca
                strcpy(Cstat,"Travada");     
                system("cls");
                mostra();
                if(C_on==1){
                    _strtime(hora);
                    fprintf(dat,"\t %s\tCatraca travada.\n",hora);
                }
                C_on=0;
            }

            if(menu1=='3' && flag_3==0){
                flag_3=1;
                gotoxy(0,3);
                printf("                                \n                                 \n                                    \n");
                gotoxy(0,3);
                printf("[1] - 10 minutos\n");
                printf("[2] - 9 minutos\n");
                printf("[3] - 8 estação\n");
                printf("[4] - 7 minutos\n");
                printf("[5] - 6 minutos\n");
                printf("[6] - 5 minutos\n");
                printf("[7] - 4 minutos\n");
                printf("[8] - 3 minutos\n");
                printf("[9] - 2 minutos\n");
                printf("[0] - 1 minuto\n");
                printf("[Q] - Na estação\n");
                menu1=0;
            }
                    if(menu1=='1' && flag_3==1){ mincont='B'; *dado=mincont; if(C_on){WriteFile(hcom,dado, 1, &n, NULL);} flag_3=0; system("cls"); mostra();}
                    if(menu1=='2' && flag_3==1){ mincont='C'; *dado=mincont; if(C_on){WriteFile(hcom,dado, 1, &n, NULL);} flag_3=0; system("cls"); mostra();}
                    if(menu1=='3' && flag_3==1){ mincont='D'; *dado=mincont; if(C_on){WriteFile(hcom,dado, 1, &n, NULL);} flag_3=0; system("cls"); mostra();}
                    if(menu1=='4' && flag_3==1){ mincont='E'; *dado=mincont; if(C_on){WriteFile(hcom,dado, 1, &n, NULL);} flag_3=0; system("cls"); mostra();}
                    if(menu1=='5' && flag_3==1){ mincont='F'; *dado=mincont; if(C_on){WriteFile(hcom,dado, 1, &n, NULL);} flag_3=0; system("cls"); mostra();}
                    if(menu1=='6' && flag_3==1){ mincont='G'; *dado=mincont; if(C_on){WriteFile(hcom,dado, 1, &n, NULL);} flag_3=0; system("cls"); mostra();}
                    if(menu1=='7' && flag_3==1){ mincont='H'; *dado=mincont; if(C_on){WriteFile(hcom,dado, 1, &n, NULL);} flag_3=0; system("cls"); mostra();}
                    if(menu1=='8' && flag_3==1){ mincont='I'; *dado=mincont; if(C_on){WriteFile(hcom,dado, 1, &n, NULL);} flag_3=0; system("cls"); mostra();}
                    if(menu1=='9' && flag_3==1){ mincont='J'; *dado=mincont; if(C_on){WriteFile(hcom,dado, 1, &n, NULL);} flag_3=0; system("cls"); mostra();}
                    if(menu1=='0' && flag_3==1){ mincont='K'; *dado=mincont; if(C_on){WriteFile(hcom,dado, 1, &n, NULL);} flag_3=0; system("cls"); mostra();}
                    if((menu1=='Q' || menu1=='q') && flag_3==1){ mincont='A'; *dado=mincont; if(C_on){WriteFile(hcom,dado, 1, &n, NULL);} flag_3=0; system("cls"); mostra();}
        }

        //Verifica data atual, e se trocou de dia, fecha arquivo do dia anterior, e inicia novo
        _strdate(data3);
		//Comando retorna 0 se as duas strings forem iguais, e 1 se forem diferentes
        if(strcmp(data_anterior,data3)){
			//Salva data atual para posteriores comparações
            strcpy(data_anterior,data3);
            time(&t);
            DATA = localtime(&t);
			//Salva na string1 a data no formado definido
            strftime(data1, 11, "%Y_%m_%d", DATA);
			//Adiciona ".txt" ao final da stirng
            data1[10]='.';
            data1[11]='t';
            data1[12]='x';
            data1[13]='t';
            data1[14]='\0';
            _strtime(hora);
			//Marca o fim das operações no arquivo do dia anterior
            fprintf(dat,"\n%s %s\tFim das operações.\n",data3,hora);
            fprintf(dat,"==========================================================\n\n");
			//Fecha arquivo do dia anterior
            fclose(dat);
			//Abre um novo arquivo com o a data atual
            FILE * dat = fopen(data1,"a+");
            fprintf(dat,"==========================================================\n");
			//Marca inicio das operações no novo arquivo
            fprintf(dat,"%s %s\tInício das operações.\n\n",data3,hora);
            passageiros=0;
        }

        //Testa a troca de minutos, e informa ao PIC se houve troca
        _strtime(minuto);
        if(minuto[4]!=minuto_anterior[4] && C_on==1){
            if(++mincont=='L'){
				mincont='A';
			}
            minuto_anterior[4]=minuto[4];
            *dado=mincont;
            WriteFile(hcom,dado, 1, &n, NULL);
        }

        //Envia um byte de teste a cada segundo para o pic, e soma em seg, e esperará receber o mesmo byte de volta
        _strtime(hora);
        if(hora[7] != hora_anterior[7]){
            hora_anterior[7]=hora[7];
            *dado='h';
            WriteFile(hcom,dado, 1, &n, NULL);
            PIC_status=0;
            seg++;
        }

        /*Ao passar 3 ciclos e a variável seg ficar com valormair do que 3, é identificado falha no sistema de comunicação,
          é marcado no arquivo a perda da conexão, e o programa entra na rotina de reconexão*/
        if(PIC_status==0 && seg>2){
            strcpy(Cstat,"Offline");
            if(PIC_status ==0 && flag==0){
				fprintf(dat,"\t %s\tFalha na conexão. Reconectando.\n",hora); flag=1;
			}
            system("cls");
            mostra();
            seg=0;
            gotoxy(1,24);
            printf("COM5: Reconectando...");
			//Fecha handle atual, para reabrir a porta COM definida
            CloseHandle(hcom);
            hcom=AbreComm(ncom);

            /*Ao reestabelecer a conexão, muda todos os bytes de modo para online, envia o byte de confirmação para o PIC
              e marca no arquivo a retomada da conexão*/
            if(hcom != INVALID_HANDLE_VALUE){
                PIC_status=1;
                flag=0;
                seg=0;
                _strtime(hora);
                fprintf(dat,"\t %s\tConexão Reestabelecida.\n",hora);
                if(C_on){
                    system("cls");
                    strcpy(Cstat,"Online");
                    mostra();
                    *dado='r';
                    WriteFile(hcom,dado, 1, &n, NULL);
                    *dado=mincont;
                    WriteFile(hcom,dado, 1, &n, NULL);
                }
                else{
                    system("cls");
                    strcpy(Cstat,"Travada");
                    mostra();
                    *dado='z';
                    WriteFile(hcom,dado, 1, &n, NULL);
                    *dado=0;
                }
            }
        }

    }

    CloseHandle(hcom);
    return 0;
}

//Função para abrir a porta COM selecionada
HANDLE AbreComm(char *nomecom){
    HANDLE hcom;
    DCB dcb = {0};

    COMMTIMEOUTS comto;

    hcom = CreateFile(
           nomecom,
           GENERIC_READ | GENERIC_WRITE,
           0,
           NULL,
           OPEN_EXISTING,
           FILE_ATTRIBUTE_NORMAL,
           NULL);

    if(hcom == INVALID_HANDLE_VALUE){
      return hcom;
    }

    if (!GetCommState(hcom, &dcb)){
		fprintf(stderr, "Erro na estrutura DCB.\n");
	}
    else{
		dcb.BaudRate    = CBR_9600;
		dcb.ByteSize    = 8;
		dcb.StopBits    = ONESTOPBIT;
		dcb.Parity      = NOPARITY;
	}

    if(!SetCommState(hcom,&dcb)){
      fputs("SetCommState Error.", stderr);
      return INVALID_HANDLE_VALUE;
    }

    GetCommTimeouts(hcom, &comto);
    comto.ReadIntervalTimeout         = MAXDWORD;
    comto.ReadTotalTimeoutMultiplier  =    0;
    comto.ReadTotalTimeoutConstant    =    0;
    comto.WriteTotalTimeoutMultiplier =    0;
    comto.WriteTotalTimeoutConstant   =    0;

    if (!SetCommTimeouts(hcom, &comto)){
		fputs("COMMTIMEOUTS Error.", stderr);
	}

    return hcom;
}
