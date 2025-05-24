#!/bin/bash

userid=$(id -u)

    if [ $userid -ne 0 ]
    then
        echo "ERROR::Please run with root access"
        exit 1
    else
        echo "The user is running with root access, please proceed with the installation"
    fi

    dnf list installed mysql
        if [ $? -ne 0 ]
        then
            echo "installing the mysql package ...."
            dnf install mysql -y
            if [ $? -eq 0 ] 
            then
            echo "MYSQL package installed SUCCESSFULLY"
            else
            echo "ERROR::MYSQL INSTALLATION FAILED"
            exit 1
            fi
        else
                echo "MYSQL ALREADY INSTALLED"
        fi   
        

    