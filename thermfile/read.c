/*
*	READ.C
*	Generic code for interfacing with the reader device.
*/

#include <stdio.h>
#include <stdint.h>
#include "thermfile.h"

char readFile(char* reader, FILE* output) {
	//open serial handle
	void* handle = openSerial(reader);
	if (!handle) return 3;
	
	closeSerial(handle);
	return 0;
}
