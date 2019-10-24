read -r pidfile < /root/signal/pid.file
echo -n "Enter some text > "
read text
echo $text > file.read

kill -USR1 $pidfile