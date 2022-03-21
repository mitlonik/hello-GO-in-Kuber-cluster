#!/usr/bin/sh

docker-compose -f docker-compose.yml build --force-rm --no-cache

docker login docker.io
kubectl create secret generic mitlonik-registry-key --from-file=.dockerconfigjson=../../.docker/config.json --type=kubernetes.io/dockerconfigjson



docker push mitlonik/go-hello