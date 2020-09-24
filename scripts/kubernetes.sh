#! /bin/bash
docker pull rwright1992/backend:latest
docker pull rwright1992/frontend:latest
docker pull rwright1992/nginx:latest
kubectl apply -f kubernetes/backend.yaml
kubectl apply -f kubernetes/frontend.yaml
kubectl apply -f kubernetes/mysql.yaml
kubectl apply -f kubernetes/nginx.yaml
kubectl apply -f kubernetes/nginx-config-map.yaml
sleep 20
kubectl get services