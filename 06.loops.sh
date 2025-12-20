#!/bin/bash
DATE=$(date +%F)
LOGSDIR=/home/centos/shellscript-logs
# /home/centos/shellscript-logs/script-name-date.log
SCRIPT_NAME=$0
LOGFILE=$LOGSDIR/$0-$DATE.log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


VALIDATE(){
    if [ $1 -ne 0 ];
    then
        echo -e "Installing $2 ... $R FAILURE $N"
        exit 1
    else
        echo -e "Installing $2 ... $G SUCCESS $N"
    fi
}

for i in $@
do
yum list installed $i -y
    if [ $? -ne 0 ]
    then
    echo "$i is not installed"
    yum instal $i -y &>>LOGFILE
     VALIDATE $? "$i"
    else
    echo -e "$Y $i is already installed $N"
    fi
done
