variable "vnetname" {
  default = "terraform-network"
  type = string
}

variable "vnetcidr" {
  default = ["192.168.0.0/16"]
  type = list(string)
}
variable "subnetAname" {
  default = "Subnet-1"
  type = string
}

variable "subnetBname" {
  default = "Subnet-2"
  type = string
}
variable "subnetCname" {
  default = "Subnet-3"
  type = string
}
variable "subnetDname" {
  default = "Subnet-4"
  type = string
}
variable "subnetAcidr" {
  default = ["192.168.0.0/24"]
  type = list(string)
}
variable "subnetBcidr" {
  default = ["192.168.1.0/24"]
  type = list(string)
}
variable "subnetCcidr" {
  default = ["192.168.2.0/24"]
  type = list(string)
}
variable "subnetDcidr" {
  default = ["192.168.3.0/24"]
  type = list(string)
}
variable "nicname" {
  default = "nic-vm"
  type = string
}

variable "pwd" {
  
}

