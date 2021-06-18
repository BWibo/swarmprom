#!/usr/bin/env bash

tag=${1:-8.0.2}
image="bsvr.gis.lrg.tum.de/swarmprom-grafana:$tag"

echo "Image: $image"

DOCKER_BUILDKIT=1 \
docker build . \
  -t "$image" \
  --build-arg BASEIMAGE_TAG=$tag

docker push "$image"
