XX="xx"
HEAD="a"
PREFIX="^#.R:"
RESULT=`grep $PREFIX $0`
TESTDIR1="\$TESTDIR1"
COMMAND_ARRAY=()
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

eval rm -rf "${TESTDIR1}";mkdir "${TESTDIR1}"; cd "${TESTDIR1}";touch file1.txt touch file2.txt touch file.awk touch program2.c;

echo "Currently on ${TESTDIR1} Directory"
echo "--------------------------------"
eval ls -al;
echo "--   Press Enter to continue   --";
eval cd ..;
read YY

# echo "Deleting ${TESTDIR1} folder..."
# eval  cd ..; rm -rf "${TESTDIR1}"

# echo ""

# echo "${TESTDIR1} Folder Deleted!"
# echo ""
# echo "--   Press Enter to continue   --";
# read YY 

eval clear;

while IFS= read -r COMMAND
do
    COMMAND_ARRAY+=("${COMMAND}")
done < "$FILE"

for COMMAND in "${COMMAND_ARRAY[@]}"
do
    printf '=%.0s' {1..80};
    echo "";
    echo "";
    echo "RUNNING: $COMMAND";
    eval ${COMMAND};
    echo "";
    if [ "$1" = "$XX" ]
    then
        echo ""
        [ "$1" = "$XX" ] || (read YY)
    else
        echo "--   Press Enter to continue   --";
        [ "$1" = "$XX" ] || (read YY)
        clear;
    fi


done

if [ "$1" = "DELETE" ]
then
    echo "Deleting ${TESTDIR1}..."
    echo ""
    eval rm -rf "${TESTDIR1}"
    echo "${TESTDIR1} has been deleted!"
    echo ""
fi 
