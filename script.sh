#!/bin/bash

minikube delete

minikube start

git clone https://github.com/LymerStudio/k8sExDeployments.git /home/dev/App/

kubectl create namespace backend
kubectl create namespace service
kubectl create namespace frontend

kubectl apply -f /home/dev/App/k8sExDeployments/backend.yml -n backend
kubectl apply -f /home/dev/App/k8sExDeployments/nginx.yml -n service
kubectl apply -f /home/dev/App/k8sExDeployments/front-end.yml -n frontend
