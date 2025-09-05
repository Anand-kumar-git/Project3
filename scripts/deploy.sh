#!/bin/bash
set -e

echo "Starting deployment to EKS.."

aws eks update-kubeconfig --name mycluster --region us-east-1

kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml

echo "Deployment completed successfully!"
