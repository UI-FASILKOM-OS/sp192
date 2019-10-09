#!/bin/bash
XX="xx"
clear
echo ""; 
echo "This screen size should be at least \"80 x 23\" characters..."
echo "RESIZE the screen if this following message does not fit in \"80 x 23\""
echo ""; echo "*** HIT ENTER KEY ***";
[ "$1" = "$XX" ] || (read YY)
input="test-file.txt"

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

[ "$1" = "$XX" ] || (read YY)

clear
echo "";echo "this will run the command in" + $input
[ "$1" = "$XX" ] || (read YY)
clear

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
# Cleaning
rm -rf $TESTDIR1 $TESTDIR2 $TMPFILE2 ${TMPFILE}* .txt

mkdir -p $TESTDIR1 $TESTDIR2
touch "$TESTDIR1/abcd 'xyz NNNN"
touch "$TESTDIR1/#wah , berkas * ini ^ aneh & ajaib"
touch "$TESTDIR1/[email anda : cicak@bin.kadal?!]"
touch "$TESTDIR1/x y z \" z y x"
touch "$TESTDIR1/x y z \" (z y) x"
touch "$TESTDIR1/x y z \" (z y)"
chmod -R 755 $TESTDIR1

while IFS= read -r line
do
  eval $line
  echo ""
done < "$input"

# Cleaning
rm -rf $TESTDIR1 $TESTDIR2 $TMPFILE2 ${TMPFILE}* .txt