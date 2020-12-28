#!/bin/sh

message=""

if [ "$1" = "" ]
then
    message="commit none args"
else
    message="commit $1"
fi

git add .
git commit -m "$message"
git push -u origin master
