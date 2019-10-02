
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

[ "$1" = "$XX" ] || (read YY)
echo ""; echo "Directory listing (running \"ls -AF\"):"
echo "================================================================================"
ls -AF
echo "================================================================================"
echo ""; echo "*** HIT ENTER KEY ***";
[ "$1" = "$XX" ] || (read YY)

cat - << NNNN
================================================================================
TAKE NOTE: 

This is JUST a "READ ME" file for this demo.
If you do not understand, just IGNORE THIS SCRIPT!

Rahmat M. Samik-Ibrahim
================================================================================
NNNN

echo ""; echo "*** HIT ENTER KEY ***";
[ "$1" = "$XX" ] || (read YY)

echo ""; echo "[-----------]: # R: LISTING THE LINES ========  ==  ==  ==  ==  ==  ==  ========"
for II in ${HEAD}* ; do
   RESULT=`grep $PREFIX $II`
   if [[ $RESULT ]] ; then
      printf "[%11s]: %s\n" "`cut -c 1-11 <<< $II`" "$RESULT"
   fi
done

exit

