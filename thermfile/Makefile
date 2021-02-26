src = $(wildcard *.c)
obj = $(src:.c=.o)

thermfile: $(obj)
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -m32 -o $@
	
%.o: %.c
	$(CC) -c $(CFLAGS) $^ -m32 -o $@

.PHONY: clean
clean:
	rm -f *.o
	rm -f thermfile
