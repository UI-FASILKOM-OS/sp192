# REV01 Wed Sep 11 13:00:05 WIB 2019
# START Wed Sep 11 12:20:16 WIB 2019
#
# To Compile: make
# To Clean:   make clean

CC=gcc

P00=simple_write
P01=simple_read

EXECS= \
	$(P00) \
	$(P01) \


all:    seealso $(EXECS) 

.phony: clean all seealso

clean: seealso
	rm -f ${EXECS}

seealso:
	@echo "=============================="
	@echo "See also file Checklist02a.pdf"
	@echo "=============================="
