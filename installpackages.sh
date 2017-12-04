#!/bin/bash
# https://www.cyberciti.biz/tips/linux-get-installed-software-reinstallation-restore.html

if [ "`which rpm`" ]; then
  dnf -y install `cat packages.txt`
else 
  echo 'not installed'
fi
