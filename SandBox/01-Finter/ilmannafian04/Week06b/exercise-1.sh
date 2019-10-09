#!/bin/bash

head -n 14105 < apache.txt | tail -n +335 > tmp.txt

awk 'begin{
    total = 0;
} {
    sub(/^[^"]*"[^"]*" [^ ]* /,"");
    total += $1;
} END {
    printf)'