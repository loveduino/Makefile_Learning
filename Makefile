CC = gcc
CFLAGS = -Wall -g -O2
objects = main.o foo1.o foo2.o

ifeq ($(CC), gcc)
	libs=$(libs_for_gcc)
else
	libs=$(normal_libs)
endif

all:$(objects)
	$(CC) $(CFLAGS) -o main $(objects)

run:all
	@./main

$(objects): %.o: %.c
#$(CC) -c $(CFLAGS) $< -o $@

.PHONY: clean
clean:
	-del *.o main.exe
