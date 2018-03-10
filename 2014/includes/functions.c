void serial_init(void){
	SYNC=0;
	BRGH=1;
	BRG16=0;
	SPBRGH=0;
	SPBRG=12;
	SPEN=1;
	TX9=0;
	TXEN=1;
	TXIE=0;
	RCIE=1;
	PEIE=1;
	RX9=0;
	CREN=1;
}

void send(unsigned char c){
	dado_tx=c;
	TXREG=dado_tx;
	while(!TRMT);
}

void T1_init(void){
	T1CON=0b00110100;
	TMR1IE=1;
	TMR1IF=0;
	TMR1=0;
}

void T2_init(void){
	T2CON=0b01111010;
	TMR2=0;
	PR2=255;
	CCP1CON=0b00001111;
	CCPR1L=255;
	TMR2ON=1;
}

void write(char data, char adress){
	EEPGD=0;
	EEADR=adress;
	EEDAT=data;
	WREN=1;
	EECON2=0x55;
	EECON2=0XAA;
	WR=1;
	WREN=0;
}

char read(char adress){
	EEPGD=0;
	EEADR=adress;
	RD=1;
	NOP();
	return EEDAT;
}

void adc_init(void){
	ADCON1=0b01110000;
	ADCON0=0b00000001;
	__delay_us(5);
	ADIF=0;
	ADIE=1;
}