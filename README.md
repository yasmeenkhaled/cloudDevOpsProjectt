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

## 1- Docker 

Dockerfile builds the Flask app into a container image.

```
docker build -t flask-app .

docker run -p 5000:5000 flask-app
```

<img width="986" height="646" alt="image" src="https://github.com/user-attachments/assets/f0d77ea1-a8b8-4ce7-8ccd-fcafffb22b41" />



## 2- K8s 

Resources defined in YAML: Deployment, Service, Namespace

Start server 
```
 minikube start
```
Apply yaml files
```
kubectl apply -f namespace.yaml
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
````
Open Port 
```
minikube service flask-service -n ivolve
```
<img width="898" height="200" alt="image" src="https://github.com/user-attachments/assets/e7422641-1db3-4447-95bc-5a773aa2517f" />
<img width="568" height="172" alt="image" src="https://github.com/user-attachments/assets/ffb2779c-2d59-41e3-8c92-474e3e122af8" />

## 3- Terraform 
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/57425c5a-4258-4738-a297-3c6b8e27e6d5" />

<img width="1023" height="516" alt="image" src="https://github.com/user-attachments/assets/66735df1-5abc-4329-8dcc-f21392fd8b85" />


# cloudDevOpsProjectt
