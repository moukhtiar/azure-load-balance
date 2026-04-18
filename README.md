# Azure Load Balancer
This project demonstrates how to deploy a highly available web application using Azure Load Balancer and NGINX on Ubuntu VMs using Terraform.

## Architecture

- Azure Virtual Network (VNet)
- Subnet (10.0.1.0/24)
- 2x Linux VMs (private IP only)
- Azure Load Balancer (Public)
- Backend Pool (VMs)
- Health Probe (HTTP:80)
- Load Balancing Rule (80 → 80)

-![Architecture Diagram](./diagram.png)

## Deployment

```bash
terraform init
terraform apply



### 🔹 Testing

```md
## Testing

```bash
curl http://<load-balancer-ip>

Expected output:

Hello from vm-nginx-01
Hello from vm-nginx-02


---

### 🔹 Key Concepts

```md
## Key Concepts

- Azure Load Balancer (Layer 4)
- Health Probes
- Backend Pool association
- Terraform Infrastructure as Code
- Custom Script Extension

## Result

![NGINX Output](./result.png)
