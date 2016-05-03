#!/bin/bash

sum=0
for i in {1..10};do
  	if grep "^stu$i>" /etc/passwd &> /dev/null;then
        	echo -e "\033[31m stu$i \033[0m is sunflly"
	else 
	   useradd stu$i&&echo -e "useradd \033[32m stu$i \033[0m is suefully"
           sum=$sum+1 
       fi
done

echo $sum

