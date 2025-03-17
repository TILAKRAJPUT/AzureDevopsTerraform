resource "azurerm_resource_group" "myrg" {
  name     = var.appname
  location = var.location
}
dvsadmin@workstation1:~$ cat variables.tf
variable "appname" {
        default = "application1"
        type = string
}
variable "location" {
        default = "east us"
        type = string
}
dvsadmin@workstation1:~$ cat main.tf
resource "azurerm_resource_group" "myrg" {
  name     = var.appname
  location = var.location
}
