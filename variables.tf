# variable "client_id" {

# }
# variable "client_secret" {

# }

variable "agent_count" {
  default = 3
}

variable "ssh_public_key" {
  default = "~/.ssh/id_rsa.pub"
}

variable "dns_prefix" {
  default = "k8stest"
}

variable cluster_name {
  default = "k8stest"
}

variable resource_group_name {
  default = "aks_rg"
}

variable location {
  default = "East US"
}
