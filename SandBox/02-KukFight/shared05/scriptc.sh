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

if (read YY) then
    clear
fi

FILE="test-file.txt"

eval rm -rf ZB-Source;mkdir ZB-Source; cd ZB-Source;touch dummy1 touch dummy2;

echo "Currently on ZB-Source Directory"
echo "--------------------------------"
eval ls -al;
echo "--   Press Enter to continue   --";
read YY < /dev/tty

echo "Deleting ZB-Source folder..."
eval  cd ..; rm -rf ZB-Source

echo ""

echo "ZB-Source Folder Deleted!"
echo ""
echo "--   Press Enter to continue   --";
read YY 

eval clear;

eval cat - << "EOF"
                       _ ,___,-'",-=-.
           __,-- _ _,-'_)_  (""`'-._\ `.
        _,'  __ |,' ,-' __)  ,-     /. |
      ,'_,--'   |     -'  _)/         `\
    ,','      ,'       ,-'_,`           :
    ,'     ,-'       ,(,-(              :
         ,'       ,-' ,    _            ;
        /        ,-._/`---'            /
       /        (____)(----. )       ,'
      /         (      `.__,     /\ /,
     :           ;-.___         /__\/|
     |         ,'      `--.      -,\ |
     :        /            \    .__/
      \      (__            \    |_
       \       ,`-, *       /   _|,\
        \    ,'   `-.     ,'_,-'    \
       (_\,-'    ,'\")--,'-'       __\
        \       /  // ,'|      ,--'  `-.
         `-.    `-/ \'  |   _,'         `.
            `-._ /      `--'/             \
    -hrr-      ,'           |              \
              /             |               \
           ,-'              |               /
          /                 |             -'

EOF

echo "--   Press Enter to continue   --";
read YY 
eval clear;

while IFS= read -r COMMAND
do
    echo "RUNNING: $COMMAND";
    eval $COMMAND;
    echo "";
    echo "--   Press Enter to continue   --";
    read YY < /dev/tty
    clear;
done < "$FILE"
