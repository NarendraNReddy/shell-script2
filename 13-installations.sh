#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ];
then
    echo "Not super user"
    exit 1
else
    echo "Super user"    
fi  