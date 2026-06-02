# Assignment 3 - DevOps and Cloud Infrastructure

## Student Information

Name: Dua Shakeel

GitHub: duashakeel0

Repository: assignment3-devops

---

## Technologies Used

* Git
* GitHub
* Docker
* Docker Compose
* Docker Hub
* GitHub Actions
* Kubernetes
* Minikube
* Flask
* Nginx
* MySQL

---

## Project Structure

app/
├── flask-api/
├── nginx/

k8s/
├── namespace.yml
├── mysql-secret.yml
├── mysql-pv.yml
├── mysql-pvc.yml
├── mysql-deployment.yml
├── mysql-service.yml
├── flask-configmap.yml
├── flask-deployment.yml
├── flask-service.yml
├── nginx-configmap.yml
├── nginx-deployment.yml
├── nginx-service.yml

---

## Running the Application

Start Kubernetes deployment:

```bash
./start.sh
```

Check pods:

```bash
kubectl get pods -n assignment3
```

Get Minikube IP:

```bash
minikube ip
```

Health Check:

```bash
curl http://<MINIKUBE-IP>:30080/health
```

---

## Features

* Containerized Flask API
* Reverse Proxy with Nginx
* MySQL Persistent Storage
* Kubernetes Deployments
* Kubernetes Services
* ConfigMaps and Secrets
* GitHub Actions CI/CD Pipeline
* Docker Hub Integration
* Self-Healing Demonstration
* Horizontal Scaling Demonstration
