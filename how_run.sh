#!/usr/bin/sh

# docker build -t go-hello .
# docker run go-hello

docker-compose -f docker-compose.yml build --force-rm --no-cache

docker login docker.io
kubectl create secret generic mitlonik-registry-key --from-file=.dockerconfigjson=../../.docker/config.json --type=kubernetes.io/dockerconfigjson

docker push mitlonik/go-hello

------


## INstall monitoring tools:

* grafana - https://grafana.com/docs/loki/latest/installation/helm/

``` bash
helm repo add grafana https://grafana.github.io/helm-charts

helm repo update

# helm upgrade --install loki grafana/loki-stack
## Deploy Loki Stack (Loki, Fluent Bit, Grafana, Prometheus)
helm upgrade --install loki grafana/loki-stack \
  --set fluent-bit.enabled=true,promtail.enabled=false,grafana.enabled=true,prometheus.enabled=true,prometheus.alertmanager.persistentVolume.enabled=false,prometheus.server.persistentVolume.enabled=false

```