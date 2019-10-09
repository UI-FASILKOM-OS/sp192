# To Compile: make
# To Clean: make clean

CC=gcc

P01=simple_read

EXECS= \
  $(P01) \
  $(P02) \

EXTRA= \

all: seealso $(EXECS)

.phony: clean all seealso

clean: seealso
	rm -f ${EXECS} ${EXTRA}

seealso:
	@echo "=============================="
	@echo "See also file Checklist06.pdf"
	@echo "=============================="
