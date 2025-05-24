#!/bin/bash

userid=$(id -u)

    if [ $userid -ne 0 ]
    then
        echo "ERROR::Please run with root access"
    else
        echo "The user is running with root access, please proceed with the installation"
    fi

    dnf install mysql -y
