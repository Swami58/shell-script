#!/bin/bash 
VALIDATE(){
    if [$1 -ne 0 ]
    then 
        echo "$2 ... Failure"
        exit 1
    else
        echo "$2 ..Success"
    fi

}

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "please run this script with root access"
    exit 1 
else
    echo "you are super user"
fi
dnf install mysql -y 
VALIDATE $? "Installing MYSQL"

dnf install git -y 
VALIDATE $? "Installing MYSQL"
