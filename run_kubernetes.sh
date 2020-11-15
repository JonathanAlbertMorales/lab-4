#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=silvermoonlight/lab4-ml-api:firsttry

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run ml-api --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pod
# Step 4:
# Forward the container port to a host
kubectl port-forward ml-api 8000:80

