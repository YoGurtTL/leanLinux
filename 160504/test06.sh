#!/bin/bash
#
retrunValue=0
cat <<EOF
cpu) print cpu infomation
mem) print meory nfomation
quit)Quit
EOF

read -p "Enter your option: " userOption
userOption=`echo $userOption | tr 'A-Z' 'a-z' `
if [[ "$userOption" == "cpu" ]];then 
   cat /proc/cpuinfo
elif [[ "$userOption" == "mem" ]];then 
   act /proc/meminfo
elif [[ "$userOption" == "quit" ]];then 
   echo "quit"
   returnValue=6   
else 
    echo "unkown option"
    returnValue=7
fi

exit $returnValue
