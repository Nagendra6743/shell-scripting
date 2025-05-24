#!/bin/bash

user=$(id -u)

if [ $user -eq 0 ]
then
echo "the user is running with root, please proceed with the installation"
else
echo "Please run with root access"
fi
