#!/bin/bash
exit(1)
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
    echo "MySQL installation failed"
else 
    echo "MySQL installation passed"
fi 

dnf install git -y


if [ $? -ne 0 ];
then
    echo "GIT installation failed"
else 
    echo "GIT installation passed"
fi 

echo "still proceeding"