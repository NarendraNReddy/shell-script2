#!/bin/bash

USERID=$(id -u)
SCRIPT_NAME="echo $0 |  cut -d '.' -f1"
echo $SCRIPT_NAME


if [ $USERID -ne 0 ];
then 
    echo "Please execute this command from super user access"
    exit 1 
else 
    echo "You are super user"    
fi    



