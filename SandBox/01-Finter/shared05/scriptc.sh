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
