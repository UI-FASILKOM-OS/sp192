#!/bin/bash

sudo apt update
sudo apt dist-upgrade -y
sudo apt autoremove --purge -y
sudo apt autoclean  -y
sudo apt clean  -y
echo "system update successful"
exit 0