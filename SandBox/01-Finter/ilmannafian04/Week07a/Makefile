# REV01 Mon Oct 14 14:00:00 WIB 2019
# START Wed Sep 11 12:20:16 WIB 2019
#
# To Compile: make
# To Clean:   make clean

CC=gcc

P01=forkpipe
P02=forkpipe2

EXECS= \
   $(P01) \
   $(P02) \

all:	seealso $(EXECS) 

.phony: clean all seealso

clean: seealso
	rm -rf ${EXECS}
seealso:
	@echo "================================================"
	@echo "See also https://github.com/UI-FASILKOM-OS/sp192"
	@echo "================================================"


