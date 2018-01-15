#!/bin/bash
#Author:Soji


direct=$(file * | grep  "directory" | wc -l)
echo "The dirctory's are:" $direct #(file * | grep "directory" | wc -l)
#for i in *
#do
#  file $i | grep "directory" | cut -d, -f1
#done
execut=$(file * | grep "executable"| wc -l)
echo "The executable files are:" $execut 
#for i in *
#do
#   file $i | grep -i "script" | cut -d, -f1
#done
txt=$(file * | grep ".txt" | wc -l)
echo "The text files": $txt   
