# ☁️ Cloud DevOps Project (Terraform Infrastructure Provisioning)

This project provisions a basic CI/CD infrastructure on **AWS** using **Terraform** with modular design and remote backend. The setup includes a Jenkins server, VPC networking, security groups, monitoring, and backend state management with S3.

---

## 🚀 Project Overview

This project is part of a Cloud DevOps Graduation Program and demonstrates Infrastructure as Code (IaC) best practices using Terraform. It automates the provisioning of:

- Virtual Private Cloud (VPC)
- Public Subnet
- Internet Gateway (IGW)
- Network ACLs
- EC2 instance for Jenkins
- Security Groups
- S3 Backend for Terraform State
- DynamoDB for State Locking
- CloudWatch Monitoring

---

## 📁 Project Structure

```bash
CloudDevOpsProject/
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── backend.tf
│   ├── terraform.tfvars
│   ├── modules/
│   │   ├── network/
│   │   │   └── (VPC, subnet, IGW, ACL...)
│   │   └── server/
│   │       └── (EC2 instance, SG...)
│   └── .gitignore
├── README.md
└── jenkins-pass.txt (excluded from Git)
```
## 🌐 Infrastructure Diagram
```
          +------------------------+
          |     Internet Gateway   |
          +-----------+------------+
                      |
              +-------v--------+
              |    Public Subnet |
              +--------+--------+
                       |
              +--------v--------+
              |    EC2 (Jenkins) |
              |  Security Group  |
              +------------------+

```
## ✅ Prerequisites
- AWS account with programmatic access
- Terraform installed locally (v1.8.4)
- Git
- SSH key pair for EC2 access


