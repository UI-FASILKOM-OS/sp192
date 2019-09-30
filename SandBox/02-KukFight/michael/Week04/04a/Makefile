# To Compile: make
# To Clean: make clean

CC=gcc

P01=program1
P02=program2
P03=program3
P97=test
P98=program0
P99=05b-fork

EXECS= \
  $(P01) \
  $(P02) \
  $(P03) \
  $(P97) \
  $(P98) \
  $(P99) \

EXTRA= \

all: seealso $(EXECS)

.phony: clean all seealso

clean: seealso
	rn -f ${EXECS} ${EXTRA}

seealso:
	@echo "=============================="
	@echo "See also file Checklist04s.pdf"
	@echo "=============================="
