#!/bin/bash
STATUS="awal"

while true;
do
   E1000=`dmesg | grep e1000 | tail -n 1`
   echo $E1000
   LAST=`echo $E1000| cut -d " " -f 8`
   echo $LAST
   if [ $STATUS != $LAST ]
   then
      STATUS=$LAST
      if [ $STATUS == "Down" ]
      then
         echo "DISCONNECTED"
      else
         echo "CONNECTED"
      fi
   fi
   sleep 2
done

