#!/bin/bash
#
read -p "please input Name:" Name
if ! id $Name $> /dev/null ; then 
     echo "NO user userd"
     exit 7
fi 

usergrep=`grep "^$Name\>" /etc/passwd | cut -d: -f 7 `
if [ "$usergrep" == "/bin/bash" ]; then 
    echo "bash user"
   returnValue=0
else 
   echo "no bash usr"
   returnValue=1 
fi

exit $returnValue
