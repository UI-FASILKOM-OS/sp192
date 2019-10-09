#!/bin/bash
# REV11: Mon Aug 27 19:18:47 WIB 2018
# START: Mon Sep  5 11:12:35 WIB 2016

# R: These are collections of command lines. Run "bash a03-command-lines-demo 11 22 33 44 55"

# Copyright (C) 2016-2018 Rahmat M. Samik-Ibrahim
# http://RahmatM.Samik-Ibrahim.vLSM.org/
# This program is free script/software. This program is distributed in the hope
# that it will be useful, but WITHOUT ANY WARRANTY; without even the implied
# warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

XX="xx"
TMPFILE="ZA-thisfile.tx"
TESTDIR1="ZB-SOURCE"
TESTDIR2="ZC-BACKUP"
TEST_FILE="test-file.txt"

[ -d $TESTDIR1 ] && [ -d $TESTDIR2 ] && [ -f $TMPFILE ] || {
   echo ""; echo "No $TESTDIR1 or $TESTDIR2 or $TMPFILE."
   echo "Please run script \"a02-sort-n-prepare\" first!"; echo ""
   exit
}
echo "";
echo "This screen size should be at least \"80 x 23\" characters..."
echo "RESIZE the screen if this following message does not fit in \"80 x 23\""
echo ""; echo "*** HIT ENTER KEY ***";
[ "$1" = "$XX" ] || (read YY)

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


mkdir -p $TESTDIR1 $TESTDIR2
touch "$TESTDIR1/abcd 'xyz NNNN"
touch "$TESTDIR1/#wah , berkas * ini ^ aneh & ajaib"
touch "$TESTDIR1/[email anda : cicak@bin.kadal?!]"
touch "$TESTDIR1/x y z \" z y x"
touch "$TESTDIR1/x y z \" (z y) x"
touch "$TESTDIR1/x y z \" (z y)"
chmod -R 755 $TESTDIR1
echo ""; echo "These are collections of command lines."
echo "Just run: \"bash $0 11 22 33 44 55\""
echo ""; echo "*** Hit Enter Key ***";
[ "$1" = "$XX" ] || (read YY; clear)

IFS=
while read II; do
    COMMENT="RUNNING:  $II"
    SIZE=${#COMMENT}
    (( $SIZE > 80 )) && SIZE=80
    STR=$(eval printf "%0.s=" {1..$SIZE})
    echo "$STR"
    echo $COMMENT
    echo "$STR"
    eval $II
    echo ""; echo "*** Hit Enter Key ***";
    [ "$1" = "$XX" ] || (read YY)
done < "$TEST_FILE"


exit
