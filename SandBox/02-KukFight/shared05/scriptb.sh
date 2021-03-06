#!/bin/bash

# author @nicolauscg
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
echo ""; echo "*** Hit enter key to continue ***";
[ "$1" = "$XX" ] || (read YY)

input="../test-file.txt"
eval "rm -rf ZB-source; mkdir ZB-source; cd ZB-source; touch file1; touch file2; touch file3;"
while IFS= read -r line
do
	printf '=%.0s' {1..80};
	echo "";
  	echo "running $line";
  	echo "";

  	eval $line;
  	echo "*** Press enter to continue ***"
  	read input </dev/tty 
done < "$input"
eval "cd ..; rm -rf ZB-source;"
