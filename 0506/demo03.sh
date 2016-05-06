#!/bin/bash
#

read -p "Enter input name:" username
ss01=`grep $username /etc/passwd`
if [[ $ss01 != "" ]] ;then 
  while [[ $username != "quit" ]];do
      shell=`grep "$username" /etc/passwd | cut -d: -f7`
      uid=`grep "$username" /etc/passwd | cut -d: -f3`
      echo "shell is :" $shell
      echo "uid is :" $uid
      read -p "Enter input name:" username
      ss01=`grep $username /etc/passwd`
      if [[ $ss01 == "" ]] ;then
         echo "no user"
	 break 
      fi
  done
else 
   echo "no user"
fi
