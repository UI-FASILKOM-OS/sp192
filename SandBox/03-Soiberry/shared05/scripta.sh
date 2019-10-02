XX="xx"
TEST_FILE="test-file.txt"

IFS=
while read II; do
   COMMENT="RUNNING:  $II"
   SIZE=${#COMMENT}
   (( $SIZE > 80 )) && SIZE=80
   STR=$(eval printf "%0.s=" {1..$SIZE})
   echo "$STR"
   echo $COMMENT
   echo "$STR"
   eval "$II"
   echo ""; echo "*** Hit Enter Key ***";
   [ "$1" = "$XX" ] || (read YY)
done < "$TEST_FILE"

exit
