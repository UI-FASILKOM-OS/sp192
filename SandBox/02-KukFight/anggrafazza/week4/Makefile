C=gcc
 
P01=program1
P02=program2

EXECS= \
       $(P01)\
       $(P02)\

EXTRA = \
	sltest2

all: seealso $(EXECS)

.phony : clean all seealso

clean: seealso
	rm -f ${EXECS} ${EXTRA}

seealso:
	@echo "============================="
