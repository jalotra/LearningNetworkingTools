#!/bin/bash

if [ "$1" == "" ]
then

    echo "Syntax is wrong."
    echo "Syntax:./all_ip_addresses_status.sh 192.168.0"

else
    for ip in `seq 1 255`;do
    ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
    done
fi

# & sign is to use multithreading
#example
#./all_ip_addresses_status.sh 192.168.0
#result
#192.168.0.1
#192.168.0.2
#192.168.0.5
