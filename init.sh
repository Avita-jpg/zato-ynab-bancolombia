#!/bin/bash

#export src=/opt/project/src
#export target=/opt/hot-deploy

sudo docker rm --force zato &&
sudo docker run \
 --rm \
 --name zato \
 --pull=always \
 -p 22022:22 \
 -p 8183:8183 \
 -p 17010:17010 \
 ghcr.io/zatosource/zato-3.2-quickstart:latest
