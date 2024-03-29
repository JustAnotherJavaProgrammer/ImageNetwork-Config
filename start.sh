#!/bin/sh
kind create cluster --config ./kind.config
kubectl apply --filename https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/kind/deploy.yaml
kubectl wait --namespace ingress-nginx --for=condition=ready pod --selector=app.kubernetes.io/component=controller --timeout=90s
kubectl create -f postgres-configmap.yaml,api-configmap.yaml
./kubectl_apply.sh