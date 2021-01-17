CC=gcc

P01=simple_read
P02=simple_writeX
EXECS= \
   $(P01) \
   $(P02)


EXTRA= \
   sltest2 \

all:	seealso $(EXECS) 

.phony: clean all seealso

clean: seealso
	rm -f ${EXECS} ${EXTRA}

seealso:
	@echo "simple read"
