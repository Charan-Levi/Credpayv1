terraform {
  backend "azurerm" {
    resource_group_name  = "CredBackendRG"
    storage_account_name = "credstoreacc"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
