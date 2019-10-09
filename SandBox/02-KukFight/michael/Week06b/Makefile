# To Compile: make
# To Clean: make clean

CC=gcc

P01=simple_read
P02=simple_writeX
P03=exercise1
P04=exercise2
P05=exercise3
P06=exercise4
P07=exercise5

EXECS= \
  $(P01) \
  $(P02) \
  $(P03) \
  $(P04) \
  $(P05) \
  $(P06) \
  $(P07) \
EXTRA= \

all: seealso $(EXECS)

.phony: clean all seealso

clean: seealso
	rm -f ${EXECS} ${EXTRA}

seealso:
	@echo "=============================="
	@echo "See also file Checklist04s.pdf"
	@echo "=============================="
