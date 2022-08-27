#!/usr/bin/env bash

# Define path to DockerHub repo
dockerpath=ravali121/weather-app
echo "Docker ID and Image: $dockerpath"

# Get minikube version
minikube version

# Start local minikube cluster
minikube start

# Get kubectl version
kubectl version

kubectl cluster-info

# Use minikube context
kubectl config use-context minikube

# Deploy to minikube cluster
kubectl apply -f deployment/namespace.yml
kubectl apply -f deployment/deployment.yml
kubectl apply -f deployment/service.yml

# Set docker image from Docker Hub
kubectl set image deployment weather-app weather-app=$dockerpath

# Wait for deployment to be ready
kubectl rollout status deployment weather-app

# List all pods, services and deployments running in minikube cluster
kubectl get all

# Check logs if application is running
kubectl logs service/weather-app

# Delete deployment and service
# kubectl delete -f deployment/deployment.yml
# kubectl delete -f deployment/service.yml
