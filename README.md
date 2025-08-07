# EKS Jenkins CI/CD Pipeline

This repository demonstrates a complete CI/CD pipeline using Jenkins deployed on AWS EKS.

## 📌 Features

- Jenkins deployed on EKS
- Sample pipeline to build, test, and deploy a simple app
- Infrastructure as code (Terraform and/or Helm)
- Declarative Jenkins pipeline

## 🧰 Tech Stack

- AWS EKS
- Jenkins
- Docker
- Kubernetes (kubectl, manifests)
- Terraform (optional for EKS setup)
- Helm (optional for Jenkins install)

## 📁 Folder Structure

| Folder | Description |
|--------|-------------|
| `jenkins/` | Kubernetes manifests for Jenkins deployment |
| `helm/jenkins/` | Jenkins Helm chart setup (if used) |
| `pipeline/` | Jenkinsfile and sample app |
| `terraform/` | EKS cluster provisioning code (optional) |

## 🚀 Getting Started

### 1. Deploy Jenkins on EKS

```bash
kubectl apply -f jenkins/
