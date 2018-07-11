1 #!/bin/bash
  2 #Author:Soji, version:2
  3 #The script is for dcrypting the gpg file.
  4 #Prerequits: Need to install private key in the machine inorder to work this script.
  5 
  6 if [ $# -ne 1 ] #>/dev/null
  7    then
  8    echo "Expecting a gpg file??"
  9    else
 10       sbname=$1
 11       s2="`echo $sbname | grep -o -E '\.gpg+'`"
 12         if [ "$s2" = ".gpg" ]private
 13             then
 14             echo "extracting..."
 15             read -p "Name a directory name where I can put these extracted files:-" number 
 16             echo "extracting..."
 17             mkdir $number > /dev/null
 18             gpg -o $number.tar.gz -d $sbname && tar -xvf $number.tar.gz -C $number >/dev/null && rm -v    rf $number.tar.gz >/dev/null && cd $number/pl2-* > /dev/null && mv * ../ >/dev/null && cd ../ >/dev/nu    ll && rm -rf pl2-* >/dev/null
 19             echo "Completed!!"
 20             
 21             else
 22                  echo "The files not look like gpg file" 
 23          fi      
 24 fi       
