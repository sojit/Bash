#!/bin/bash
#Author:Soji
#Version.1.2
# This is the installer script.

#!/bin/bash

if [ ! -d $HOME/Opencon ]
 then
    mkdir -p $HOME/Opencon && touch $HOME/Opencon/pass && touch $HOME/Opencon/user
      read -p "Please enter the username:" name
         echo $name > $HOME/Opencon/user
      read -p "Please enter the password:" password
         echo $password > $HOME/Opencon/pass
 else
     :
fi


