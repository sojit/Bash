#!/bin/bash
#Author:Soji, 
#version:1.0
#The script is for dcrypting the gpg file.Please modify the script based on the specific requirement.

if [ $# -ne 1 ] #>/dev/null
   then
   echo "missing arguments??"
   else
      sbname=$1
   if [ "$s2" = 'gpg' ]
        then
          read -p ">> " number
          echo "extracting..."
          mkdir $number > /dev/null
          gpg -o $number.tar.gz -d $sbname && tar -xvf $number.tar.gz -C $number >/dev/null && rm -vrf $number.tar.gz >/dev/null && cd $number/pl2-* && mv * ../ && cd ../ && rm -rf pl2-*
          echo "Completed!!"
         else
            if echo $sbname | grep gpg
              then
                 read -p "Expecting a directory name:- " number
                 echo "extracting..."
                 mkdir $number > /dev/null
                 gpg -o $number.tar.gz -d $sbname && tar -xvf $number.tar.gz -C $number >/dev/null && rm -vrf $number.tar.gz >/dev/null && cd $number/pl2-* > /dev/null && mv * ../ >/dev/null && cd ../ >/dev/null && rm -rf pl2-* >/dev/null
                 echo "Completed!!"
                 else
                    :
            fi
    fi
fi
