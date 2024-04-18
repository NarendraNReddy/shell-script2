#!/bin/bash

ID1=$(id -u)
echo $ID1
if [ $ID1 -ne 0 ];
then
    echo "Not super user"
    exit 1
else
    echo "Super user"    
fi    

dnf install mysql -y

if [ $? -ne 0 ];
then
    echo "My SQL FAIL"
else 
    echo "PASS"
fi 

dnf install git -y
echo "still proceeding"