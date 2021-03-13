src = $(wildcard *.c)
obj = $(src:.c=.o)

thermfile: $(obj)
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@
	
%.o: %.c
	$(CC) -c $(CFLAGS) $^ -o $@

.PHONY: clean
clean:
	rm -f *.o
	rm -f thermfile
