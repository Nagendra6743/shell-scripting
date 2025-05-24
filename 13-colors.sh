#/bin/bash

USERID=(id -u)

if [ $USERID -ne 0 ]
    then 
    echo "Please help to run the script with root access"
    exit 1
else 
    echo "You are running with root access..."
fi