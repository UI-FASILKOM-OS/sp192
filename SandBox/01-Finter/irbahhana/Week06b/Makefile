# REV01 Wed Sep 11 13:00:05 WIB 2019
# START Wed Sep 11 12:20:16 WIB 2019
#
# To Compile: make
# To Clean:   make clean

CC=gcc

P00=simple_read
P01=simple_write
F00=tmp.txt
F01=tmp1.txt
F02=tmp2.txt
F03=tmp3.txt

EXECS= \
   $(P00) \
   $(P01) \

FILES= \
$(F00) \
$(F01) \
$(F02) \
$(F03)\

all:	seealso $(EXECS) 

.phony: clean all seealso

clean: seealso
	rm -f ${EXECS} ${FILES} ${EXTRA}
seealso:
	@echo "=============================="
	@echo "Semangat Nopal!"
	@echo "=============================="


