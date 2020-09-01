#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="vitorfortunatoac/vitor-udacity-docker"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run vitorcontainer --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward vitorcontainer-576fcbd496-4x77h 8080:80