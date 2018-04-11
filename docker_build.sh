#!/usr/bin/env bash
IMAGE=friendlyhello
docker rmi $IMAGE 2>/dev/null
docker build --rm --no-cache -t friendlyhello .