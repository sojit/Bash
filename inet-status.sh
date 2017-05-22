#!/bin/bash
#This my initial try to check the status of eth0 interface of linux machine.
###End



test="ping 192.168.1.1 -c 1"


if  $test > /dev/null
 then
    echo "The eth0 is UP"
 else
    ifup eth0 > /dev/null
    echo "Enabling eth0..."
fi
