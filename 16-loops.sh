#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
W="\e[0m"

if [ $USERID -ne 0 ];
    then
    echo -e "$R ERROR:Please help to run with root access to proceed with further action $W"
    exit 1
    else
    echo -e "$G You are running with root access and you can now install application$W"
fi

echo "Thanks for running "date""
date