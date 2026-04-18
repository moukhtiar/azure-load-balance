locals {
  vnet_name   = "vnet-nginx-lab"
  subnet_name = "web-subnet"
  nsg_name    = "web-nsg"

  public_ip_name = "lb-public-ip"
  lb_name        = "public-lb"
  fe_name        = "public-frontend"
  be_pool_name   = "backend-pool"
  probe_name     = "http-probe"
  rule_name      = "http-rule"

  vms = {
    vm1 = {
      name       = "vm-nginx-01"
      private_ip = "10.0.1.10"
      page_title = "Hello from vm-nginx-01"
    }
    vm2 = {
      name       = "vm-nginx-02"
      private_ip = "10.0.1.11"
      page_title = "Hello from vm-nginx-02"
    }
  }
}
