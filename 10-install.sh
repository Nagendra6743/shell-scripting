#!/bin/bash

userid=$(id -u)

    if [ $userid -ne 0 ]
    then
        echo "Please run with root access"
    else
        echo "the user is running with root, please proceed with the installation"
    fi
