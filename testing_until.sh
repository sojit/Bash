#!/bin/bash

i=$(du /home/ptac/Documents/bash/tst.txt | cut -f1)


until [ $i -gt 100 ]
do
   echo $i 
   echo $(($i ++)) >> /home/ptac/Documents/bash/tst.txt
   i=$(du /home/ptac/Documents/bash/tst.txt | cut -f1)
done
