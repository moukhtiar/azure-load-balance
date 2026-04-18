# 🏗️ Architecture Deep Dive

## 📊 Architecture Diagram

![Architecture Diagram](../images/diagram.png)

---

## 📌 Overview

This project implements a **production-grade high availability web architecture** using Azure Load Balancer with private backend virtual machines.

The design ensures:

* Traffic distribution across multiple instances
* Automatic failover using health probes
* Secure backend infrastructure (no public exposure)

---

## 🔄 Traffic Flow

1. Client sends HTTP request to Load Balancer Public IP
2. Azure Load Balancer evaluates backend health using HTTP probe (port 80)
3. Traffic is routed to a healthy backend VM
4. NGINX serves the response
5. If a VM becomes unhealthy, it is automatically removed from rotation

---

## 🧩 Architecture Components

### 🌐 Azure Load Balancer (Layer 4)

* Public frontend IP
* Distributes traffic across backend pool
* Uses TCP-based load balancing

---

### 🖥️ Backend Virtual Machines

* vm-nginx-01 (10.0.1.10)
* vm-nginx-02 (10.0.1.11)
* Ubuntu Linux
* NGINX installed via Custom Script Extension

---

### ❤️ Health Probe

* Protocol: HTTP
* Port: 80
* Path: `/`
* Ensures only healthy VMs receive traffic

---

### 🔐 Virtual Network (VNet)

* Address space: 10.0.0.0/16
* Subnet: 10.0.1.0/24
* Isolates backend infrastructure

---

### 🛡️ Network Security Group (NSG)

* Allows inbound HTTP (port 80)
* Restricts unnecessary exposure
* Controls access to backend resources

---

## 🧠 Design Decisions

### Why Azure Load Balancer?

* Native Azure service
* Highly available and scalable
* Simple Layer 4 traffic distribution

---

### Why Private Backend VMs?

* Reduces attack surface
* Prevents direct internet access
* Enforces controlled entry via Load Balancer

---

### Why Health Probes?

* Detects unhealthy instances
* Enables automatic failover
* Ensures reliability

---

### Why Terraform (IaC)?

* Repeatable deployments
* Version-controlled infrastructure
* Production-ready automation approach

---

## 🔐 Security Considerations

* Backend VMs have **private IPs only**
* No direct SSH or HTTP access from internet
* All traffic flows through Load Balancer
* NSG restricts inbound traffic to required ports only

---

## 📈 High Availability Strategy

* Multiple backend VMs eliminate single point of failure
* Load Balancer distributes traffic evenly
* Health probe removes unhealthy instances automatically

---

## 🔮 Future Enhancements

* Replace VMs with VM Scale Set (autoscaling)
* Add Azure Application Gateway (Layer 7)
* Enable HTTPS with SSL/TLS
* Integrate Azure Monitor & Log Analytics
* Add Web Application Firewall (WAF)

---

## 📚 Key Takeaways

* Demonstrates real-world Azure load balancing design
* Combines networking, compute, and security principles
* Built using Infrastructure as Code (Terraform)
