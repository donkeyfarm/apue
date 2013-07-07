vpath %.c src/
vpath %.h include/
vpath %.o lib/

CFLAGS = -Iinclude


.PHONY: all
all: bin/shell
	mv *.o lib/

apue.o: figB.3.c apue.h
	gcc $(CFLAGS) -c $< -o $@

bin/shell: fig1.7.o apue.o
	gcc $(CFLAGS) -o $@ $^

fig1.7.o: fig1.7.c apue.h
	gcc $(CFLAGS) -c $< -o $@
