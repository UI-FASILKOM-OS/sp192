#!/bin/bash

trap "Intterupt Tiem" USR1

echo "This is PID $$"

while [1 -gt 0]; do
	echo "Hello there!"
	sleep 2;
done

exit 0
