#!/bin/sh
kubectl apply -f github-secret.yml,postgres-persistentvolumeclaim.yaml,postgres-deployment.yaml,api-deployment.yaml,frontend-deployment.yaml
