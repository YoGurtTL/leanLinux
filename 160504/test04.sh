#!/bin/bash
read -p "please input userName: " userName
    if grep "^$userName\>" /etc/passwd & > /dev/null;then
          id=`id -u $userName`
	  g=`id -g $userName`
	
 	if [ $id -eq $g ];then 
		echo "$userName is good guy";
	else 
	 	echo "$userName is bed guy";
        fi
    else
   	exit 6
    fi

