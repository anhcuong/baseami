#!/bin/bash

CONTAINER_NAME=netdata

docker rm -f $CONTAINER_NAME
docker run --name $CONTAINER_NAME \
    -i \
    --net=host \
    --privileged \
    -v /proc:/host/proc:ro \
    -v /sys:/host/sys:ro \
    anhcuong/netdata:1.0.0