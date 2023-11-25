#!/bin/bash

if [ ! -e $1 ]; then
   echo "$1 not exist"; return 1;
fi

if [ ! -L $1 ]; then
  "$1 is not symbolic"
fi

MVFROM=`readlink $1`
echo "--before"
ls -l $1
sudo unlink $1
sudo mv ${MVFROM} $1
echo "--after"
ls -l $1
