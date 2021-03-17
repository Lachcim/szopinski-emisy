/*
	IO.C
	Code for handling USART communication with the host device.
*/

#include <stdbool.h>
#include <avr/io.h>

void awaitSerial(char signal) {
	//wait until the specified byte is received
	while (true) {
		while (!(UCSR0A & (1 << RXC0)));
		if (UDR0 == signal) return;
	}
}

void sendSerial(char signal) {
	//wait until the USART data register is empty, then send the specified byte
	while (!(UCSR0A & (1 << UDRE0)));
	UDR0 = signal;
}
