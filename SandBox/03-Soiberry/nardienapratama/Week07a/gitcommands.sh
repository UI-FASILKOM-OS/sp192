echo "Performing a range of git commands..."

eval "nice -15 git pull origin master; nice -15 git add -A .; nice -15 git commit -m "`hostname` $USER";"