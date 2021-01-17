CC=gcc

P01=simple_read
P02=simple_writeX


EXECS= \
   $(P01) \
   $(P02) \


all:	seealso $(EXECS) 

.phony: clean all seealso

clean: seealso
	rm -f tmp.txt
	rm -f tmp2.txt
	rm -f tmp3.txt
	rm -f total.txt
	rm -f unik.txt

seealso:
	@echo "=============================="
	@echo 			  "Done"
	@echo "=============================="