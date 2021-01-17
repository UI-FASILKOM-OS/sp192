#!/bin/bash
head -n 14105 < apache.txt | tail -n +335 >tmp2.txt
awk '{
printf("%s\n", $1);
}' tmp2.txt | sort -u | wc -l > unik.txt