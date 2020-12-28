#!/bin/sh

message=""

if [ "$1" = "" ]
then message="test commit"
else message=$1
fi

git add .
git commit -m "$message"
git push -u origin master
