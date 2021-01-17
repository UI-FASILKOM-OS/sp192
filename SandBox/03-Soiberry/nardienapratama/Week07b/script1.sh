#!/bin/sh

echo $$ > pid.file
read_files() {
    read -r file < /root/signal/file.read
    echo $file
}
trap "read_files" TERM USR1
while [ 1 -gt 0 ]
do
        echo Running.....
        sleep 2
done