# REV01 Mon Sep 16 11:48:37 WIB 2019
# START Mon Sep 16 10:03:15 WIB 2019
#
# To Compile: make
# To Clean:   make clean

CC=gcc

P01=simpleread
P02=simplewriteX
P03=suatuscript
P04=exercise1
P05=exercise2
P06=exercise3
P07=exercise4
P08=exercise5


EXECS= \
   $(P01) \
   $(P02) \
   $(P03) \
   $(P04) \
   $(P05) \
   $(P06) \
   $(P07) \
   $(P08) \


EXTRA= \
   dummy \


all:	seealso $(EXECS) 

.phony: clean all seealso

clean: seealso
	rm -f ${EXECS} ${EXTRA}

seealso:
	@echo "=============================="
	@echo "See also file Checklist02a.pdf"
	@echo "=============================="



