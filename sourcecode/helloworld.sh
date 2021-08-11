#!/usr/bin/bash

#CMD_CLEAR=/tmp/cmd_clear.sh
#echo Clear temporary containers
#echo '#!/bin/bash'  > $CMD_CLEAR
#echo 'result=`docker ps -a | grep hello-go`' >> $CMD_CLEAR
#echo '[[ "$result" != "" ]] && result=`docker rm hello-go`'  >> $CMD_CLEAR
#echo 'echo Temporary containers are deleted'  >> $CMD_CLEAR
#chmod +x $CMD_CLEAR
#/usr/bin/bash -c $CMD_CLEAR


echo Build Docker image. The '-t' flag specifies the name of the image.
docker build . -t go-hello

echo Let\'s build a docker container
docker run --name=hello-go -p 8080:8080 go-hello

echo Welcome to the browser!
curl localhost:8080