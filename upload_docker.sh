#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=gaurav0390/machinelearning

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username gaurav0390
docker tag machinelearning $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath
