#!/bin/bash

cat - << NNNN
01 START START START START START START START START START START START START START
12345678911234567892123456789312345678941234567895123456789612345678971234567898
         10        20        30        40        50        60        70       79

12345678911234567892123456789312345678941234567895123456789612345678971234567898

         10        20        30        40        50        60        70       79
12345678911234567892123456789312345678941234567895123456789612345678971234567898
09 XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

XXXXX                           TEST FOR 80 x 23                           XXXXX

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
12345678911234567892123456789312345678941234567895123456789612345678971234567898
         10        20        30        40        50        60        70       79

         10        20        30        40        50        60        70       79
12345678911234567892123456789312345678941234567895123456789612345678971234567898
19 XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

         10        20        30        40        50        60        70       79
12345678911234567892123456789312345678941234567895123456789612345678971234567898
23 END END END END END END END END END  ====   H I T   E N T E R   K E Y   =====
NNNN
read YY


echo "Creating a directory called TESTDIR1"
eval "mkdir TESTDIR1; cd TESTDIR1; touch file1.txt; touch file2.txt; touch file.awk; touch program2.c; cd .."
read YY

if [[ $1 = "DELETE" ]]; then
    echo "Deleting directory TESTDIR1"
    eval "rm -r TESTDIR1"
fi


# filename='test-file-b.txt'

# while read line; do
# # reading each line
# # echo "Line No. $n : $line"
# eval "${line}"

# done < $filename