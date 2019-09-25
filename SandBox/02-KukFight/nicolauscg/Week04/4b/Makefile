CC=gcc

P01=program0
P02=program1
P03=program2
P04=program3
EXECS= \
   $(P01) \
   $(P02) \
   $(P03) \
   $(P04)

EXTRA= \
   sltest2 \


all:	seealso $(EXECS) 

.phony: clean all seealso

clean: seealso
	rm -f ${EXECS} ${EXTRA}

seealso:
	@echo "=============================="
	@echo "See also file Checklist02a.pdf"
	@echo "=============================="

