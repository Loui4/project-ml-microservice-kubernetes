#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="loui4/sklearn-ml-api"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag $dockerpath:v1.0 $dockerpath:latest

# Step 3:
# Push image to a docker repository
docker push $dockerpath:latest