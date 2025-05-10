# springboot-k8s-cicd
Spring Boot microservice with end-to-end CI/CD pipeline using Jenkins, Docker, and K8s

## 📌 Project Overview
This project demonstrates a complete CI/CD pipeline for a Spring Boot microservice using:
- **Docker** to containerize the app
- **Jenkins** for CI/CD
- **Kubernetes** for orchestration
- **Docker Hub** as the container registry

## 🚀 Features
- Spring Boot REST Microservice
- Dockerized application
- Jenkins pipeline: Build → Push → Deploy to K8s
- Kubernetes deployment and service YAMLs
- NodePort access for testing

## 🧱 Folder Structure

├── Dockerfile
├── Jenkinsfile
├── springboot-deployment.yaml
├── springboot-service.yaml
├── src/
├── pom.xml


## ⚙️ CI/CD Flow
1. Clone repo via Jenkins
2. Build and push Docker image to Docker Hub
3. Deploy to Kubernetes using `kubectl apply`

## 🐳 Docker Hub Image
[🔗 View on Docker Hub](https://hub.docker.com/r/digbijayeenanda/my_app)

## 📦 Running Locally
```bash
docker run -p 8786:8786 digbijayeenanda/my_app


☸️ Deploying to Kubernetes
- bash

kubectl apply -f springboot-deployment.yaml
kubectl apply -f springboot-service.yaml

🧪 Test the App
- bash

http://localhost:30086

🧰 Tools Used
-Java 17
-Spring Boot 3
-Maven
-Docker
-Kubernetes
-Jenkins
-Git & GitHub
