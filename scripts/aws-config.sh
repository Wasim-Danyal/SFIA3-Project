#!/bin/sh

aws configure set aws_access_key_id $AWS_ACCESS_KEY
aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY
aws configure set region eu-west-1
aws configure set output json
aws eks --region eu-west-1 update-kubeconfig --name basic-cluster