# AWS Highly Available Infrastructure using Terraform

This repository contains a **production-style AWS infrastructure** built using **Terraform (Infrastructure as Code)**.  
The project demonstrates how to design, deploy, and manage a **secure, scalable, and highly available cloud architecture** on AWS.

---

## 🔍 What This Project Is For

- Demonstrate **AWS networking fundamentals**
- Practice **Terraform modular design**
- Build **multi-AZ highly available infrastructure**
- Showcase **DevOps automation using Bash scripts**
- Serve as a **reference architecture** for web applications

---

## 🏗️ Architecture Summary

![AWS Terraform Architecture Diagram](diagram.png)

The infrastructure provisions:

- A custom **VPC**
- **Multiple Availability Zones**
- **Public subnets**
  - Application Load Balancer
  - NAT Gateways
- **Private subnets**
  - EC2 instances managed by an Auto Scaling Group
- Secure internet access and traffic flow using AWS best practices

All resources are created and managed using **Terraform modules**.

---

## 🧩 Core AWS Services Used

- Amazon VPC
- EC2
- Auto Scaling Group
- Application Load Balancer (ALB)
- NAT Gateway
- Internet Gateway
- S3 (Gateway Endpoint)
- IAM & Security Groups

---

## ⚙️ Automation Scripts

The project includes Bash scripts to simplify infrastructure management:

- `create_infra.sh` – One-command infrastructure deployment

---

## 🛠️ Technologies

- Terraform
- AWS
- Bash

---

## 👤 Dev

**Vaibhav Umbarkar**  
DevOps | AWS | Terraform | Shell Scripting

---
