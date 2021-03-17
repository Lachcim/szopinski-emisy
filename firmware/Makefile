PROG ?= usbasp

SRC = $(wildcard *.c)
OBJ = $(SRC:.c=.o)

main.hex: $(OBJ)
	avr-objcopy -O ihex -R .eeprom $< $@
	
%.o: %.c
	avr-gcc -Wall -Os -mcall-prologues -mmcu=atmega328p $(SRC) -Wl,-gc-sections -Wl,-relax -o $@

.PHONY: clean
clean:
	rm -f *.o *.hex

.PHONY: upload
upload: main.hex
	avrdude -p m328p -c $(PROG) -V -U flash:w:main.hex
