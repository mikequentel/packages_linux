#!/bin/bash
# https://www.cyberciti.biz/tips/linux-get-installed-software-reinstallation-restore.html

if [ "`which rpm`" ]; then
  rpm -qa --qf "%{NAME}\n" | sort > packages.txt
else 
  echo 'not installed'
fi
