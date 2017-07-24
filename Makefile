all: test

liboriginal.so: original.c
	$(CC) -shared -fPIC -Wl,-Bsymbolic -o $@ $<

liboverride.so: override.c
	$(CC) -shared -fPIC -o $@ $<

test: test.c liboriginal.so liboverride.so
	$(CC) -L. -o $@ $< -loriginal 

clean:
	rm -f test *.o *.so

.PHONY: clean
