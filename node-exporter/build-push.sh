#!/usr/bin/env bash

tag=${1:-v1.1.2}
image="bsvr.gis.lrg.tum.de/swarmprom-node-exporter:$tag"

echo "Image: $image"

DOCKER_BUILDKIT=1 \
docker build -t "$image" .

docker push "$image"
