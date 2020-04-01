

module "network" {
  source  = "app.terraform.io/noliver-training/network/azurerm"
  version = "3.0.1"
  name                = "${var.prefix}-vnet"
  location            = azurerm_resource_group.myresourcegroup.location
  address_space       = [var.address_space]
  resource_group_name = azurerm_resource_group.myresourcegroup.name
}

