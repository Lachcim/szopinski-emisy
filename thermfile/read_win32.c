/*
*	READ_WIN32.C
*	Windows-specific code for interfacing with the reader device.
*/

#ifdef _WIN32

#include <windows.h>

void* openSerial(char* device) {
	//obtain handle to serial port
	HANDLE reader = CreateFileA(device,
		GENERIC_READ | GENERIC_WRITE,
		0, NULL,
		OPEN_EXISTING,
		0, NULL);
		
	//return error if handle could not be obtained
	if (reader == INVALID_HANDLE_VALUE)
		return 0;
	
	//set timeout values
	COMMTIMEOUTS timeouts = {0};
	timeouts.ReadIntervalTimeout = 100;
	timeouts.ReadTotalTimeoutConstant = 11000;
	timeouts.WriteTotalTimeoutConstant = 100;
	SetCommTimeouts(reader, &timeouts);
	
	//set serial parameters
	DCB state;
	state.DCBlength = sizeof(DCB);
	GetCommState(reader, &state);
	state.BaudRate = CBR_9600;
	state.ByteSize = 8;
	state.StopBits = ONESTOPBIT;
	SetCommState(reader, &state);
	
	//allocate handle on the heap
	HANDLE* handle = malloc(sizeof(HANDLE));
	*handle = reader;
	return handle;
}

char readSerial(void* handle, char symbol) {
	//perform read
	char buffer;
	unsigned long byteCount;
	ReadFile(*(HANDLE*)handle, &buffer, 1, &byteCount, NULL);
	
	//handle timeout and protocol violation
	if (byteCount != 1) return 4;
	if (buffer != symbol && buffer != 'E') return 5;
	
	//handle dedicated errors
	if (buffer != symbol) {
		ReadFile(*(HANDLE*)handle, &buffer, 1, &byteCount, NULL);
		if (byteCount != 1) return 4;
		return buffer;
	}
	
	return 0;
}
char readSerialString(void* handle, int length, char* buffer) {
	//perform read
	unsigned long byteCount;
	ReadFile(*(HANDLE*)handle, buffer, length, &byteCount, NULL);
	
	//handle timeout
	if (byteCount != length) return 4;
	return 0;
}
char writeSerial(void* handle, char symbol) {
	//perform simple write operation
	unsigned long byteCount;
	WriteFile(*(HANDLE*)handle, &symbol, 1, &byteCount, NULL);
	
	//handle timeout
	if (byteCount != 1)
		return 6;
		
	return 0;
}
void closeSerial(void* handle) {
	//close and deallocate handle
	CloseHandle(*(HANDLE*)handle);
	free(handle);
}

#endif
