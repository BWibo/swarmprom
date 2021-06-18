#!/usr/bin/env bash

tag=${1:-7.5.8}
image="bsvr.gis.lrg.tum.de/swarmprom-grafana:$tag"

echo "Image: $image"

DOCKER_BUILDKIT=1 \
docker build -t "$image" .

docker push "$image"
