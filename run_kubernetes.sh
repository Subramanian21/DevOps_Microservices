#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=sthirupws01/udacity-ml-service

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run sthirupws01 --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods 

#wait until kubernetes pods is ready
sleep 90s 

# Step 4:
# Forward the container port to a host
kubectl port-forward sthirupws01 8000:80 
