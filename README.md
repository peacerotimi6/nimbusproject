# 🚀 Nimbus E-Commerce Platform

Nimbus is a cloud-native eCommerce platform built with a strong focus on **scalability, automation, security, and observability**.  
It demonstrates a complete **DevOps lifecycle** using Docker, Kubernetes (AKS), Terraform, and CI/CD pipelines with GitHub Actions.

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

⚙️ Tech Stack
🐳 Docker – Containerization
☸️ Kubernetes (AKS) – Container orchestration
🏗️ Terraform – Infrastructure as Code
☁️ Azure Container Registry (ACR) – Image storage
🔄 GitHub Actions – CI/CD automation
📊 Prometheus – Monitoring & metrics
📈 Grafana – Dashboards & visualization
🔐 SonarCloud – Code quality analysis
🛡️ Trivy – Security vulnerability scanning


📁 Project Structure
nimbus/
├── app/                          # Application (frontend + backend)
│
├── docker/                       # Dockerfiles
│
├── infrastructure/              # Terraform (Azure resources)
│   └── environments/
│       └── dev/
│           ├── AKS/
│           ├── ACR/
│           ├── keyvault/
│           └── resource-group/
│
├── k8s/                         # Kubernetes manifests
│   ├── deployments/
│   ├── services/
│   ├── ingress/
│   └── monitoring/
│       ├── prometheus/
│       └── grafana/
│
└── .github/workflows/           # CI/CD pipeline

🐳 Docker Setup
Build Image
docker build -t nimbus-ecommerce:v1 .
Run Container
docker run -p 3030:3030 nimbus-ecommerce:v1

Open:

http://localhost:3030

☸️ Kubernetes (AKS Deployment)
Deploy Application
kubectl apply -f k8s/deployments/
kubectl apply -f k8s/services/
Check Status
kubectl get pods -n dev
kubectl get services -n dev
📊 Monitoring Stack

Nimbus includes full observability:

Prometheus
Metrics collection from cluster & services
Performance monitoring
Grafana
Visual dashboards
System health insights

Deploy monitoring:

kubectl apply -f k8s/monitoring/
🌍 Terraform (Infrastructure)
Initialize
cd infrastructure/environments/dev
terraform init
Deploy Infrastructure
terraform plan
terraform apply
🔄 CI/CD Pipeline

Nimbus uses GitHub Actions for automation:

Pipeline Flow
Code Push →
SonarCloud Analysis →
Docker Build →
Trivy Scan →
Push to ACR →
Deploy to AKS →
Verify Deployment →
Notification
🚀 Deployment Details
Container Registry: nimbusacrdev001.azurecr.io/nimbusproject:v2
Kubernetes Cluster: aks-nimbus-dev
Namespace: dev
🔐 Security Features
SonarCloud static code analysis
Trivy vulnerability scanning
GitHub Secrets for secure credentials
Controlled CI/CD deployment pipeline
🚀 Future Improvements
Helm chart deployment
Horizontal Pod Autoscaling (HPA)
Centralized logging (Loki / ELK)
Blue/Green deployments
Multi-environment support (dev / staging / prod)
📄 License

This project is licensed under the MIT License.

💡 Summary

Nimbus demonstrates a real-world cloud-native DevOps architecture featuring:

Infrastructure as Code (Terraform)
Kubernetes orchestration (AKS)
CI/CD automation (GitHub Actions)
Security scanning (SonarCloud + Trivy)
Monitoring & observability (Prometheus + Grafana)
