#!/bin/bash
#Author:Soji
#Version.1.2
# This is the installer script.

if [ ! -d $HOME/opencon ]
 then
    mkdir -p $HOME/opencon 
      read -p "Please enter the username in capital:" name
         echo $name > $HOME/opencon/us
      read -p "Please enter the password:" password
         echo $password > $HOME/opencon/pass
 else
     echo "File are already exists"
fi
cp vconnect usr/bin/ && chmod a+x usr/bin/vconnect

echo
echo "Done!"



