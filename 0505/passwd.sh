#!/bin/bash
#

account=`cat /etc/passwd |cut -d':' -f1`
for a in $account
do
     declare -i i=$i+1
     echo "The $i acccount is $account"
done
