#!/bin/bash

nice -15 git pull origin master
nice -15 git add -A .
nice -15 git commit -m "$1"
nice -15 git push origin master