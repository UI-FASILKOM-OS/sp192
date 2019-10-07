#!/bin/bash

unique=`head -n 14105 < apache.txt | 
tail -n +335 | 
awk '{
printf("%s\n", $1);
}' | sort -u | wc -l`

echo $unique