#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
W="\e[0m"
LOG_PATH=/var/log/shell-scripting
FILE_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE=$LOG_PATH/$FILE_NAME.log

mkdir -p /var/log/shell-scripting

if [ $USERID -ne 0 ];
    then
    echo -e "$R ERROR:Please help to run with root access to proceed with further action $W" | tee -a $LOG_FILE
    exit 1
    else
    echo -e "$G You are running with root access and you can now install application$W"
fi

VALIDATE()
       if [ $1 -eq 0 ]
        then 
        echo "$2 Installation is... SUCCESS"
        else
        echo "$2 Installtion is... FAILURE"
        exit 1
        fi

        dnf list installed mysql
        if [ $? -ne 0 ]
        then 
        dnf install mysql -y
        VALIDATE $? mysql
        else
        echo "MYSQL already installed..nothing to do"
        fi

        dnf list installed python3
        if [ $? -ne 0 ]
        then 
        dnf install python3 -y
        VALIDATE $? python3
        else
        echo "python3 already installed..nothing to do"
        fi