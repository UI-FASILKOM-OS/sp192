echo "Updating and upgrading your system..."

eval "sudo apt-get update; sudo apt-get dist-upgrade -y; sudo apt-get autoremove --purge -y; sudo apt-get autoclean  -y;sudo apt-get clean  -y;"