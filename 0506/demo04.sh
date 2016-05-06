#!/bin/bash
#

read -p "Enter input username:" username
name=`who | awk '{print $1}'`

if $name==$username ;then 
   echo "user come "
else 
  sleep 5
  name=`who | awk '{print $1}'`
fi 
