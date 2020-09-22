#! /bin/bash
sudo kubectl apply -f kubernetes/backend.yaml
sudo kubectl apply -f kubernetes/frontend.yaml
sudo kubectl apply -f kubernetes/mysql.yaml
sudo kubectl apply -f kubernetes/nginx.yaml
sudo kubectl apply -f kubernetes/nginx-config-map.yaml
sleep 20
sudo kubectl get services