CC=gcc

P01=simpleread
P02=simplewriteX

EXECS= \
   $(P01) \
   $(P02) \


EXTRA= \
   dummy \


all: seealso $(EXECS) 

.phony: clean all seealso

clean: seealso
	rm -f ${EXECS} ${EXTRA}

seealso:
	@echo "=============================="
	@echo "See also file Checklist02a.pdf"
	@echo "=============================="



