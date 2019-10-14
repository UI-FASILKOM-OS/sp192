#!/bin/bash
# sudo su required

apt-get update
apt-get dist-upgrade -y
apt-get autoremove --purge -y
apt-get autoclean  -y
apt-get clean  -y
exit 0
