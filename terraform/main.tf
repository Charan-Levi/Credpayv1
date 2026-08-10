locals {
  name_prefix = "credpayv1"
  tags = {
    Environment = "Dev"
    Project     = "CredPay"
    ManagedBy   = "Terraform"
  }
}

module "rg" {
  source              = "./modules/resourcegroup"
  resource_group_name = "${local.name_prefix}-rg"
  location            = var.location
  tags                = local.tags
}

module "vnet" {
  source                 = "./modules/networking"
  resource_group_name    = module.rg.resource_group_name
  location               = module.rg.location
  name_prefix            = local.name_prefix
  address_space          = var.address_space
  aks_subnet_prefix      = var.aks_subnet_prefix
  postgres_subnet_prefix = var.postgres_subnet_prefix
  tags                   = local.tags
}

module "aks" {
  source                     = "./modules/aks"
  name_prefix                = local.name_prefix
  resource_group_name        = module.rg.resource_group_name
  location                   = module.rg.location
  node_count                 = var.node_count
  vm_size                    = var.vm_size
  min_count                  = var.min_count
  max_count                  = var.max_count
  vnet_subnet_id             = module.vnet.subnet_ids["aks"]
  log_analytics_workspace_id = module.monitoring.log_analytics_workspace_id
  tags                       = local.tags
}

module "monitoring" {
  source              = "./modules/monitoring"
  name_prefix         = local.name_prefix
  resource_group_name = module.rg.resource_group_name
  location            = module.rg.location
  retention_in_days   = var.retention_in_days
  tags                = local.tags
}

module "postgres" {
  source                 = "./modules/postgres"
  name_prefix            = local.name_prefix
  resource_group_name    = module.rg.resource_group_name
  location               = module.rg.location
  administrator_username = var.administrator_username
  postgres_version       = var.postgres_version
  tags                   = local.tags
  database_name          = var.database_name
}

module "keyvault" {
  source                       = "./modules/keyvault"
  keyvault_name                = var.keyvault_name
  keyvault_resource_group_name = var.keyvault_resource_group_name
  postgres_fqdn                = module.postgres.postgres_fqdn
  postgres_database_name       = module.postgres.postgres_database_name
  postgres_admin_username      = module.postgres.postgres_admin_username
  postgres_admin_password      = module.postgres.administrator_password
}
