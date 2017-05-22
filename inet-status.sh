#!/bin/bash
#This my initial try to check the status of eth0 & set it up if its down.
#
###End

test="ping x.x.x.x -c 1"

if  $test > /dev/null                   # if $test result exit 0 then it will echo its up...
 then
    echo "The eth0 is UP"     
 else                                   # if the $test exit status is 1 then it will ititate the interface command.
    ifup eth0 > /dev/null
    echo "Enabling eth0..."
fi


