#!/bin/bash
XX="xx"
echo

echo "Hello $USER, lets update!"

echo 
update() {
    sudo apt-get update
    sudo apt-get dist-upgrade -y
    sudo apt-get autoremove --purge -y
    sudo apt-get autoclean  -y
    sudo apt-get clean  -y
}

housekeeping() {
    sudo apt-get autoremove --purge -y
    sudo apt-get autoclean  -y
    sudo apt-get clean  -y
}

bail() {
    clear
    echo "Update Complete!"
    echo "Press ENTER to exit"
    [ "$1" = "$XX" ] || (read YY)
    exit
}

update
housekeeping
bail