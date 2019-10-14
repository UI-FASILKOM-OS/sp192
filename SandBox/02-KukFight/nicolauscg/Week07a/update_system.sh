#!/bin/bash

apt-get update
apt-get dist-upgrade -y
apt-get autoremove --purge -y
apt-get autoclean  -y
apt-get clean  -y
echo "system update successful"
exit 0