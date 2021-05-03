#!/usr/bin/env bash
TAG=latest
if [ $1 ]; then
    TAG=$1
fi
docker run -d --restart=unless-stopped \
    -p 80:80 -p 443:443 \
    --privileged \
    rancher/rancher:$TAG
