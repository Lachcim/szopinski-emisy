/*
	FIRMWARE.H
	Common definitions for the entire program.
*/

#ifndef FIRMWARE_H
#define FIRMWARE_H

#include <stdbool.h>
#include <stddef.h>

#define PHOTO_0 (PINB & (1 << PB0))
#define PHOTO_1 (PIND & (1 << PD7))
#define PHOTO_2 (PIND & (1 << PD6))
#define PHOTO_3 (PIND & (1 << PD5))
#define PHOTO_4 (PINB & (1 << PB7))
#define PHOTO_5 (PINC & (1 << PC0))
#define PHOTO_6 (PINC & (1 << PC1))
#define PHOTO_7 (PINC & (1 << PC2))
#define PHOTO_CTRL (PINC & (1 << PC4))
#define PHOTO_SYNC (PINC & (1 << PC5))

#define READ_HEAD_PIN (1 << PB1)
#define EMERGENCY (PINB & (1 << PC2))

void handleSession();

void initialize();
void checkInit();
char readByte();

extern volatile char error;
extern bool inSession;

void awaitSerial(char);
void sendSerial(char);
void sendSerialAsync(char*, size_t);

#endif
