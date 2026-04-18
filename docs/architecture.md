# Architecture Deep Dive

## Overview

This architecture demonstrates a highly available web application using Azure Load Balancer with two backend Linux virtual machines running NGINX.

---

## Components

### 1. Azure Load Balancer

* Public frontend IP
* Distributes incoming traffic across backend VMs
* Operates at Layer 4 (TCP)

### 2. Backend Pool

* Contains two Ubuntu VMs:

  * vm-nginx-01 (10.0.1.10)
  * vm-nginx-02 (10.0.1.11)

### 3. Health Probe

* Protocol: HTTP
* Port: 80
* Path: /
* Ensures traffic is only sent to healthy instances

### 4. Virtual Network

* Address space: 10.0.0.0/16
* Subnet: 10.0.1.0/24

### 5. Network Security Group (NSG)

* Allows inbound traffic on port 80 (HTTP)

---

## Traffic Flow

1. Client sends request to Load Balancer public IP
2. Load Balancer checks backend health via probe
3. Request is forwarded to a healthy VM
4. NGINX serves response

---

## High Availability Design

* Multiple backend VMs eliminate single point of failure
* Load balancer distributes traffic evenly
* Health probe removes unhealthy instances automatically

---

## Security Considerations

* VMs have private IPs only (no direct public access)
* Access controlled via Load Balancer
* NSG restricts inbound traffic

---

## Deployment Method

* Infrastructure deployed using Terraform
* NGINX installed via Custom Script Extension

---

## Future Enhancements

* Implement HTTPS using Azure Application Gateway
* Add autoscaling with VM Scale Sets
* Integrate monitoring (Azure Monitor, Log Analytics)
