#!/bin/bash

id=$(id -u)
if [ id -ne 0 ];
then
    echo "Not super user"
else
    echo "Super user"    
fi    



dnf install mysql -y