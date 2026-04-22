🚀 Nimbus E-Commerce Platform

Nimbus is a cloud-native eCommerce platform designed for scalability, security, and observability. It demonstrates a full DevOps lifecycle using Docker, Kubernetes (AKS), Terraform, and CI/CD automation with GitHub Actions.

🧱 Architecture Overview
Frontend (React / Next.js)
        ↓
Backend API (Node.js)
        ↓
Docker Containers
        ↓
Azure Kubernetes Service (AKS)
        ↓
Terraform (Infrastructure as Code)
⚙️ Core Technologies
🐳 Docker – Containerization
☸️ Kubernetes (AKS) – Orchestration & scaling
🏗️ Terraform – Infrastructure provisioning
☁️ Azure Container Registry (ACR) – Image storage
🔄 GitHub Actions – CI/CD automation
📊 Prometheus – Metrics collection
📈 Grafana – Monitoring dashboards
🔐 SonarCloud – Code quality & security analysis
🛡️ Trivy – Container vulnerability scanning
📁 Project Structure
nimbus/
├── app/                          # Frontend + Backend application
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
└── .github/workflows/           # CI/CD pipelines
🐳 Docker
🔧 Build Image
docker build -t nimbus-ecommerce:v1 .
▶️ Run Locally
docker run -p 3030:3030 nimbus-ecommerce:v1

👉 Open:

http://localhost:3030
☸️ Kubernetes (AKS Deployment)
🚀 Deploy Application
kubectl apply -f k8s/deployments/
kubectl apply -f k8s/services/
🔍 Verify Deployment
kubectl get pods -n dev
kubectl get services -n dev
📊 Monitoring & Observability

Nimbus includes a full observability stack:

📌 Prometheus
Collects metrics from Kubernetes cluster and services
Tracks performance, uptime, and resource usage
📌 Grafana
Visual dashboards for system monitoring
Real-time insights into cluster health
Deploy Monitoring Stack
kubectl apply -f k8s/monitoring/
🌍 Terraform (Infrastructure as Code)
⚙️ Initialize Terraform
cd infrastructure/environments/dev
terraform init
📦 Plan & Apply
terraform plan
terraform apply
🔄 CI/CD Pipeline (GitHub Actions)

Nimbus uses a multi-stage automated pipeline:

1️⃣ Code Quality
SonarCloud static analysis
Enforces quality gates before build
2️⃣ Build & Security Scan
Docker image build
Push to Azure Container Registry (ACR)
Vulnerability scanning with Trivy
3️⃣ Deployment
Authenticate with Azure
Deploy to AKS cluster
Apply Kubernetes manifests
Verify rollout status
4️⃣ Notifications
Email alerts on successful deployment
Links to CI/CD and SonarCloud dashboards
🔁 Deployment Workflow
Push to main branch
        ↓
SonarCloud Code Scan
        ↓
Docker Build
        ↓
Trivy Security Scan
        ↓
Push Image to ACR
        ↓
Deploy to AKS
        ↓
Verify Deployment
        ↓
Send Notification Email
🚀 Deployment Details
📦 Container Registry:
nimbusacrdev001.azurecr.io/nimbusproject:v2
☸️ Kubernetes Cluster:
aks-nimbus-dev
📍 Namespace:
dev
🔐 Security Features
SonarCloud code quality enforcement
Trivy vulnerability scanning
GitHub Secrets for secure credentials
Controlled CI/CD deployment pipeline
📬 Notifications

On successful deployment, the system sends:

Deployment status email
Links to:
GitHub Actions run
SonarCloud dashboard
🚀 Future Improvements
Helm chart-based deployments
Horizontal Pod Autoscaling (HPA)
Centralized logging (Loki / ELK stack)
Canary / Blue-Green deployments
Automated rollback strategies
Multi-environment support (dev / staging / prod)
📄 License

MIT License

💡 Summary

Nimbus is a production-style DevOps project showcasing:

Cloud-native architecture on Azure (AKS)
Infrastructure as Code with Terraform
Containerized microservices with Docker
Full CI/CD automation with GitHub Actions
Observability using Prometheus & Grafana
Security-first deployment pipeline
🏁 Nimbus = Secure • Scalable • Observable • Automated 🚀
