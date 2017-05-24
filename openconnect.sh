#!/bin/bash
#Author=soji
#version=1.0
#This script use to make the vpn connections are bit easier mainly for "oppenconnect".
#Please be remember, I have saved the password in the "openpass" file, so that openconnect fetch it from the "--passwd-on-stdin".!

open=openconnect 
user=NAME 
fre=vpn-link1 
var=vpn-link2

echo 'Please select the specific vpn
1.link1
2.link2'

read -p "> " choise
case $choise in

         1) $open --user=$user --passwd-on-stdin<$HOME/Documents/scripts/fair/openpass $fre --juniper;;
         2) $open --user=$user --passwd-on-stdin<$HOME/Documents/scripts/fair/openpass $var --juniper;;
         *) echo "Please seclect the correct option" ;;
 esac
 
 #The END
   
