/*
	OP.C
	Basic operations to be called from the main loop.
*/

#include <avr/io.h>
#include <avr/interrupt.h>
#include "firmware.h"

#define INIT_TIMEOUT 10000
#define READ_TIMEOUT 80
#define PROBE_TIMEOUT 1

static volatile int initState;
static int initTimeout;

static volatile int readTimeout;
static int readProbeTimeout;
static char readSync;
static int readPoll[9];

void initialize() {
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
	//reset read poll
	for (int i = 0; i < 9; i++)
		readPoll[i] = 0;
		
	//remember sync value of this symbol
	readSync = PHOTO_SYNC;
	
	//set timeouts
	readTimeout = READ_TIMEOUT;
	readProbeTimeout = 1;
	
	//wait until readout is finished
	while (readTimeout != 0 && !error);
	if (error) return 0;
	
	//parse voting result
	char result = 0;
	for (int i = 0; i < 8; i++) {
		result <<= 1;
		result |= readPoll[i] > 0;
	}
	
	//invert result if ctrl is high
	if (readPoll[8] > 0)
		result = ~result;
	
	return result;
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
	
	//wait for voting time
	readProbeTimeout--;
	if (readProbeTimeout != 0)
		return;
	
	//collect votes
	char readout[] = {
		PHOTO_0, PHOTO_1, PHOTO_2,
		PHOTO_3, PHOTO_4, PHOTO_5,
		PHOTO_6, PHOTO_7, PHOTO_CTRL
	};
	
	//cast votes
	for (int i = 0; i < 9; i++)
		readPoll[i] += readout[i] ? 1 : -1;
	
	//reset probe timeout
	readProbeTimeout = PROBE_TIMEOUT;
}

ISR(TIMER0_COMPA_vect) {
	//update init and read
	if (initState) checkInit();
	if (readTimeout) checkRead();
}
ISR(PCINT0_vect) {
	//trigger emergency error
	if (inSession && EMERGENCY) error = 'E';
}
