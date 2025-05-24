#/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
    then 
    echo -e "\e[31mERROR::Please help to run the script with root access\e[0m"
    exit 1
else 
    echo -e "\e[32mYou are running with root access...\e[0m"
fi