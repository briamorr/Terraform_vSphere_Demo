terraform {
  required_providers {
    vsphere = {
      source = "hashicorp/vsphere"
    }
  }
}

provider "vsphere" {
  user           = var.vsphere_user
  password       = var.vsphere_password
  vsphere_server = var.vsphere_server
  allow_unverified_ssl = true
}

data "vsphere_datacenter" "dc" {
  name = "abcd"
}
