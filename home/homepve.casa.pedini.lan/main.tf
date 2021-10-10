terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "2.8.0"
    }
  }
}

provider "proxmox" {
  pm_api_url      = "https://homepve.casa.pedini.lan:8006/api2/json"
  pm_tls_insecure = true
}

# resource "proxmox_vm_qemu" "pbx_casa_pedini_lan" {
#   name         = "pbx.casa.pedini.lan"
#   target_node  = "homepve"
#   vmid         = 1002
#   onboot       = true
#   boot         = "c"
#   agent        = 1
#   clone        = "debian-11-amd64-cloudinit"
#   qemu_os      = "l26"
#   memory       = 1024
#   balloon      = 1024
#   sockets      = 1
#   cores        = 2
#   cpu          = "kvm64"
#   numa         = true
#   scsihw       = "virtio-scsi-pci"
#   os_type      = "cloud-init"
#   ciuser       = "root"
#   cipassword   = "r00t"
#   searchdomain = "casa.pedini.lan"
#   nameserver   = "192.168.10.250"
#   ipconfig0    = "ip=192.168.10.151/24,gw=192.168.10.254"
#   sshkeys      = <<EOL
# ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAEAQC2x86/7D1kVAHIz9GIns9sjeyr9ziriWo9ittbyNUBbE8O+FOC4ew3MOl8Z3g47vGu1aQ7+pOGCD8BMpTx1k0RX7tqegqoHqHvjbAzuYkBJAcJTUj/nzNEK5fuG5rND2cnTM8SCY+WOxyJvNi9pOYkKyv2OWq63t0irLI+wHY9J/Yf0EUwlGfDSJCy5CqanInWF1eL8FgUL0+84sue++sczoeHCSMw751xvSWFOnj8lbiANWP/A9t2bKe814Jog/yOspwKOJtXp9sgkhX1TsoyUfyBYyJol4Qwlqr5Jfh0sqGFe9F2HZtPLYvb1l+S6H64Y+Xql58bzWDpfY/noHBqprh16HA+46kHPZRG6d8k0JT4DmViBWWRNyzB0K5MzCHc8eFMnmSixXDcyKqU25Nz97V2J3/WvKx48p6TfcxBJnzSgaTMa03OWJbl8+MjVR+rKYiSbard74GSYB5hH27G5AsQuHAZHyttOFQOYHwOJdOebwlh8D+upXnSgliuKJf8J8V+Er62C8bAA3FPx0MKhz37C9Upeg4wHtwluWJyGAta8Nh5F2ULFWsSjn6s9Fu+M4cgl7tG+KznW1+g0A8MF5Od0llM83hJ9L/QcPN+Js/VzHNBmxpUM5nt6G+nF40zJUSzjtcaXtpi9X0yDamtkKKpY9FLxYLBPXWgu8kkyyqAefZv+vx6xjTJaRIPUleLYyseeDdxwy+FFbibrP3PGA+GxFbqiUe8DqUZn/9WQ4YN4iShr70/CxrN/a11ZiJFe8eLN9rrRJPFJDRODOB59rijD1qC1YustyfYYr+UmUvBV0ZqXSW5FnBGb+QUsfEwHyOIWQSGvIpKF+il/2Ouc4o7GJUEU7rTKIKos68WLPYWBaiFfzVumcyyf5J+ML5MkJAS/0dG4ktJc1CELgTDYP+QFodYsiJDDlFllrmgspcjHuo3vKxs5ftyu3yE9f9TgbVgO2qWDw7NFtamX9Q8UF2lUvmPk9GP69jppig1MtC39QcBuA+9bPr2+/ClZbcszLA9DENLBb4QMZHaWGV/kA98eCWGhbjt9q+wMiLtGiHmWyNMps0FSbX2t/QLJO1MnaxZkDWQ4qBFzhZlc54Doss4W+IPLjyW59mfnu5/xTR0EZ1wpXMSHi3Oznd27Y/koDkBG/N7/YzCigxC1mQfSN275NIk21aCaVBYjkEBbnCgG2H6abT9kEywiGbZrUCyhd/yuUljzfGZ9ElF2YVQAvAGPFPkIRu70aK8t0ed7q8vgGb8VQ5gJVXekkkRnU9IG2hy3lgShVDRXxm+fzAJW29xYb1MTYIbe7TCBMnAEQwXNLjae/5nyX8Sdc3k3BU2JA54tIlinGGHgnC/ObUz
# EOL
#   network {
#     model    = "virtio"
#     bridge   = "vmbr0"
#     firewall = true
#   }
#   disk {
#     type    = "scsi"
#     storage = "local"
#     size    = "20G"
#     format  = "qcow2"
#     backup  = 1
#     discard = "on"
#   }
# }
