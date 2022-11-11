#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=gaurav0390/machinelearning

# Step 2
# Run the Docker Hub container with kubernetes
#kubectl create deployment udacity-machinelearning --image=$dockerpath
#kubectl expose deployment udacity-machinelearning --type=NodePort --port=5000
#kubectl run udacity-machinelearning --image=$dockerpath --port 5000 --labels app=udacity-machinelearning
#kubectl create deploy udacity-machinelearning --image=$dockerpath
kubectl run udacity-machinelearning --image=$dockerpath --port=80
# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udacity-machinelearning 8000:80
