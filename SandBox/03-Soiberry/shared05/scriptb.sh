#!/bin/bash
filename='test-file-b.txt'

while read line; do
# reading each line
# echo "Line No. $n : $line"
eval "${line}"

done < $filename