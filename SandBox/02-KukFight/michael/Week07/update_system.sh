# sudo su required
# === start ====
apt-get update
apt-get dist-upgrade -y
apt-get autoremove --purge -y
apt-get autoclean  -y
apt-get clean  -y
exit 0
# === end ====
