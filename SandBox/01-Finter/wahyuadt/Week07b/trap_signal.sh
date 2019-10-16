#!/bin/sh

exit_with_grace(){
  echo Goodbye World
  exit
}

trap "echo Hello World" USR2
trap "exit_with_grace" USR1 TERM QUIT

while [ 1 -gt 0 ]
do
	echo Running....
	sleep 5
done

