output "resource_group_name" {
  value = module.rg.resource_group_name
}

output "vnet_id" {
  value = module.vnet.vnet_id
}

output "aks_subnet_id" {
  value = module.vnet.subnet_ids["aks"]
}

output "aks_clsuter_name" {
  value = module.aks.kubernetes_cluster_name
}

output "aks_resource_group" {
  value = module.aks.node_resource_group
}
output "aks_kubelet_identity_object_id" {
  value = module.aks.kubelet_identity_object_id
}
output "aks_oidc_issuer_url" {
  value = module.aks.oidc_issuer_url
}
output "get_credentials_command" {
  value = "az aks get-credentials --resourcegroup-name ${module.rg.resource_group_name} --name ${module.aks.kubernetes_cluster_name}"
}
output "postgres_server_name" {
  value = module.postgres.postgres_server_name
}
output "postgres_fqdn" {
  value = module.postgres.postgres_fqdn
}
output "postgres_database_name" {
  value = module.postgres.postgres_database_name
}
output "postgres_admin_username" {
  value = module.postgres.postgres_admin_username
}
output "postgres_admin_password" {
  value     = module.postgres.administrator_password
  sensitive = true
}
output "log_analytics_workspace_id" {
  value = module.monitoring.log_analytics_workspace_id
}
output "keyvault_name" {
  value = module.keyvault.keyvault_name
}
