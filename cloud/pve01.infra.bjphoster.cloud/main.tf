terraform {
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
      version = "2.8.0"
    }
  }
}

provider "proxmox" {
  pm_api_url = "https://pve01.infra.bjphoster.cloud:8006/api2/json"
}
