#!/bin/bash

DIR=/var/www/git
if [ -z $1 ] ; then
  echo "specify the name of repository"
  exit 1
fi

if [ -e $1.git ] ; then
  echo "$1.git exists"
  exit 1
fi

REPONAME=$1
cd $DIR
git init --bare $REPONAME.git
chmod -R 777 $DIR/$REPONAME.git
cd $REPONAME.git
git config http.receivepack true
