#!/bin/bash
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
BL="\e[34m"
N="\e[0m"

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
    dnf list installed $i &>>$LOGFILE
    if [ $? -eq 0 ];
    then
        echo -e "Package $i installed.... $BSKIPPING"
    else 
        echo "Package $i need to install"    
    fi    
done