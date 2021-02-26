/*
*	WRITE.C
*	Code for interfacing with the thermal printer.
*/

#include <stdio.h>
#include <stdbool.h>
#include <time.h>

static const char* const BLACK = "\xDB\xDB\xDB\xDB";
static const char* const WHITE = "    ";

void printBits(char byte, FILE* printer) {
	for (int i = 0; i < 8; i++) {
		char bit = byte & 0x80;
		fputs(bit ? BLACK : WHITE, printer);
		byte <<= 1;
	}
}

void writeFile(FILE* printer, FILE* input, char* filename) {
	//reset the printer and set line spacing
	fputs("\x1B\x40\x1B\x33\x31", printer);
	
	//print human readable header
	fputs("THERMFILE printout\r\n", printer);
	if (filename) fprintf(printer, "%s\r\n", filename);
	
	//print time
	time_t printoutTime = time(0);
	char timeBuf[64];
	strftime(timeBuf, 64, "%Y-%m-%d %H:%M:%S", localtime(&printoutTime));
	fputs(timeBuf, printer);
	
	//add margin
	for (int i = 0; i < 10; i++)
		fputs("\r\n", printer);
		
	//print binary data
	bool even = true;
	char byte = getc(input);
	while (byte != EOF) {
		//print bits of byte
		printBits(byte, printer);

		//print human readable representation
		if (byte >= 32 && byte < 127)
			fprintf(printer, " %c", byte);
		else
			fprintf(printer, "%02X", byte);
			
		//print sync code
		fputs(WHITE, printer);
		fputs(even ? BLACK : WHITE, printer);
		fputs("\r\n", printer);
		
		//print second line of code
		printBits(byte, printer);
		fputs("  ", printer);
		fputs(WHITE, printer);
		fputs(even ? BLACK : WHITE, printer);
		fputs("\r\n", printer);
		
		//read next character
		even ^= 1;
		byte = getc(input);
	}
	
	//print terminator
	for (int i = 0; i < 2; i++) {
		printBits(0, printer);
		fputs("  ", printer);
		fputs(BLACK, printer);
		fputs(even ? BLACK : WHITE, printer);
		fputs("\r\n", printer);
	}
	
	//add margin and cut paper
	for (int i = 0; i < 5; i++)
		fputs("\r\n", printer);
	fputs("\x1B\x69", printer);
}
