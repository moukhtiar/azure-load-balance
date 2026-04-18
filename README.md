# 🚀 Azure Load Balancer with NGINX (Terraform)

This project demonstrates a highly available web application deployed on Microsoft Azure using Terraform.

---

## 🏗️ Architecture

* Azure Virtual Network (VNet)
* Subnet (10.0.1.0/24)
* 2x Ubuntu Virtual Machines (Private IP only)
* Azure Load Balancer (Public)
* Backend Pool (VMs)
* Health Probe (HTTP:80)
* Load Balancing Rule (80 → 80)

---

## 📊 Architecture Diagram

![Architecture Diagram](./diagram.png)

---

## ⚙️ Deployment

```bash
terraform init
terraform apply
```

---

## 🧪 Testing

```bash
curl http://<LOAD-BALANCER-PUBLIC-IP>
```

Run multiple times:

```bash
for i in {1..10}; do curl http://<LOAD-BALANCER-PUBLIC-IP>; echo; done
```

Expected output:

* Hello from vm-nginx-01
* Hello from vm-nginx-02

---

## 📸 Result

![Result](./result.png)

---

## 🧠 Key Concepts

* Azure Load Balancer (Layer 4)
* Backend Pool
* Health Probes
* Terraform Infrastructure as Code
* Custom Script Extension

---

## 🔮 Future Improvements

* Use VM Scale Set (VMSS)
* Add Azure Application Gateway (Layer 7)
* Enable HTTPS (SSL)
* Add Monitoring (Azure Monitor + Log Analytics)

---

## 👨‍💻 Author

Muktar Mohamed
Azure Cloud Engineer | Azure Security Engineer
