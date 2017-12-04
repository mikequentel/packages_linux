#!/bin/bash
# https://www.cyberciti.biz/tips/linux-get-installed-software-reinstallation-restore.html

if [ "`which rpm`" ]; then
  rpm -qa --qf "%{NAME} " > packages.txt
else 
  dpkg --get-selections > packages.txt
fi
