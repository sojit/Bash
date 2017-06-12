#!/bin/bash
#Author:Soji
#Version.1.2.1
# This is the installer script.

#!/bin/bash
if (which openconnect) >/dev/null
   then
      :
   else
      echo "Installing openconnect..."
       apt-get install openconnect >> openconn.log
fi


if [ ! -d $HOME/opencon ]
 then
    mkdir -p $HOME/opencon
      read -p "Please enter the username in capital:" name
         echo $name > $HOME/opencon/us

      read -s -p "Please enter the password:" pass
      echo
      read -s -p "Re-enter the password:" pass1

        while true
            do
              if [ "$pass" != "$pass1" ]
               then
                 echo
                 echo "Passwords are not matching!"
                 echo
                 read -s -p "Please enter the password:" pass
                 echo
                 read -s -p "Re-enter the password:" pass1
               else
                  break
              fi
            done
        echo $pass1 > $HOME/opencon/pass
elif [ -d $HOME/opencon ]
  then
     read -p "Please enter the username in capital:" name
         echo $name > $HOME/opencon/us

      read -s -p "Please enter the password:" pass
      echo
      read -s -p "Re-enter the password:" pass1

        while true
            do
              if [ "$pass" != "$pass1" ]
               then
                 echo
                 echo "Passwords are not matching!"
                 echo
                 read -s -p "Please enter the password:" pass
                 echo
                 read -s -p "Re-enter the password:" pass1
               else
                  break
              fi
            done
        echo $pass1 > $HOME/opencon/pass        
else
      :
      #echo "File are already exists"
fi
cp vconnect /bin/ 2>> openconn.log && chmod a+x usr/bin/vconnect

echo
echo "Completed!"



