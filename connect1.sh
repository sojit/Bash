#!/bin/bash
#Author:Soji, Version:1.2
#This is the improved version of my previous script connect.


#add the login details for the physical machine
up=pladmin
pp=pldemo11
#Add the username and password for the virtual devices.
pass=pldemo00
user=pladmin


if [ "$#" -ne 1 ]
   then
     echo "To connect enter the device name:"
   else
      if [ $1 = pre1 ]
         then
             p1="ping x.x.x.x1 -c 1"
             if $p1 >/dev/null
                then
                   sshpass -p $pp ssh -p 42002 $up@x.x.x.x1 -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no
                else
                   sshpass -p $pp ssh -p 42002 $up@x.x.x.1 -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no
             fi
      elif [ $1 = pre2 ]
          then
             p2="ping x.x.x.x2 -c 1"
             if $p2 >/dev/null
                then
                   sshpass -p $pp ssh -p 42002 $up@x.x.x.x2 -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no
                 else
                   sshpass -p $pp ssh -p 42002 $up@x.x.x.2 -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no
             fi
       :
     fi
fi
