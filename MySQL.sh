#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ];
then 
    echo "Please execute this command from super user access"
    exit 1 
else 
    echo "You are super user"    
fi    