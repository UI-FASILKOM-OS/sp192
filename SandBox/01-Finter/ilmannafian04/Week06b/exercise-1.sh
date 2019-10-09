#!/bin/bash

head -n 14105 < apache.txt | tail -n +335 > tmp.txt

awk 'begin{
    total = 0;
} {
    sub(/^[^"]*"[^"]*" [^ ]* /,"");
    total += $1;
} END {
<<<<<<< HEAD
    printf("%d\n", total);
}' tmp.txt > total.txt
=======
    printf)'
>>>>>>> ea2464ea6c11aed638cbd0bc60faca43dce137e9
