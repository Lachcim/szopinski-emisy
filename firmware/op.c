/*
	OP.C
	Basic operations to be called from the main loop.
*/

#include <avr/io.h>
#include <avr/interrupt.h>
#include "firmware.h"

#define INIT_DELAY 50
#define INIT_TIMEOUT 9950
#define READ_TIMEOUT 80

static volatile int initState = 0;
static int initTimeout;

static volatile int readTimeout = 0;
static char readSync;
static char readHistory[256];
static volatile unsigned char readHistorySize;

static volatile int waitTimeout = 0;

void initialize() {
	//wait for LEDs to come on
	wait(INIT_DELAY);
	
	//reset init state and await initialization
	initState = 2;
	initTimeout = INIT_TIMEOUT;
	
	while (initState != 0 && !error);
}

void checkInit() {
	//check for timeout
	initTimeout--;
	if (initTimeout == 0) {
		error = 'I';
		initState = 0;
		return;
	}
	
	//check for low and high sync
	if (initState == 2 && !PHOTO_SYNC)
		initState--;
	if (initState == 1 && PHOTO_SYNC)
		initState--;
}

char readByte() {
	//reset read state
	readSync = PHOTO_SYNC;
	readHistorySize = 0;
	readTimeout = READ_TIMEOUT;
	
	//wait until readout is finished
	while (readTimeout != 0 && !error);
	if (error) return 0;
	
	//return mid-symbol result
	return readHistory[(readHistorySize * 11) >> 4];
}

void checkRead() {
	//check for end of symbol
	if (PHOTO_SYNC != readSync) {
		readTimeout = 0;
		return;
	}
	
	//check for timeout
	readTimeout--;
	if (readTimeout == 0) {
		error = 'R';
		return;
	}
	
	//collect bits
	char readout[] = {
		PHOTO_0, PHOTO_1, PHOTO_2,
		PHOTO_3, PHOTO_4, PHOTO_5,
		PHOTO_6, PHOTO_7, PHOTO_CTRL
	};
	
	//build result
	char result = 0;
	for (int i = 0; i < 8; i++) {
		result <<= 1;
		result |= (bool)readout[i];
	}
	
	//invert result if ctrl is high
	if (readout[8])
		result = ~result;
		
	//save result
	readHistory[readHistorySize] = result;
	readHistorySize++;
}

void wait(int amount) {
	//wait for the specified number of milliseconds
	waitTimeout = amount;
	while (waitTimeout && !error);
}

ISR(TIMER0_COMPA_vect) {
	//update init and read
	if (initState) checkInit();
	if (readTimeout) checkRead();
	
	//decrement wait timeout
	if (waitTimeout) waitTimeout--;
}
ISR(PCINT0_vect) {
	//trigger emergency error
	if (inSession && EMERGENCY) error = 'E';
}
