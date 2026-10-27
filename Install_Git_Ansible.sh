#!/bin/bash

VALIDATE(){
    if [ $1 -ne 0]
    then    
        echo "$2...FAILURE"
        exit 1
    else
        echo "$2...SUCCESS"
    fi
}


USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run the script with sudo access"
    exit 1
else
    echo "You are super access"
fi

dnf install git -y 
VALIDATE $? "Installing GIT"

dnf install ansible -y
VALIDATE $? "Installing Ansible"


