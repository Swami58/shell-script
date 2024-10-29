#!/bin/bash 
USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPTNAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPTNAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
N="\e[0m"

echo "Script started execuring at : $TIMESTAMP"
VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "$2 ... $R Failure $N"
        exit 1
    else
        echo "$2 ..$G Success $N"
    fi

}



if [ $USERID -ne 0 ]
then 
    echo "please run this script with root access"
    exit 1 
else
    echo "you are super user"
fi
dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installing MYSQL"

dnf install git -y &>>$LOGFILE
VALIDATE $? "Installing Git"

dnf install dockerr  -y &>>$LOGFILE
VALIDATE $? "Installing Git"