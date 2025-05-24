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
          echo "mysql already installed!!!"
          dnf uninstall mysql -y        
            if [ $? -eq 0 ] then
            echo "mysql uninstalled successfully!!!"
            else 
            echo "mysql uninstallation not successful...."
            exit 1
        else        
        dnf install mysql -y
        echo "mysql installation is in progress..."
          if [ $? -eq 0 ]
          then 
          echo "mysql installed successfully!!!"
          else 
          echo "ERROR::mysql installation failed"
          fi
          fi
    