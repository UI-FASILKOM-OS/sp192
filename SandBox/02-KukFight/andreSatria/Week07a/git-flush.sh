XX="xx"
echo "Insert Commit Message: "
read COMMIT_MESSAGE

nice -15 git pull origin master
nice -15 git add -A .
nice -15 git commit -m "$COMMIT_MESSAGE"
nice -15 git push origin master

[[ "$1" == "$XX" ]] && {
    echo -n "================================================================================="
    du -s -h .
    git gc --prune=now --aggresive
    echo -n "================================================================================="
    du -s 0h .

}

exit


exit 0
