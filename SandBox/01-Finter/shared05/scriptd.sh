#!/bin/bash

input="test-file.txt"
while IFS= read -r line
do
  eval $line
done < "$input"
