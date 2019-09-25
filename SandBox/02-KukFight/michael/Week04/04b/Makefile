# To Compile: make
# To Clean: make clean

CC=gcc

P01=user1
P02=user2

EXECS= \
  $(P01) \
  $(P02) \

EXTRA= \

all: seealso $(EXECS)

.phony: clean all seealso

clean: seealso
	rn -f ${EXECS} ${EXTRA}

seealso:
	@echo "=============================="
	@echo "See also file Checklist04s.pdf"
	@echo "=============================="
