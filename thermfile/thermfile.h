/*
*	THERMFILE.H
*	Common definitions for the Thermfile software.
*/

#ifndef THERMFILE_H
#define THERMFILE_H

char readFile(char*, FILE*);
char writeFile(char*, FILE*, char*);

void* openSerial(char*);
char readSerial(void*, char);
char readSerialString(void*, int, char*);
char writeSerial(void*, char);
void closeSerial(void*);

#endif
