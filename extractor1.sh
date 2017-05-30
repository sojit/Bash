#!/bin/bash
#Author:Soji, version:1.3
#The script is for dcrypting the gpg file and the improved version of ectractor script.
#END

if [ $# -ne 1 ] #>/dev/null
   then
   echo "missing arguments??"
   else
      sbname=$1
      if [ "$s2" != 'gpg' ]
         then
            echo "Oops wrong file"
          else
             echo "extracting..."
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
