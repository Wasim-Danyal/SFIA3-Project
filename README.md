# SFIA3 Project

## Contents 

- [Project Brief](#Project-Brief)
	* [Resources](#Resources)
   * [Brief](#brief)
- [Project Approach](#Project-Approach)
- [Architecture](#Architecture)
   * [Technologies](#Technologies)
   * [CI Pipeline](#CI-Pipeline)
   * [Infrastructure](#Infrastructure)
   * [Risk Assessment](#Risk-Assessment)
- [Pricing](#Pricing)

## Project Brief
### Resources
### Brief

## Project Approach
## Architecture
### Technologies
##### Docker
Docker was used to containerize services for the application, the services were containerised and pushed to a docker hub repository where they were pulled down to be used by kubernetes.
##### Terraform
Terraform is an infrastructure as code software. This was used to provision the network environment which was used to host the application. 
##### Jenkins
Jenkins is a CI Server, it was used to automate deployment once changes were made on the GitHub repository.
##### Kubernetes
Kubernetes is a container orchestration system which was used to deploy the application on to cthe cluster.
##### AWS
AWS is the cloud provider used to deploy the application in the production environment.
##### GCP
GCP was the cloud provider which we used as a testing environment to ensure all components of the application worked with each other when it was deployed.
##### NGINX
NGINX was a web server which was used as a reverse proxy to communicate from ports to services of the application.
### CI Pipeline
![enter image description here](https://raw.githubusercontent.com/Wasim-Danyal/T3-Project/docs/Documentation/CI%20Pipeline.png?token=AQHGWYRDJ7RI43KQPCV6N4C7NH35K)
### Infrastructure
![enter image description here](https://raw.githubusercontent.com/Wasim-Danyal/T3-Project/docs/Documentation/infrastructure.png?token=AQHGWYXBOHS7ZALX6TQK5RS7NH4HU)
### Risk Assessment

## Pricing


