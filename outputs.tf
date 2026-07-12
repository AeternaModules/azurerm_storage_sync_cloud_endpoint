output "storage_sync_cloud_endpoints_id" {
  description = "Map of id values across all storage_sync_cloud_endpoints, keyed the same as var.storage_sync_cloud_endpoints"
  value       = { for k, v in azurerm_storage_sync_cloud_endpoint.storage_sync_cloud_endpoints : k => v.id }
}
output "storage_sync_cloud_endpoints_file_share_name" {
  description = "Map of file_share_name values across all storage_sync_cloud_endpoints, keyed the same as var.storage_sync_cloud_endpoints"
  value       = { for k, v in azurerm_storage_sync_cloud_endpoint.storage_sync_cloud_endpoints : k => v.file_share_name }
}
output "storage_sync_cloud_endpoints_name" {
  description = "Map of name values across all storage_sync_cloud_endpoints, keyed the same as var.storage_sync_cloud_endpoints"
  value       = { for k, v in azurerm_storage_sync_cloud_endpoint.storage_sync_cloud_endpoints : k => v.name }
}
output "storage_sync_cloud_endpoints_storage_account_id" {
  description = "Map of storage_account_id values across all storage_sync_cloud_endpoints, keyed the same as var.storage_sync_cloud_endpoints"
  value       = { for k, v in azurerm_storage_sync_cloud_endpoint.storage_sync_cloud_endpoints : k => v.storage_account_id }
}
output "storage_sync_cloud_endpoints_storage_account_tenant_id" {
  description = "Map of storage_account_tenant_id values across all storage_sync_cloud_endpoints, keyed the same as var.storage_sync_cloud_endpoints"
  value       = { for k, v in azurerm_storage_sync_cloud_endpoint.storage_sync_cloud_endpoints : k => v.storage_account_tenant_id }
}
output "storage_sync_cloud_endpoints_storage_sync_group_id" {
  description = "Map of storage_sync_group_id values across all storage_sync_cloud_endpoints, keyed the same as var.storage_sync_cloud_endpoints"
  value       = { for k, v in azurerm_storage_sync_cloud_endpoint.storage_sync_cloud_endpoints : k => v.storage_sync_group_id }
}

