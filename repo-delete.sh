#!/bin/bash

DIR=/var/lib/git
REPO=$1

if [ -z $REPO ] ; then
  echo "specify the name of repository"
  exit 1
fi

if [ -e $DIR/$REPO.git ] ; then
  rm -rf $DIR/$REPO.git
  exit 0
else
  echo "$REPO.git does not exist"
  exit 1
fi
