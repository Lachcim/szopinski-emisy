/*
	THERMFILE
	This is a command line utility for reading and writing files
	stored on thermal paper. It communicates with a standard thermal
	line printer using the ESC/P control language and produces a
	printout designed to be read by a purpose-built reader device.
	The reader utilizes a custom protocol.
	
	Usage:
		thermfile read <device>
		thermfile read <device> <file>
		thermfile write <device>
		thermfile write <device> <file>
*/

#include <stdio.h>
#include <stdbool.h>
#include <string.h>

void readFile(FILE*, FILE*);
void writeFile(FILE*, FILE*, char*);

int main(int argc, char** argv) {
	//check for required arguments
	if (argc < 3) {
		fputs("Insufficient arguments.\n", stderr);
		return 1;
	}
	
	//parse first argument
	bool readMode = strcmp(argv[1], "read") == 0;
	if (!readMode && strcmp(argv[1], "write") != 0) {
		fputs("Invalid I/O mode.\n", stderr);
		return 1;
	}
	
	//open device
	FILE* device = fopen(argv[2], readMode ? "rb" : "wb");
	if (device == 0) {
		fputs("Failed to open the device.\n", stderr);
		return 2;
	}
	
	//open file, stdio by default
	FILE* file = readMode ? stdout : stdin;
	if (argc >= 4) {
		file = fopen(argv[3], readMode ? "wb" : "rb");
		if (file == 0) {
			fputs("Failed to open the file.\n", stderr);
			return 3;
		}
	}
	
	//perform read or write
	if (readMode) readFile(device, file);
	else writeFile(device, file, argc >= 4 ? argv[3] : 0);
	
	//close file handles and exit
	fclose(file);
	fclose(device);
}
