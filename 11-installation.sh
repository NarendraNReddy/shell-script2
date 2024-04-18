#!/bin/bash

ID1=$(id -u)

VALIDATE()
{
    echo "Exit status:$1"
    echo "What-to-do:$2"
}

if [ $ID1 -ne 0 ];
then
    echo "Not super user"
    exit 1
else
    echo "Super user"    
fi    




dnf install mysql -y
VALIDATE $? "Installation of MySQL"

dnf install git -y


