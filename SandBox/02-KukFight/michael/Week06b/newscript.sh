#!/bin/bash
# author:@MichaelSudirman
export TESTDIR1=TESTDIR1

DELETE="DELETE"
if [ "$1" == "$DELETE" ]
    then
        echo "Deleteing directory $TESTDIR1"
        eval "rm -rf $TESTDIR1;"
        echo "";
        echo "*** HIT ENTER KEY ***";
        [ "$1" = "$XX" ] || (read YY)
        exit 0
    else
        echo "Creating directory $TESTDIR1 and some files necessary"
        eval "mkdir -p $TESTDIR1;cd $TESTDIR1;" 
        eval "touch file1 file2 file3 program2.c file1.txt file2.txt file.awk;cd .."
        echo ""; 
        echo "*** HIT ENTER KEY ***";
        [ "$1" = "$XX" ] || (read YY)
fi

XX="xx"
HEAD="a"

PREFIX="^#.R:"
RESULT=`grep $PREFIX $0`
clear
if [[ $RESULT ]] ; then
   printf "\n[%11s]: %s\n" "`cut -c 1-11 <<< $0`" "$RESULT"
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
echo ""; echo "*** HIT ENTER KEY ***";
[ "$1" = "$XX" ] || (read YY)

# Open test-file.txt and call the command
filename='test-file.txt'
data=()
while read line; do
    data+=("$line")
done < $filename

for index in "${data[@]}";do
    echo "Executing $index"
    eval "$index"
    echo ""; echo "*** HIT ENTER KEY ***";
    read XX
done