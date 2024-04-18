#!/bin/bash

USERID=$(id -u)
SCRIPT_NAME=$(echo $0 |  cut -d "." -f1)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
BL="\e[34m"
N="\e[0m"

if [ $USERID -ne 0 ];
then 
    echo "Please execute this command from super user access"
    exit 1 
else 
    echo "You are super user"    
fi    

VALIDATE()
{
    if [ $1 -ne 0 ];
    then 
        echo -e "$2 is ...$R FAILURE $N"
    else 
        echo -e "$2 is $G ....SUCCESS $N"    
    fi    
}

dnf install mysql-server -y &>>$LOGFILE 
VALIDATE $? "MySQL server"

systemctl enable mysqld -y &>>$LOGFILE
VALIDATE $? "Enable mysqld server"

systemctl start mysqld -y &>>$LOGFILE
VALIDATE $? "Start mysqld server"

mysql_secure_installation --set-root-pass ExpenseApp@1 &>>$LOGFILE
VALIDATE $? "Setting Up MySQL server"





