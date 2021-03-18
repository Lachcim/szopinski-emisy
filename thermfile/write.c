/*
*	WRITE.C
*	Code for interfacing with the thermal printer.
*/

#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include <time.h>

static const char* const BLACK = "\xDB\xDB\xDB\xDB";
static const char* const WHITE = "\x20\x20\x20\x20";

void printByte(FILE* printer, char byte, char* comment, bool even) {
	//compose human-readable text
	char text[4] = {0x20, 0x20, 0x20, 0x20};
	if (!comment) {
		//print ASCII char or hex representation
		if (byte < 32 || byte >= 127) {
			sprintf(text, "%02hX", byte & 0xFF);
			text[2] = 0x20;
		}
		else
			text[1] = byte;
	}
	else
		memmove(text, comment, 4);
	
	//count high bits and invert byte if needed
	int ones = 0;
	for (int i = 0; i < 8; i++)
		if ((byte << i) & 0x80) ones++;
	if (ones > 4)
		byte = ~byte;
	
	//write data to printer
	for (int line = 0; line < 2; line++) {
		//print data bits
		for (int i = 0; i < 8; i++)
			fputs((byte << i) & 0x80 ? BLACK : WHITE, printer);
		
		//print text
		fputc(text[line * 2 + 0], printer);
		fputc(text[line * 2 + 1], printer);
		
		//print control and sync
		fputs((ones > 4) ? BLACK : WHITE, printer);
		fputs(even ? BLACK : WHITE, printer);
		fputs("\r\n", printer);
	}
}

void printHeader(FILE* printer, char* filename) {
	//reset the printer and set line spacing
	fputs("\x1B\x40\x1B\x33\x31", printer);
	
	//print human readable header
	fputs("THERMFILE printout\r\n", printer);
	if (filename) fprintf(printer, "%s\r\n", filename);
	
	//print time
	char timeBuf[64];
	time_t printoutTime = time(0);
	strftime(timeBuf, 64, "%Y-%m-%d %H:%M:%S", localtime(&printoutTime));
	fputs(timeBuf, printer);
	
	//add margin
	for (int i = 0; i < 10; i++)
		fputs("\r\n", printer);
}
void printLength(FILE* printer, unsigned long long length, bool* even) {
	//handle zero length
	if (length == 0) {
		printByte(printer, 0, "0L\x20\x20", *even);
		*even ^= true;
		return;
	}
	
	//buffer human-readable length
	int bufPos = 0;
	char* lengthBuf = malloc(128);
	memset(lengthBuf, 0x20, 128);
	int zero = sprintf(lengthBuf, "%lldL", length);
	lengthBuf[zero] = 0x20;
	
	//print length bytes
	while (length != 0) {
		//get 7 least significant bits of length
		char lengthByte = length & 0x7F;
		length >>= 7;
		
		//mark end of header with MSB
		if (length == 0) lengthByte |= 0x80;
		
		//print length byte
		printByte(printer, lengthByte, &lengthBuf[bufPos], *even);
		*even ^= true;
		bufPos += 4;
	}
	
	//free length text buffer
	free(lengthBuf);
}
void printTerminator(FILE* printer, bool even) {
	//print final sync signal
	if (even) printByte(printer, 0, "SYNC", true);
	
	//add margin and cut paper
	for (int i = 0; i < 7; i++)
		fputs("\r\n", printer);
	fputs("\x1B\x69", printer);
}

void writeStream(FILE* printer, FILE* input, char* filename) {
	
}
void writeFile(FILE* printer, FILE* input, char* filename) {
	//obtain file length
	fseek(input, 0, SEEK_END);
	unsigned long long length = ftell(input);
	fseek(input, 0, SEEK_SET);
	
	//for files with indeterminate length, execute stream writing routine
	if (length == 0) {
		writeStream(printer, input, filename);
		return;
	}
	
	//print header and obtained length
	bool even = true;
	printHeader(printer, filename);
	printLength(printer, length, &even);
	
	//print binary data
	int byte = getc(input);
	while (byte != EOF) {
		printByte(printer, byte, 0, even);
		
		even ^= true;
		byte = getc(input);
	}
	
	//finish printout
	printTerminator(printer, even);
}
