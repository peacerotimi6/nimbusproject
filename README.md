# Nimbus E-Commerce Platform 🚀

Nimbus is a cloud-native eCommerce platform built with scalability, security, and observability at its core. It leverages Docker, Kubernetes (AKS), and Terraform to deliver a production-ready DevOps pipeline with integrated monitoring and security scanning.

---

## 🧱 Architecture Overview

```text
Frontend (React / Next.js)
        ↓
Backend API (Node.js)
        ↓
Docker Containers
        ↓
Azure Kubernetes Service (AKS)
        ↓
Terraform (Infrastructure as Code)
```

---

## ⚙️ Core Technologies

* Docker – Containerization
* Kubernetes (AKS) – Orchestration & scaling
* Terraform – Infrastructure provisioning
* Azure Container Registry (ACR) – Image storage
* GitHub Actions – CI/CD pipeline
* Prometheus – Metrics collection
* Grafana – Monitoring dashboards
* SonarCloud – Code quality & security
* Trivy – Container vulnerability scanning

---

## 📁 Project Structure

nimbus/
├── app/                      # your backend/frontend code
├── docker/                   # Dockerfiles
│
├── infrastructure/          # Terraform (Azure resources)
│   └── environments/
│       └── dev/
│           ├── AKS/
│           ├── ACR/
│           ├── keyvault/
│           └── resource-group/
│
├── k8s/                     # Kubernetes manifests
│   ├── deployments/
│   ├── services/
│   ├── ingress/
│   └── monitoring/
│       ├── prometheus/
│       └── grafana/
│
└── .github/workflows/       # CI/CD pipeline

## 🐳 Docker

### Build Image

```bash
docker build -t nimbus-ecommerce:v1 .
```

### Run Locally

```bash
docker run -p 3030:3030 nimbus-ecommerce:v1
```

Access:

```
http://localhost:3030
```

---

## ☸️ Kubernetes (AKS Deployment)

Deploy application:

```bash
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
```

Verify:

```bash
kubectl get pods -n dev
kubectl get services -n dev
```

---

## 📊 Monitoring & Observability

Nimbus includes a full monitoring stack:

### Prometheus

* Scrapes metrics from Kubernetes and services
* Tracks system and application performance

### Grafana

* Visualizes metrics via dashboards
* Provides insights into system health

Deploy monitoring:

```bash
kubectl apply -f k8s/monitoring/
```

---

## 🌍 Terraform (Infrastructure)

```bash
cd infrastructure/terraform
terraform init
terraform apply
```

---

## 🔄 CI/CD Pipeline (GitHub Actions)

Nimbus uses a **multi-stage CI/CD pipeline** for security and deployment to AKS.

### 🔐 1. Code Security (SonarCloud)

* Static code analysis
* Enforces quality gates before build

### 🐳 2. Build & Scan

* Builds Docker image
* Pushes to Azure Container Registry (ACR)
* Scans image using Trivy for vulnerabilities

### ☸️ 3. Deploy to AKS

* Authenticates with Azure
* Deploys Kubernetes manifests
* Verifies rollout status

### 📧 4. Notification

* Sends email on successful deployment

---

## 🔁 Workflow Summary

```text
Push to main →
SonarCloud Scan →
Docker Build →
Trivy Scan →
Push to ACR →
Deploy to AKS →
Verify Deployment →
Email Notification ✅
```

---

## 🚀 Deployment Details

* **Container Registry:**
  `nimbusacrdev001.azurecr.io/nimbusproject:v2`

* **Kubernetes Cluster:**
  `aks-nimbus-dev`

* **Namespace:**
  `dev`

---

## 🔐 Security Features

* SonarCloud code analysis
* Trivy vulnerability scanning
* GitHub Secrets for credentials
* Controlled deployment pipeline

---

## 📬 Notifications

* Email alerts sent after successful deployment
* Includes links to:

  * SonarCloud dashboard
  * GitHub Actions run

---

## 🚀 Future Improvements

* Helm charts for Kubernetes
* Horizontal Pod Autoscaler (HPA)
* Centralized logging (Loki / ELK)
* Canary / Blue-Green deployments
* Automated rollback strategies

---

## 📄 License

MIT License

---

## 💡 Summary

Nimbus demonstrates:

* End-to-end DevOps pipeline
* Secure container build and deployment
* AKS-based Kubernetes orchestration
* Real-time monitoring with Prometheus & Grafana

---

**Nimbus = Secure • Scalable • Observable eCommerce Platform**
