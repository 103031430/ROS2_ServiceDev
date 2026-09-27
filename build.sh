#!/bin/bash

# this command builds the docker image from the provided Dockerfile in this repo
# Flags used:
#   - no-cache = disables build cache. Forces Docker to rebuild the image from scratch
#   - pull = forces Docker to get the latest base image
#   - -t = gives image a name and optionally a version/tag
docker build --no-cache --pull -t pxnd4n/ros2_dev .