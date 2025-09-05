#!/bin/bash
set -e

echo "Starting deployment to EKS..."

# Navigate to k8s folder
cd k8s

# Apply Kubernetes manifests
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

echo "Deployment completed successfully."
