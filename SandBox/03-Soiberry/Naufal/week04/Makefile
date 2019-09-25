CC=gcc

P01=prog1
P02=prog2
P03=try1
P04=try2


EXECS= \
   $(P01) \
   $(P02) \
   $(P03) \
   $(P04) \


all:	seealso $(EXECS) 

.phony: clean all seealso

clean: seealso
	rm -f ${EXECS}

seealso:
	@echo "=============================="
	@echo "See also file Checklist02a.pdf"
	@echo "=============================="