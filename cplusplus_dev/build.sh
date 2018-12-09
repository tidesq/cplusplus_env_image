#!/bin/sh

tag="0.1"
image_name="cplusplus_dev_base"
echo "${image_name}:${tag}"

docker build --network=host --no-cache=true -f Dockerfile -t ${image_name}:${tag} .
#docker build --net=host --pull=true --no-cache=true -f Dockerfile -t ${image_name}:${tag} .