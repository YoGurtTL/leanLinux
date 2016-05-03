#!/bin/bash
     read -p "please input userName: " userName
    if grep "^$userName\>" /etc/passwd & > /dev/null;then
          id=`id -u $userName`
    	  if [ $id -ge 500 ];then
		echo "then $userName is putong user"
	  else
 		echo "The $userName is root root" 
	  fi
    
    else
       echo "$userName is not OK !!";
     fi
