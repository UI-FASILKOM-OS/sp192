CC=gcc

P01=hello1
P02=hello2
P03=advhello1
P04=advhello2
P05=advhello3
P06=program0
EXECS= \
   $(P01) \
   $(P02) \
   $(P03) \
   $(P04) \
   $(P05) \
   $(P06)


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

