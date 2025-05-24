#/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
    then 
    echo -e "\e[31mERROR::Please help to run the script with root access\e[0m"
    exit 1
else 
    echo -e "\e[32mYou are running with root access...\e[0m"
fi

dnf list installed mysql
    if [ $? -ne 0 ]
        then 
        dnf install mysql -y
        if [ $? -eq 0 ]
        then 
        echo -e "Insalling mysql is...\e[32mSUCCESS\e[0m"
        else
        echo -e "Insalling mysql is...\e[31mFAILED\e[0m"
        exit 1
        fi
    else
        echo -e "\e[0mMYSQL already been Installed ...Nothing to do\e[0m"
    fi
       


