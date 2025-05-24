#/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
    then 
    echo -e "\e[31mERROR::Please help to run the script with root access\e[0m"
    exit 1
else 
    echo -e "\e[32mYou are running with root access...\e[0m"
fi

VALIDATE(){        
        if [ $1 -eq 0 ]
        then 
        echo -e "Installing $2 is...\e[32mSUCCESS\e[0m"
        else
        echo -e "Installing $2 is...\e[31mFAILED\e[0m"
        exit 1
        fi
}


dnf list installed mysql
    if [ $? -ne 0 ]
        then 
        echo -e "\e[33mInstalling mysql is in progress...\e[0m"
        dnf install mysql -y
        VALIDATE $? "mysql"
    else
        echo -e "\e[0mmysql already been Installed ...Nothing to do\e[0m"
    fi

       


