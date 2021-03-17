PROG ?= usbasp

SRC = $(wildcard *.c)

main.hex: main.o
	avr-objcopy -O ihex -R .eeprom $< $@
	
main.o: $(SRC)
	avr-gcc -Wall -Os -mcall-prologues -mmcu=atmega328p $(SRC) -Wl,-gc-sections -Wl,-relax -o $@

.PHONY: clean
clean:
	rm -f *.o *.hex

.PHONY: upload
upload: main.hex
	avrdude -p m328p -c $(PROG) -V -U flash:w:main.hex
