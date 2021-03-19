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

char readFile(char*, FILE*);
char writeFile(char*, FILE*, char*);

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
	
	//open file, stdio by default
	FILE* file = readMode ? stdout : stdin;
	if (argc >= 4) {
		file = fopen(argv[3], readMode ? "wb" : "rb");
		if (file == 0) {
			fputs("Failed to open the file.\n", stderr);
			return 2;
		}
	}
	
	//perform read or write
	char error = 0;
	if (readMode) {
		error = readFile(argv[2], file);
		
		if (error == 3) fputs("Failed to open the device.\n", stderr);
		else if (error == 'I') fputs("Initialization timeout.\n", stderr);
		else if (error == 'R') fputs("Read timeout.\n", stderr);
		else if (error == 'E') fputs("Emergency stop.\n", stderr);
		else if (error == 'B') fputs("Insufficient throughput.\n", stderr);
		else if (error) fprintf(stderr, "Read error %d.", error);
	}
	else {
		error = writeFile(argv[2], file, argc >= 4 ? argv[3] : 0);
		if (error) fputs("Failed to open the device.\n", stderr);
	}
	
	//close the file handle and exit
	fclose(file);
	return error;
}
