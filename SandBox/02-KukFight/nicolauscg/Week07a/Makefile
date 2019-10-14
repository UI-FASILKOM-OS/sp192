CC=gcc

P01=forkpipe
EXECS= \
   $(P01)
EXTRA= \
   sltest2 \

all:	seealso $(EXECS) 

.phony: clean all seealso

clean: seealso
	rm -f ${EXECS} ${EXTRA}

seealso:
	@echo "week07a"
install:
	sudo cp autopush.sh /usr/local/bin/autopush
	sudo chmod +x /usr/local/bin/autopush
	sudo cp updatesys.sh /usr/local/bin/updatesys
	sudo chmod +x /usr/local/bin/updatesys
	sudo cp maintainrepo.sh /usr/local/bin/maintainrepo
	sudo chmod +x /usr/local/bin/maintainrepo

uninstall:
	sudo rm -f /usr/local/bin/autopush /usr/local/bin/updatesys /usr/local/bin/maintainrepo
