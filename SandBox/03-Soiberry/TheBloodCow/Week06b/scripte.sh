#!/bin/bash\
PREFIX="^#.R:"
RESULT=`grep $PREFIX $0`
HEAD="a"
TMPHEAD="ZTMP"
START="0"
TMPSEQ="1000"
TMPFILE="ZA-thisfile.tx"
TMPFILE2="ZA-thisfile2.txt"
TESTDIR1="ZB-SOURCE"
TESTDIR2="ZC-BACKUP"
AWKPROG="$TESTDIR1/file.awk"
CPROGRAM="$TESTDIR1/program2.c"
FILE1="$TESTDIR1/file1.txt"
FILE2="$TESTDIR1/file2.txt"
FILE3="$TESTDIR1/80x23.txt"
DEL="xx"

cat > $AWKPROG << NNNN
# REV01 Thu Feb 16 15:25:32 WIB 2017
# START Mon Sep  5 15:18:07 WIB 2016
BEGIN           { FS=":"
                  print ""
                  print "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx" }
END             { print "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx" }
                { printf " %-20s  %5s  %5s \n", \$1,  \$3,  \$4 }
NNNN


cat - << NNNN
START START START START START START START START START START START START START
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


mkdir "$TESTDIR1"
mkdir "$TESTDIR2"
touch "$FILE1"
touch "$FILE2"
touch "$FILE3"
touch "$AWKPROG"
touch "$CPROGRAM"
chmod -R 755 $TESTDIR1

input="test-file.txt"
while IFS= read -r line
do
  eval "$line"
done < "$input"
