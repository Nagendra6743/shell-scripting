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
        if [ $? -eq 0 ]
        then 
           echo "MYSQL ALREADY INSTALLED!!!"
           dnf remove mysql -y 
        else 
           echo "MYSQL NOT ALREADY INSTALLED"
        fi
                              

        dnf install mysqlkjkfkfkj -y
        echo "MYSQL INSTALLATION IS IN PROGRESS..."
          if [ $? -eq 0 ]
          then 
          echo "MYSQL INSTALLED SUCCESSFULLY!!!"
          else
          echo "ERROR::MYSQL INSTALLATION FAILED"
          fi

    