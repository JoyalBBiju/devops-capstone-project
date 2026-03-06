
# 🚀 DevOps Capstone Project

## 📌 Project Overview

This project demonstrates a **complete DevOps CI/CD pipeline** using modern DevOps tools and AWS cloud services.

The application is containerized using **Docker**, built and deployed through **Jenkins**, scanned for security using **Trivy**, stored in **Amazon ECR**, deployed on **Amazon EKS (Kubernetes)**, managed using **ArgoCD (GitOps)**, and monitored using **Prometheus and Grafana**.

The goal of this project is to show how DevOps practices automate **building, deploying, and monitoring applications in the cloud**.

---

# 🏗 Project Architecture

```
Developer
   ↓
GitHub
   ↓
Jenkins CI Pipeline
   ↓
Docker Image Build
   ↓
Trivy Security Scan
   ↓
Push Image → Amazon ECR
   ↓
ArgoCD GitOps Deployment
   ↓
Amazon EKS (Kubernetes)
   ↓
LoadBalancer
   ↓
Prometheus Monitoring
   ↓
Grafana Dashboard
```

---

# 🛠 Tools & Technologies Used

| Tool       | Purpose                     |
| ---------- | --------------------------- |
| GitHub     | Source code repository      |
| Jenkins    | CI/CD pipeline automation   |
| Docker     | Containerization            |
| Trivy      | Container security scanning |
| Amazon ECR | Docker image registry       |
| Terraform  | Infrastructure as Code      |
| Amazon EKS | Kubernetes cluster          |
| ArgoCD     | GitOps deployment           |
| Prometheus | Monitoring system           |
| Grafana    | Metrics visualization       |

---

# ⚙ CI/CD Pipeline Workflow

1. Developer pushes code to **GitHub**
2. **Jenkins pipeline starts automatically**
3. Jenkins performs:

   * Clone repository
   * Build Docker image
   * Run Trivy security scan
   * Push image to Amazon ECR
4. **ArgoCD detects changes in GitHub**
5. ArgoCD deploys the application to **Amazon EKS**
6. Kubernetes creates pods and exposes the app through **AWS LoadBalancer**

---

# ☁ Infrastructure Setup (Terraform)

Infrastructure is created using **Terraform**.

Resources created include:

* AWS VPC
* Subnets
* Amazon EKS cluster
* Worker nodes

Terraform files are located in:

```
terraform/
```

---

# ☸ Kubernetes Deployment

Kubernetes manifests are stored in:

```
k8s/
```

Files:

```
deployment.yaml
service.yaml
```

Deployment creates:

* 2 application pods
* Kubernetes LoadBalancer service

---

# 🔐 Security

Container images are scanned using **Trivy** in the Jenkins pipeline.

If **high or critical vulnerabilities** are found, the pipeline fails automatically.

---

# 📊 Monitoring

Monitoring is implemented using:

* **Prometheus** → Collects cluster metrics
* **Grafana** → Displays dashboards

Metrics monitored include:

* CPU usage
* Memory usage
* Pod health
* Node performance

---

# 🔄 GitOps Deployment (ArgoCD)

ArgoCD automates Kubernetes deployments using GitOps.

Workflow:

```
GitHub → ArgoCD → Kubernetes
```

Whenever changes are pushed to GitHub, ArgoCD automatically updates the application in the cluster.

---

# 🚨 Incident Simulation

To demonstrate **Kubernetes self-healing**, a pod failure was simulated.

Example:

```
kubectl delete pod <pod-name>
```

Kubernetes automatically recreated the pod and restored the service.

Incident documentation is available in:

```
incident-runbook.md
```

---

# 📂 Project Structure

```
devops-project
│
├── Dockerfile
├── Jenkinsfile
├── app.js
├── package.json
│
├── k8s
│   ├── deployment.yaml
│   └── service.yaml
│
├── terraform
│   ├── main.tf
│   ├── provider.tf
│   └── variables.tf
│
├── incident-runbook.md
└── README.md
```

---

# 🎯 DevOps Concepts Demonstrated

* Continuous Integration (CI)
* Continuous Deployment (CD)
* Infrastructure as Code (Terraform)
* Container Security Scanning
* Kubernetes Orchestration
* GitOps Deployment
* Monitoring & Observability
* Self-healing Infrastructure

---

# 👨‍💻 Author

**Joyal B Biju**

DevOps Enthusiast | Cloud & Automation Learner

---

# ⭐ Conclusion

This project demonstrates a **complete DevOps pipeline** using industry-standard tools.
It shows how modern DevOps practices enable **automated, secure, and scalable application deployment in the cloud**.


I can help you add a **visual DevOps architecture diagram to your README**, which makes the project look **much more professional on GitHub**.
