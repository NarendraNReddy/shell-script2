#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ];
then
    echo "Not super user"
    exit 1
else
    echo "Super user"    
fi  
#echo $@
for i in $@;
do
    echo "packages to install $i"
    dnf list installed $i
done