# ☁️ Cloud DevOps Project

This project demonstrates a complete DevOps lifecycle implementation for deploying a Flask web application on the cloud using the following tools:

- **Git & GitHub** – Source control and collaboration
- **Docker** – Containerization
- **Kubernetes (K8s)** – Container orchestration
- **Terraform** – Infrastructure as Code on AWS
- **Ansible** – Configuration management
- **Jenkins** – Continuous Integration (CI)
- **ArgoCD** – Continuous Deployment (CD)

---

## 📦 Application Overview

The application is a simple Python Flask web app that renders an HTML page using Jinja templates.

```python
from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def index():
    return render_template("index.html")

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
```
 * **Source Code:**
  [FinalProject](https://github.com/yasmeenkhaled/cloudDevOpsProjectt/blob/main/FinalProject)

---
## 🚀 1. Docker – Containerizing the Flask App

We use a `Dockerfile` to package the Flask application into a container image.

### 🔧 Build the Docker Image

```bash
docker build -t flask-app .
```

### ▶️ Run the Container

```bash
docker run -p 5000:5000 flask-app
```

> ✅ This exposes the Flask app on [http://localhost:5000](http://localhost:5000)

![Docker Image](https://github.com/user-attachments/assets/f0d77ea1-a8b8-4ce7-8ccd-fcafffb22b41)

---

## ☸️ 2. Kubernetes – Deploying the App on Minikube

The Kubernetes setup includes the following YAML resources:

* `namespace.yaml`
* `deployment.yaml`
* `service.yaml`

### 🚀 Start Minikube

```bash
minikube start
```

### 📦 Apply Kubernetes Manifests

```bash
kubectl apply -f namespace.yaml
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```

### 🌐 Expose the Service

```bash
minikube service flask-service -n ivolve
```

> This command opens the exposed service in your browser.

![Service Exposed](https://github.com/user-attachments/assets/e7422641-1db3-4447-95bc-5a773aa2517f)
![Service UI](https://github.com/user-attachments/assets/ffb2779c-2d59-41e3-8c92-474e3e122af8)

---

## 🌍 3. Terraform – Provisioning AWS Infrastructure

Terraform is used to provision backend resources such as:

* S3 bucket for remote state
* DynamoDB table for state locking (deprecated: use `use_lockfile`)
* EC2 instance or other infrastructure
  **Source Code:**
 **Source Code:**
- [variables.tf](https://github.com/yasmeenkhaled/cloudDevOpsProjectt/blob/main/variables.tf)
- [providers.tf](https://github.com/yasmeenkhaled/cloudDevOpsProjectt/blob/main/providers.tf)
- [outputs.tf](https://github.com/yasmeenkhaled/cloudDevOpsProjectt/blob/main/outputs.tf)
- [main.tf](https://github.com/yasmeenkhaled/cloudDevOpsProjectt/blob/main/main.tf)
- [backend.tf](https://github.com/yasmeenkhaled/cloudDevOpsProjectt/blob/main/backend.tf)


### 📷 Infrastructure Provisioning Screenshots:

![Terraform Infra](https://github.com/user-attachments/assets/57425c5a-4258-4738-a297-3c6b8e27e6d5)
![Terraform Output](https://github.com/user-attachments/assets/66735df1-5abc-4329-8dcc-f21392fd8b85)

---
### Jenkins / CI/CD pipline 
**Source Code:**
-[Jenkinsfile](https://github.com/yasmeenkhaled/cloudDevOpsProjectt/blob/main/jenkinsfile)

<img width="1280" height="604" alt="image" src="https://github.com/user-attachments/assets/00b14de3-e0f0-4d72-b0ca-2efdfeb77135" />

