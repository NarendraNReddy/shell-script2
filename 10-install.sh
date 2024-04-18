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
echo "still proceeding"