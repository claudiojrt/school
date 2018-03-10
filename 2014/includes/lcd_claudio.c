///*************************************************************
/// Versão: 3.1
///	Autor: Cláudio Tondin
/// Data da Versão: Mai/2015
///*************************************************************

#include	<htc.h>
#include	<stdio.h>
#include	"lcd_claudio.h"
#ifndef _XTAL_FREQ
#define _XTAL_FREQ 4000000
#endif

#define LCD_RS	RC6
#define LCD_EN	RC7

void Enable(){
	LCD_EN=1;
	__delay_us(2);
	LCD_EN=0;
}

void Write(unsigned char c){
	PORTC&=0XF0;
	PORTC|=c >> 4;
	Enable();
	PORTC&=0XF0;
	PORTC|=(c & 0X0F);
	Enable();
	__delay_us(40);
}

void Clear(void){
	LCD_RS = 0;
	Write(0x01);
	__delay_ms(2);
}

void lcd_puts(const char * s){
	LCD_RS = 1;
	while(*s)
	Write(*s++);
}

void lcd_putc(char c){
	switch (c){
		case '\f':
			Clear();
			break;
		case '\n':
			lcd_goto(0x40);
			break;
		case '\r':
			LCD_RS = 0;
			Write(0x80);
			break;
		case '\b':
			LCD_RS=0;
			Write(0b0000010000);
			LCD_RS=1;
			lcd_putc(32);
			LCD_RS=0;
			Write(0b0000010000);
			break;
		case '\t':
			LCD_RS=0;
			Write(0b0000010100);
			Write(0b0000010100);
			break;
		default:
			LCD_RS = 1;
			Write( c );
			break;
	 }
}

void lcd_goto(unsigned char pos){
	LCD_RS = 0;
	Write(0x80+pos);
}

void lcd_init(){
	__delay_ms(15);
	PORTC&=0xF0;
	PORTC|=0X03;
	Enable();
	__delay_ms(5);
	PORTC&=0xF0;
	PORTC|=0X03;
	Enable();
	__delay_us(100);
	PORTC&=0xF0;
	PORTC|=0X02;
	Enable();
	__delay_us(40);
	Write(0x28);
	Write(0x0D);
	Write(0x06);
	Clear();
}

void putch(char c){
	lcd_putc(c);
}