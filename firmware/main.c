/*
	MAIN.C
	Entry point of the firmware program. Contains the setup procedure and the
	main loop.
*/

#include <stdbool.h>
#include <string.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include "firmware.h"

volatile char error = 0;
bool inSession = false;

int main() {
	//set read head pin as output
	DDRB |= READ_HEAD_PIN;
	
	//enable interrupts on emergency button pin
	PCICR |= (1 << PCIE0);
	PCMSK0 |= (1 << PCINT2);
	
	//set timer to CTC mode, /64, clear on 124 (every 1ms), enable interrupt
	TCCR0A |= (1 << WGM01);
	TCCR0B |= (3 << CS00);
	OCR0A = 124;
	TIMSK0 |= (1 << OCIE0A);
	
	//enable UART and configure for 9600 baud, 8-bit frame, 1 stop bit
	UBRR0H = 0; UBRR0L = 51;
	UCSR0B |= (1 << RXEN0) | (1 << TXEN0) | (1 << UDRIE0);
	UCSR0C |= (3 << UCSZ00);
	
	//enable global interrupts
	sei();
	
	//main loop
	while (true) {
		//call session handling procedure
		handleSession();
		
		//disable read head after session
		inSession = false;
		PORTB &= ~READ_HEAD_PIN;
		
		//handle error from failed session
		if (error) {
			sendSerial('E');
			sendSerial(error);
			error = 0;
		}
	}
}

void handleSession() {
	//wait for start signal and send confirmation
	awaitSerial('S');
	sendSerial('C');
	
	//start session and enable read head
	inSession = true;
	PORTB |= READ_HEAD_PIN;
	
	//perform initialization: await sync signal
	initialize();
	if (error) return;
	
	//define serial buffer for asynchronous transmission
	char serialBuffer[16];
	
	//read file length
	uint64_t length = 0;
	while (true) {
		//read byte and append bits to length
		char byte = readByte();
		length <<= 7;
		length |= (byte & 0x7F);
		
		//finish if MSB is set
		if (byte & 0x80) break;
	}
	
	//announce file length
	serialBuffer[0] = 'L';
	memcpy(&serialBuffer[1], &length, 8);
	sendSerialAsync(serialBuffer, 9);
	
	//read binary data
	serialBuffer[0] = 'D';
	for (ptrdiff_t i = 0; i < length; i++) {
		serialBuffer[1] = readByte();
		sendSerialAsync(serialBuffer, 2);
		if (error) return;
	}
	
	//send confirmation, will wait for async comms to clear
	sendSerial('F');
}
