/*
	MAIN.C
	Entry point of the firmware program. Contains the setup procedure and the
	main loop.
*/

#define F_CPU 8000000UL

#include <stdbool.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include "firmware.h"

volatile char error = 0;

int main() {
	//set timer to CTC mode, /64, clear on 124 (every 1ms), enable interrupt
	TCCR0A |= (1 << WGM01);
	TCCR0B |= (3 << CS00);
	OCR0A = 124;
	TIMSK0 |= (1 << OCIE0A);
	
	//enable UART and configure for 9600 baud, 8-bit frame, 1 stop bit
	UBRR0H = 0; UBRR0L = 51;
	UCSR0B = (1 << RXEN0) | (1 << TXEN0);
	UCSR0C = (3 << UCSZ00);
	
	//enable global interrupts
	sei();
	
	//main loop
	while (true) {
		//handle error from previous failed iteration
		if (error) {
			sendSerial('E');
			sendSerial(error);
			error = 0;
		}
		
		//wait for start signal and send confirmation
		awaitSerial('S');
		sendSerial('C');
		
		//perform initialization: await sync signal
		initialize();
		if (error) continue;
		
		sendSerial('@');
	}
}

ISR(TIMER0_COMPA_vect) {
	//update init state
	if (initState) checkInit();
}