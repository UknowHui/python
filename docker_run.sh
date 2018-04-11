#!/usr/bin/env bash
REGISTRY=registry-vpc.cn-qingdao.aliyuncs.com

NAMESPACE=uknowhui
IMAGE=python
CONTAINER=friendlyhello

docker login --username=uknowhh --password=qazwsx123,./ $REGISTRY
docker pull $REGISTRY/$NAMESPACE/$IMAGE:latest
docker stop $CONTAINER 2>/dev/null
docker rm -f $CONTAINER 2>/dev/null
docker run -d --restart unless-stopped -p 8081:80 --name=$CONTAINER $REGISTRY/$NAMESPACE$1/$IMAGE:latest