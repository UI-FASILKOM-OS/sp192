#!/bin/bash

byteCount=`head -n 14105 < apache.txt | 
tail -n +335 |
awk 'BEGIN{
	total = 0;
}
{
	sub(/^[^"]*"[^"]*" [^ ]* /,"");
	total += $1;
}
END {
printf("%d\n", total);}'`

echo "total byte between #335 and #14105: $byteCount"