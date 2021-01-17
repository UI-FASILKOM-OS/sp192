XX="xx"
PWD=`pwd`
BASE=`basename $PWD`
nice -15 git pull origin master
nice -15 git add -A
nice -5 git commit -m "`hostname` $BASE"
[[ "$1" == "$XX" ]] && {
    echo -n "===================  ==================="
    du -s -h
    git gc --prune=now --aggressive
    echo -n "===================  ==================="
    du -s -h
}

exit

exit 0