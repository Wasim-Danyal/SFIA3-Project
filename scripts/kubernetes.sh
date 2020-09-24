#! /bin/bash
kubectl apply -f kubernetes/backend.yaml
kubectl apply -f kubernetes/frontend.yaml
kubectl apply -f kubernetes/mysql.yaml
kubectl apply -f kubernetes/nginx.yaml
kubectl apply -f kubernetes/nginx-config-map.yaml
sleep 20
kubectl get services