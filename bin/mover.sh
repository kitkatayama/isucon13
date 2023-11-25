#!/bin/bash

PWDDIR=`pwd`
function replace-file () {
  if [ ! -e $1 ]; then
     echo "$1 not exist"; return 1;
  fi
  if [ -L $1 ]; then
    echo "$1 is symbolic"; return 1;
  fi

  FILENAME=`basename $1`
  echo "--before"
  ls -l $1
  sudo mv $1 ${PWDDIR}/${FILENAME}
  sudo ln -s ${PWDDIR}/${FILENAME} $1
  echo "--after"
  ls -l $1
}

replace-file $1
