#!/bin/bash
#Author:Soji, Version:1.0
#This script is to make the device login a bit easier.
#Pre-request, sshpass need to be installed inorder to make it functional. Also, the devices can connected by calling the name as mentioned in the case as "server1".
#Cheers.
#The END.


#Set the login details for the physical machine
up=value is required
pp=value is required

#Set the username and password for the virtual devices.
pass=value is required
user=value is required

if [ "$#" -ne 1 ]
   then
     echo "To connect enter the device name:"
   else
      case "$1"
      in
          #Physical deviceslogin details!!     
          server1)sshpass -p $pp ssh -p 42002 $up@x.x.x.x -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no;;
       
          #virtual devices login details!!
          vserver1)sshpass -p $pass ssh -p 42002 $user@x.x.x.x -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no;;
          
          A-Z[0]) echo prefered lowecase device name;;
          **) echo Oops! $1 is not the lab device name;;
      esac

fi
