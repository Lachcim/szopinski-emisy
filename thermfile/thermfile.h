/*
*	THERMFILE.H
*	Common definitions for the Thermfile software.
*/

#ifndef THERMFILE_H
#define THERMFILE_H

#include <stdio.h>
#include <stdbool.h>

char readFile(char*, FILE*);
char writeFile(char*, FILE*, char*);

void* openSerial(char*);
void setLongTimeout(void*, bool);
char readSerial(void*, char);
char readSerialString(void*, int, char*);
char writeSerial(void*, char);
void closeSerial(void*);

#endif
