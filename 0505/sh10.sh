#!/bin/bash

echo "Now, I will detcect your linux server's services!"
echo -e "The www,ftp,ssh,and mail ,will be detecd \n"
testing=$(netstat -tuln | grep ":80")
if [ "$testing" != "" ];then 
  	echo "WWW is running in your system"
fi

testing=$(netstat -tuln | grep ":22")
if [ "$testing" != "" ];then 
  	echo "ssh is running in your system"
fi
testing=$(netstat -tuln | grep ":21")

if [ "$testing" != "" ];then 
  	echo "FTP is running in your system"
fi
testing=$(netstat -tuln | grep ":25")

if [ "$testing" != "" ];then 
  	echo "mail is running in your system"
fi
