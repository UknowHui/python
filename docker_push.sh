#!/usr/bin/env bash
REGISTRY=registry-vpc.cn-qingdao.aliyuncs.com

NAMESPACE=uknowhui
IMAGE=python

docker login --username=uknowhh --password=qazwsx123,./ $REGISTRY
docker tag $IMAGE $REGISTRY/$NAMESPACE/$IMAGE
docker push $REGISTRY/$NAMESPACE/$IMAGE