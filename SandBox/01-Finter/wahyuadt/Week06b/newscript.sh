#!/bin/bash

XX="xx"
TESTDIR1="ZB-SOURCE"
TESTFILE="test-file.txt"

if [ $# != 0 ] && [ $1 == "DELETE" ]; then
    rm -rf $TESTDIR1
    exit
fi

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
[ "$1" = "$XX" ] || (read YY ; clear)

mkdir -p $TESTDIR1
FILE1="$TESTDIR1/file1.txt"
FILE2="$TESTDIR1/file2.txt"
AWKPROG="$TESTDIR1/file.awk"
CPROGRAM="$TESTDIR1/program2.c"

touch $FILE1
touch $FILE2
touch $AWKPROG
touch $CPROGRAM

cat > $FILE1 << NNNN
Potong Bebek Angsa, masak di kuali...
Nona minta dansa, dansa empat kali...
Sorong ke kiri, sorong ke kanan...
Lala lala lala lala la la la... 
NNNN

cat > $FILE2 << NNNN
Potong Bebek Angsa, masak di kuali...
Nona minta dansa, dansa empat kali...
Sorong ke kiri, Biak ke kanan...
Lala lala lala lala la Papua... 
NNNN

chmod 644 $AWKPROG $CPROGRAM $FILE1 $FILE2

echo ""; echo "These are collections of command lines."
echo "Just run: \"bash $0 11 22 33 44 55\""
echo ""; echo "*** Hit Enter Key ***";
[ "$1" = "$XX" ] || (read YY ; clear)

while read -u 5 II; do
    COMMENT="RUNNING:  $II"
    SIZE=${#COMMENT}
    (( $SIZE > 80 )) && SIZE=80
    STR=$(eval printf "%0.s=" {1..$SIZE})
    echo "$STR"
    echo $COMMENT
    echo "$STR"
    eval $II
    echo ""; echo "*** Hit Enter Key ***";
    [ "$1" = "$XX" ] || (read YY ; clear)
done 5< "$TESTFILE"

exit
