#!/bin/bash
# Pull then push to master
nice -15 git pull origin master
nice -15 git add -A .

if [ "$1" = "" ]
    then
        nice -15 git commit -m "`hostname` $BASE"
    else
        nice -15 git commit -m "$1"
fi

nice -15 git push origin master
