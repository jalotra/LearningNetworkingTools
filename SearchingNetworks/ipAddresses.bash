#!/bin/bash

if [ "$1" == "" ]
then

    echo "Syntax is wrong."
    echo "Syntax:./all_ip_addresses_status.sh 192.168.0"

else
    for ip1 in `seq 1 255`;do
        for ip2 in `seq 1 255`;do
            for ip3 in `seq 1 255`;do
                for ip4 in `seq 1 255`;do
                    ping -c 1 $ip1.$ip2.$ip3.$ip4 | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
                done
            done
        done
    done
fi

# & sign is to use multithreading
#example
#./all_ip_addresses_status.sh 
#result
#12.0.0.1
#12.0.0.3
#.
#.
#.

