resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-${var.name_prefix}"
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = var.address_space
  tags                = var.tags
}

resource "azurerm_subnet" "aks_subnet" {
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name  = var.resource_group_name
  name                 = "aks-subnet"
  address_prefixes     = var.aks_subnet_prefix
}

resource "azurerm_subnet" "postgres_subnet" {
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name  = var.resource_group_name
  name                 = "postgres-subnet"
  address_prefixes     = var.postgres_subnet_prefix
}


