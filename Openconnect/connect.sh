#!/bin/bash
#Author=soji
#version=1.2
#This script use to make the vpn connections are bit easier and also this one is the improved version openconnect, still work in progress.
#Please be remember, I have saved the password in the "openpass" file, so that the openconnect can fetch it with the "--passwd-on-stdin".!

open=openconnect
user=`$HOME/opencon/us`
location1=office1.vpnnetwork1.com
location2=office1.vpnnetwork2.com

echo 'Please select the desired location to connect:
1.location1
2.location2
q) Quit
read -e -p "> " choise
while true
      do
        if [ "$choise" = "1" ]
           then
               $open --user=$user --passwd-on-stdin<$HOME/openpass $fre --juniper
        elif [ "$choise" = "2" ]
           then
               $open --user=$user --passwd-on-stdin<$HOME/openpass $var --juniperelif [ $choise = q ]
        elif [ "$choise" = "q" ]
           then
              break         
        elif [ "$choise" != "1" -o "$choise" != "2" ]
           then
             echo
             echo "================================="
             echo "           Wrong Entry           "
             echo "================================="
             echo
echo 'Please select the desired location to connect:
1.location1
2.location2'           
q) Quit
          read -p "> " choise
        else
          break
   fi
done
#the EnD
