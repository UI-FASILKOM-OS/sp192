#!/bin/bash
# author:@MichaelSudirman

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

eval "mkdir ZBSource;cd ZBSource; touch file1 file2 file3;"
# Open file.txt and call the command
filename='../file.txt'
number=1
while read line; do
# reading each line
echo "Line No. $n : $line"
number=$((number+1))
eval "$line"
echo ""; echo "*** HIT ENTER KEY ***";
read input </dev/tty
done < $filename

# Using ZBSource

eval "cd ..; rm -r ZBSource"