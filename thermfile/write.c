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
	//print each bit of byte starting from MSB
	for (int i = 0; i < 8; i++) {
		fputs(byte & 0x80 ? BLACK : WHITE, printer);
		byte <<= 1;
	}
}
void printReadable(char byte, bool start, FILE* printer) {
	//return if not on the first line of entry
	if (!start) {
		fputs("  ", printer);
		return;
	}
	
	//print ASCII character or hexadecimal representation
	if (byte >= 32 && byte < 127)
		fprintf(printer, " %c", byte);
	else
		fprintf(printer, "%02hhX", byte & 0xFF); //reduce to 8 bits
}
void printSync(bool end, bool even, FILE* printer) {
	//print control and synchronization patterns
	fputs(end ? BLACK : WHITE, printer);
	fputs(even ? BLACK : WHITE, printer);
	fputs("\r\n", printer);
}

void writeFile(FILE* printer, FILE* input, char* filename) {
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
		
	//print binary data
	bool even = true;
	int byte = getc(input);
	while (byte != EOF) {
		for (int i = 0; i < 2; i++) {
			printBits(byte, printer);
			printReadable(byte, i == 0, printer);
			printSync(false, even, printer);
		}
		
		//read next character
		even ^= true;
		byte = getc(input);
	}
	
	//print terminator
	for (int i = 0; i < 2; i++) {
		printBits(0, printer);
		printReadable(0, false, printer);
		printSync(true, even, printer);
	}
	
	//add margin and cut paper
	for (int i = 0; i < 5; i++)
		fputs("\r\n", printer);
	fputs("\x1B\x69", printer);
}
