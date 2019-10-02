#!/bin/bash
input="text-file-c.txt"
while IFS= read -r line
do
  eval "$line"
done < "$input"