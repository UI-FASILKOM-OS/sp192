#!/bin/bash

STATUS="awal"

while true;
do
	LAST='dmesg | grep e1000 | tail -n 1 | cut -d " " -f 7'

	if [$STATUS != $LAST]
	then
		STATUS=$LAST
		if [$STATUS == "Down" ]
		then
			echo "DISCONNECTEDDDD"
		else
			echo "KONNNEEEEKKK"
		fi
	fi
	sleep 1
done
