CC = gcc
CFLAGS = -g -std=gnu99 -Wall
CUNIT = -L/home/ff/cs61c/cunit/install/lib -I/home/ff/cs61c/cunit/install/include -lcunit
ASSEMBLER_FILES = utils.c tables.c translate_utils.c translate.c

all: assembler

check: test-assembler

assembler: clean
	$(CC) $(CFLAGS) -o assembler assembler.c $(ASSEMBLER_FILES)

test-assembler: clean
	$(CC) $(CFLAGS) -DTESTING -o test-assembler test_assembler.c $(ASSEMBLER_FILES) $(CUNIT)
	./test-assembler

clean:
	rm -f *.o assembler test-assembler core
