resource "azurerm_log_analytics_workspace" "log" {
  name                = "log-${var.name_prefix}"
  resource_group_name = var.resource_group_name
  location            = var.location
  retention_in_days   = var.retention_in_days
  tags                = var.tags
}

resource "azurerm_log_analytics_solution" "solution" {
  resource_group_name   = var.resource_group_name
  location              = var.location
  workspace_name        = azurerm_log_analytics_workspace.log.name
  workspace_resource_id = azurerm_log_analytics_workspace.log.id
  solution_name         = "Containerinsights"
  tags                  = var.tags
  plan {
    publisher = "Microsoft"
    product   = "OMSGallery/ContainerInsights"
  }
}
