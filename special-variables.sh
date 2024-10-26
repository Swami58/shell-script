#!bin/bash
echo "All variables: $@"
echo "no of variables passed : $#"
echo " script name $0"
echo "current working directory :$PWD"
echo "Home directory of current user : $HOME"
echo "which user is running :$USER"
echo "Hostname $HOSTNAME"
echo "processid of current shell script :$$"
sleep 60 &
echo "aProcess id of last background command $!"