#!/usr/bin/env bash

tag=${1:-v2.27.1}
image="bsvr.gis.lrg.tum.de/swarmprom-prometheus:$tag"

echo "Image: $image"

DOCKER_BUILDKIT=1 \
docker build . \
  -t "$image" \
  --build-arg BASEIMAGE_TAG=$tag

docker push "$image"
