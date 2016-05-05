#!/bin/bash
#
read -p "please input an integer number:" number
i=0
s=0
while [ "$i" != "$number" ]
    
do
    i=$(($i+1))
    s=$(($s+$i))
done
echo "sum=$s"
