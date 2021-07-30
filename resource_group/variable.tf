variable "resourcegroup" {
  description = "Name of resource group"
  name = "terraform-RG-PL"
}

variable "location" {
  default = "East US"
  description = "Location of the resource group"
}