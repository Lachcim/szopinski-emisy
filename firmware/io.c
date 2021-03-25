/*
	IO.C
	Code for handling USART communication with the host device.
*/

#include <stdbool.h>
#include <stddef.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include "firmware.h"

static volatile short receiveBuffer = -1;
static char* volatile pos = NULL;
static char* volatile end = NULL;

void awaitSerial(char signal) {
	//wait until the specified byte is received
	while (receiveBuffer != (unsigned char)signal);
	receiveBuffer = -1;
}

void sendSerial(char signal) {
	//wait until data register is empty and async comms are over, then send byte
	while (pos != NULL);
	while (!(UCSR0A & (1 << UDRE0)));
	UDR0 = signal;
}

void sendSerialAsync(char* data, size_t length) {	
	//handle busy buffer
	if (pos != NULL) {
		error = 'B';
		return;
	}
	
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
ISR(USART_RX_vect) {
	//update receive buffer
	receiveBuffer = UDR0;
	
	//handle emergency
	if (inSession && receiveBuffer == 'X') error = 'E';
}
