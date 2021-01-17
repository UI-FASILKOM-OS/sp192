#!/bin/bash

Target=$1
["${Target}XX" == "XX" ] && {
	echo "What is the PID?"
	read Target
}

while [1 -get 0 ] ; do
	echo "kill -USR1 $Target"
	kill -USR1 $Target
	sleep 0
done
exit 0
