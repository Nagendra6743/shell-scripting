#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
W="\e[0m"
LOG_PATH="/var/log/shell-scripting"
FILE_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE="$LOG_PATH/$FILE_NAME.log"

mkdir -p /var/log/shell-scripting

if [ $USERID -ne 0 ];
    then
    echo -e "$R ERROR:Please help to run with root access to proceed with further action $W" | tee -a $LOG_FILE
    exit 1
    else
    echo -e "$G You are running with root access and you can now install application$W" | tee -a $LOG_FILE
fi

VALIDATE()
       if [ $1 -eq 0 ]
        then 
        echo "$G $2 Installation is... SUCCESS$W" | tee -a $LOG_FILE
        else
        echo "$R $2 Installtion is... FAILURE $W" | tee -a $LOG_FILE
        exit 1
        fi

        dnf list installed mysql | tee -a $LOG_FILE
        if [ $? -ne 0 ]
        then 
        dnf install mysql -y &>> $LOG_FILE
        VALIDATE $? mysql
        else
        echo "$Y MYSQL already installed..nothing to do $W" | tee -a $LOG_FILE
        fi

        dnf list installed python3 | tee -a $LOG_FILE
        if [ $? -ne 0 ]
        then 
        dnf install python3 -y &>> $LOG_FILE
        VALIDATE $? python3
        else
        echo "$Y python3 already installed..nothing to do $W" | tee -a $LOG_FILE
        fi