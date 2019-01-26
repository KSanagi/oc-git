#!/bin/bash

DIR=/var/lib/git
REPO=$1

if [ -z $REPO ] ; then
  echo "specify the name of repository"
  exit 1
fi

if [ -e $DIR/$REPO.git ] ; then
  echo "$1.git exists"
  exit 1
fi

cd $DIR
git init --bare $REPO.git
chmod -R 777 $DIR/$REPO.git
cd $REPO.git
git config http.receivepack true
