# REV01 Wed Sep 11 13:00:05 WIB 2019
# START Wed Sep 11 12:20:16 WIB 2019
#
# To Compile: make
# To Clean:   make clean

CC=gcc

P00=program0
P01=program1
P02=program2
Pmain=main

EXECS= \
    $(P00) \
    $(P01) \
    $(P02) \
    $(Pmain) \
   

all:	seealso $(EXECS) 

.phony: clean all seealso

clean: seealso
	rm -f ${EXECS}

seealso:
	@echo "=============================="
	@echo "See also file Checklist02a.pdf"
	@echo "=============================="

