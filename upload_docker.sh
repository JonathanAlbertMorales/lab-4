#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=silvermoonlight/lab4-ml-api

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u silvermoonlight -p 17103Doc
docker tag lab4-ml-api:latest $dockerpath:firsttry

# Step 3:
# Push image to a docker repository
docker push silvermoonlight/lab4-ml-api:firsttry