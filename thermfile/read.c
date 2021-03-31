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
	
	char error;
	
	//initialize reader
	error = writeSerial(handle, 'S');
	if (error) return error;
	error = readSerial(handle, 'C');
	if (error) return error;
	
	//obtain length
	uint64_t length;
	setLongTimeout(handle, true);
	error = readSerial(handle, 'L');
	if (error) return error;
	setLongTimeout(handle, false);
	error = readSerialString(handle, 8, (char*)&length);
	if (error) return error;
	
	//read file
	for (ptrdiff_t i = 0; i < length; i++) {
		char byte;
		error = readSerial(handle, 'D');
		if (error) return error;
		error = readSerialString(handle, 1, &byte);
		if (error) return error;
		
		fputc(byte, output);
	}
	
	//get confirmation
	setLongTimeout(handle, true);
	error = readSerial(handle, 'F');
	if (error) return error;
	
	closeSerial(handle);
	return 0;
}
