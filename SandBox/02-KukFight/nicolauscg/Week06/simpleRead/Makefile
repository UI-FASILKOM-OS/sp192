CC=gcc

P01=simpleread
EXECS= \
   $(P01)


EXTRA= \
   sltest2 \

all:	seealso $(EXECS) 

.phony: clean all seealso

clean: seealso
	rm -f ${EXECS} ${EXTRA}

seealso:
	@echo "simple read"
