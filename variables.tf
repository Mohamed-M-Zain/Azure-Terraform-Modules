variable "resource_group_name" {
  type        = string
  description = "Name of the resource group to be imported."
  default = "RG1"
  nullable    = false
}
variable "address_space" {
     type        = list(string)
     default     = ["10.0.0.0/16","10.1.0.0/16","10.2.0.0/16"]
     description = "The address space that is used by the virtual network."
}

variable "vnet_name" {

  type    = list(string)
  description = "Enter the names of the VNets you want to create."
  default = ["Vnet1","Vnet2","Vnet3"]
}

