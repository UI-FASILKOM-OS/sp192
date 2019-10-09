#!/bin/bash 

head -n 14105 < apache.txt | tail -n +335 > tmp.txt

awk 'BEGIN{
total = 0;
}
{
sub(/^[^"]*"[^"]*" [^ ] /,"");
total += $1;
}
END {
printf("%d\n", total);}' tmp.txt > total.txt

