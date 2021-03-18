/*
	IO.C
	Code for handling USART communication with the host device.
*/

#include <stdbool.h>
#include <stddef.h>
#include <avr/io.h>
#include <avr/interrupt.h>

static char* pos = NULL;
static char* end = NULL;

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

void sendSerialAsync(char* data, size_t length) {
	//disable serial interrupts
	UCSR0B &= ~(1 << UDRIE0);
	
	//set position and end of stream pointers, comms will be handled by interrupt
	pos = data;
	end = pos + length;
	
	//enable interrupts
	UCSR0B |= (1 << UDRIE0);
}

ISR(USART_UDRE_vect) {
	//don't handle sync comms
	if (pos == NULL)
		return;
		
	//send next byte
	UDR0 = *pos;
	pos++;
	
	//mark transmission as finished
	if (pos == end)
		pos = NULL;
}
