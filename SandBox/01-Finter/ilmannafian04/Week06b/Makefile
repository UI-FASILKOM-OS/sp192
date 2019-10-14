# REV01 Wed Sep 11 13:00:05 WIB 2019
# START Wed Sep 11 12:20:16 WIB 2019
#
# To Compile: make
# To Clean:   make clean

CC=gcc

P00=simple_read
P01=simple_writeX

T01=tmp.txt
T02=tmp2.txt
T03=tmp3.txt
T04=total.txt
T05=unik.txt
T06=laporan.txt
T07=sering.txt
T08=ZB-SOURCE

EXECS= \
   $(P00) \
   $(P01) \

TMP= \
   $(T01) \
   $(T02) \
   $(T03) \
   $(T04) \
   $(T05) \
   $(T06) \
   $(T07) \
   $(T08) \

all:	seealso $(EXECS) 

.phony: clean all seealso

clean: seealso
	rm -rf ${EXECS} ${TMP}
seealso:
	@echo "=============================="
	@echo "See also file Checklist02a.pdf"
	@echo "=============================="


