#!/bin/bash
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

R="\e[31m"
G="\e[32m"
B="\e[33m"
BL="\e[34m"
N="\e[0m"

echo "Script started:$TIMESTAMP"
ID1=$(id -u)

VALIDATE()
{
   if [ $1 -ne 0 ];
   then
        echo -e "$2 is .... $R FAILURE $N"
        exit 1
   else
        echo -e "$2 is ..... $G SUCCESS $N"
   fi              

}


if [ $ID1 -ne 0 ];
then
    echo "Not super user"
    exit 1
else
    echo "Super user"    
fi    




dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installation of MySQL"

dnf install git -y &>>$LOGFILE
VALIDATE $? "Installation of GIT"

dnf install dockerr -y &>>$LOGFILE
VALIDATE $? "Installation of docker"