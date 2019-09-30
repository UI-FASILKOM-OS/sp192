# To Compile: make
# To Clean: make clean

CC=gcc

P01=user1
P02=user2
P03=program0
P04=program1

EXECS= \
  $(P01) \
  $(P02) \
  $(P03) \
  $(P04) \

EXTRA= \

all: seealso $(EXECS)

.phony: clean all seealso

clean: seealso
	rn -f ${EXECS} ${EXTRA}

seealso:
	@echo "=============================="
	@echo "See also file Checklist04s.pdf"
	@echo "=============================="
