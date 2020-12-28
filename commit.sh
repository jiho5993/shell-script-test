#!/bin/sh

message=""

boj() {
    message="BOJ_$1.$2"
}

programmers() {
    message="Programmers.$1"
}

if [ "$2" = "" ]
then
    programmers "$1"
else
    boj "$1" "$2"
fi

git add .
git commit -m "$message"
git push -u origin master
