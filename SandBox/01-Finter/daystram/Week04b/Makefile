CC=gcc
CFLAGS=-pthread

P00=program0
P01=program1
P02=program2
P03=program3

EXECS= \
	   $(P00)\
	   $(P01)\
	   $(P02)\
	   $(P03)\

MEMFILES= \
	   demo-file.bin \
.phony: clean all

all: $(EXECS)

clean:
	rm -f ${MEMFILES}
	rm -f $(EXECS)
