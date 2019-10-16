#!/bin/bash
echo "========== updating =========="
apt-get update
echo
echo "========== distribution update =========="
apt-get dist-upgrade -y
echo
echo "========== removing unused pacakges =========="
apt-get autoremove --purge -y
echo
echo "========== cleaning ==========="
apt-get autoclean  -y
apt-get clean  -y
exit 0
