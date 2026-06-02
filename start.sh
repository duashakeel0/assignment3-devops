#!/bin/bash

echo "Creating namespace..."
kubectl apply -f k8s/namespace.yml

echo "Creating secrets..."
kubectl apply -f k8s/mysql-secret.yml

echo "Creating storage..."
kubectl apply -f k8s/mysql-pv.yml
kubectl apply -f k8s/mysql-pvc.yml

echo "Creating configmaps..."
kubectl apply -f k8s/flask-configmap.yml
kubectl apply -f k8s/nginx-configmap.yml

echo "Deploying MySQL..."
kubectl apply -f k8s/mysql-deployment.yml
kubectl apply -f k8s/mysql-service.yml

echo "Deploying Flask..."
kubectl apply -f k8s/flask-deployment.yml
kubectl apply -f k8s/flask-service.yml

echo "Deploying Nginx..."
kubectl apply -f k8s/nginx-deployment.yml
kubectl apply -f k8s/nginx-service.yml

echo "Deployment complete."
