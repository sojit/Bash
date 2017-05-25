#!/bin/bash
#Author=soji
#version=1.2
#This script use to make the vpn connections are bit easier and also this one is the improved version openconnect, still work in progress.
#Please be remember, I have saved the password in the "openpass" file, so that openconnect fetch it from the "--passwd-on-stdin".!
#

open=openconnect
user=NAME
fre=URL1
var=URL2

echo 'Please select the desired location to connect:
1.location1
2.location2
read -e -p "> " choise


while true
      do

        if [ $choise -eq 1 ]
           then
               $open --user=$user --passwd-on-stdin<$HOME/Documents/scripts/fair/openpass $fre --juniper
        elif [ $choise -eq 2 ]
           then
               $open --user=$user --passwd-on-stdin<$HOME/Documents/scripts/fair/openpass $var --juniper
        elif [ $choise -ne 1 -o $choise -ne 2 ]
          then
             echo "wrong entry"
             echo
             echo "Hit any key to continue"
             echo
             read -p "> " choise
        else
          break
   fi

done

#the EnD
