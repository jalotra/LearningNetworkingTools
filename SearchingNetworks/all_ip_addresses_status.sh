#!/bin/bash

for ip in `seq 1 255`;do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done

# & sign is to use multithreading