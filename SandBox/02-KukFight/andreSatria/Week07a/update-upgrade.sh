echo "Running commands as a root user..."
sudo sh -c '
apt-get update
apt-get dist-upgrade -y
apt-get autoremove --purge -y
apt-get autoclean  -y
apt-get clean  -y
exit 0
echo "Done!"
'