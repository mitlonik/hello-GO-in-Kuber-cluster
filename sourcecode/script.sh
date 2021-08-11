#!/bin/bash
#set -euo pipefail
#ls -al

#### Variables ####
# REPO=
#TAG=helloworld

#DOCKERFILE_PATH=Dockerfile

#HELM_RELEASE_NAME=helloworld
#HELM_NAMESPACE=helloworld
#HELM_VALUES="../values.yaml"

#echo  Swithching to DEV-new kubernetes config
#export KUBECONFIG=/etc/kubernetes/cluster.conf

#echo Build Docker image
# docker build -t $REPO:$TAG --rm -f $DOCKERFILE_PATH .
#docker build -t $TAG --rm -f $DOCKERFILE_PATH .

#echo Generating templates ... 
#helm template $HELM_VALUES .

#echo Debug helm with lint
#helm lint --debug

#echo Upgrading/installing release $HELM_RELEASE_NAME
#helm upgrade $HELM_RELEASE_NAME -n $HELM_NAMESPACE -f $HELM_VALUES . --install --debug