# Capstone Project [Udacity Cloud Devops Nanodegree]

This project is done as part of Could DevOps Nanodegree program.

### Project Overview

The goal of the project is to set up a Kubernetes cluster using AWS Elastic Kubernetes Service and deploy a docker image leveraging CircleCI CI/CD Pipeline.

Which includes:
- Containerizing apps using Docker
- Deploying them to Kubernetes Cluster on AWS EKS
- Automate all the steps using CI/CD tools like CircleCI or Jenkins
- Provision infrastructure using AWS CloudFormation
- Configure the infrastructure using Ansible playbooks

---

> ### Application:

- `weather-app/`: The project uses OpenWeather API to get weather of a requested city

> ### Utils:

- `run_docker.sh`: script file to build an image from Dockerfile and run a docker container locally
- `run_kubernetes.sh`: script file to run on Kubernetes locally with minikube
- `upload_docker.sh`: script file to tag a local docker image and push it to docker hub
- `create_eks_cluster`: script to create aws eks cluster using eksctl

---

> ### Screenshots:

- `screenshots/[S01]-failed-lint-job-circleci`: failed lint job due to missing semicolon in `server.js`
- `screenshots/[S02]-sucess-lint-job-circleci`: successful lint job after running `npm run lint:fix`
- `screenshots/[S03]-success-docker-build-push-circleci`: successful built docker image job
- `screenshots/[S04]-docker-image-in-docker-hub`: successfully pushed app docker image to personal docker hub
- `screenshots/[S05][S05]-aws-eks-cluster-created`: successfully created CloudFormation stack for EKS cluster
- `screenshots/[S06]-node-inside-eks-cluster`: running EC2 instances of EKS cluster in AWS console
- `screenshots/[S07]-success-deployed-app`: successfully rolled out deployment with new pods
- `screenshots/[S08]-eks-elb-address`: Address of ELB for EC2 instances
- `screenshots/[S09]-app-running`: application running on chrome
