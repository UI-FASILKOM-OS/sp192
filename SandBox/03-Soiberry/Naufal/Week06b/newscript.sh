#!/bin/bash
input="test-file.txt"
DELETE = "DELETE"

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

eval "mkdir TESTDIR1;cd TESTDIR1;touch file1.txt;touch file2.txt;touch file3.txt; cd ../;"
echo "Made TESTDIR1"
echo "Hit Enter to continue"
read YY
# echo "Cleaning ZB-source.."
# eval "rm -r ZB-source"
# echo "Hit Enter to execute commands in test-file-c"
# read YY

if [ "$1" = "$DELETE" ]
    then
        echo "Deleteing dirctory TESTDIR1"
        eval "rm -r TESTDIR1;"
        echo "Press ENTER to FINISH"
    else
        echo "Creating directory TESTDIR1 that contain some files"
        eval "mkdir TESTDIR1;cd TESTDIR1;touch file1.txt;touch file2.txt;"
        eval "touch file.awk;touch program2.c;cd .."
        echo "Press ENTER to FINISH"
fi
read YY

while IFS= read -r line
do
  eval "$line"
done < "$input"