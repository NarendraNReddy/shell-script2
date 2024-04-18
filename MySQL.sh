#!/bin/bash

USERID=$(id -u)
SCRIPT_NAME=$(echo $0 |  cut -d "." -f1)
TIMESTAMP=$(date +%F-%H-%M-%S)
echo $TIMESTAMP


if [ $USERID -ne 0 ];
then 
    echo "Please execute this command from super user access"
    exit 1 
else 
    echo "You are super user"    
fi    



