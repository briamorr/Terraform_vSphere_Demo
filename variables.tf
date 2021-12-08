variable "vsphere_user" {
  type = string
  description = "the username for vsphere"
  
}
variable "vsphere_password" {
  type = string
  description = "The password for vsphere"
}
variable "vsphere_server" {
  type = string
  description = "the hostname or ip address of your vcenter server"
  
}

variable "vsphere_datacenter" {
  type = string
  description = "the name of the datacenter"
  
}

variable "vsphere_datastore" {
  type = string
  description = "the name of the datastore"
  
}

variable "vsphere_vm_template" {
  type = string
  description = "the name of the vm template"
  
}

variable "vsphere_vm_name" {
  type = string
  description = "the name of the vm"
}

variable "vsphere_folder_name" {
  type=string
}

variable "vsphere_resource_pool" {
  type = string
  description = "the name of the resourcepool for examples: Cluster1/Resources " 
 
}

variable "vsphere_vm_portgroup" {
  type = string
  description = "the name of the portgroup"
  
}

variable "vsphere_vm_cpu" {
  type = number
  description = "the number of vCpus"
  default = 1
}

variable "vsphere_vm_memory" {
  type = number
  description = "the amount of memory in MB"
  default = 2048
}
