variable "vnetcidr" {
  type = list(string)
  default = [ "192.168.0.0/16","172.17.0.0/20","10.10.0.0/22" ]
  description = "create 3 vnets using meta-arguments"
}
variable "subnet-vnet0" {
  type = list(string)
  default = [ "192.168.0.0/24","192.168.1.0/24" ]
  description = "create 2 subnets in vnet0"
}

variable "subnet-vnet1" {
  type = list(string)
  default = [ "172.17.0.0/24","172.17.1.0/24" ]
  description = "create 2 subnets in vnet1"
}
variable "username" {
  type = list(string)
  default = [ "azure","devops" ]
}