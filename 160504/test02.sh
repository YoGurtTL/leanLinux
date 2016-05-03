#!/bin/bash
#
read -p "please input userName :" userName
if grep "^$userName\>" /etc/passwd &>/dev/null ; then 
    echo "$userName :`id -u $userName` ";
else 
    echo "no $userName";
fi
