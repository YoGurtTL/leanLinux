#!/bin/bash
#

read -p "Enter a file path: " filename

if grep "^$" $filename &> /dev/null; then 
          Count=` grep "^$" $filename | wc -l `
	  echo "$filename has $Count space lines"
else
       echo  "no space line" 
fi 
