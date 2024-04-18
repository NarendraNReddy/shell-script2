#!/bin/bash
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log


ID1=$(id -u)

VALIDATE()
{
   if [ $1 -ne 0 ];
   then
        echo "$2 is .... FAILURE"
        exit 1
   else
        echo "$2 is ..... SUCCESS"
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