 #!/bin/bash
 #Author:Soji, version:2
 #The script is for dcrypting the gpg file.
 #Prerequits: Need to install private key in the machine inorder to work this script.
  
 if [ $# -ne 1 ] #>/dev/null
    then
    echo "Expecting a gpg file??"
    else
       sbname=$1
       s2="`echo $sbname | grep -o -E '\.gpg+'`"
         if [ "$s2" = ".gpg" ]private
           then
             echo "extracting..."
             read -p "Name a directory:-" number 
             echo "extracting..."
             mkdir $number > /dev/null
             gpg -o $number.tar.gz -d $sbname && tar -xvf $number.tar.gz -C $number >/dev/null && rm -v    rf $number.tar.gz >/dev/null && cd $number/pl2-* > /dev/null && mv * ../ >/dev/null && cd ../ >/dev/nu    ll && rm -rf pl2-* >/dev/null
             echo "The extracted files are in the $number directory"
             echo "Completed!!"
             
            else
                 echo "The files not look like gpg file" 
         fi      
fi       
