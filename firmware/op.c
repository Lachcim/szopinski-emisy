/*
	OP.C
	Basic operations to be called from the main loop.
*/

#include <avr/io.h>
#include "firmware.h"

#define INIT_TIMEOUT 10000

volatile int initState;
static int initTimeout;

void initialize() {
	//reset init state and await initialization
	initState = 2;
	initTimeout = INIT_TIMEOUT;
	
	while (initState != 0 && error == 0);
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
