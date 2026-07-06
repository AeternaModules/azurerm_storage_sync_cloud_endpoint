output "storage_sync_cloud_endpoints" {
  description = "All storage_sync_cloud_endpoint resources"
  value       = azurerm_storage_sync_cloud_endpoint.storage_sync_cloud_endpoints
}
output "storage_sync_cloud_endpoints_file_share_name" {
  description = "List of file_share_name values across all storage_sync_cloud_endpoints"
  value       = [for k, v in azurerm_storage_sync_cloud_endpoint.storage_sync_cloud_endpoints : v.file_share_name]
}
output "storage_sync_cloud_endpoints_name" {
  description = "List of name values across all storage_sync_cloud_endpoints"
  value       = [for k, v in azurerm_storage_sync_cloud_endpoint.storage_sync_cloud_endpoints : v.name]
}
output "storage_sync_cloud_endpoints_storage_account_id" {
  description = "List of storage_account_id values across all storage_sync_cloud_endpoints"
  value       = [for k, v in azurerm_storage_sync_cloud_endpoint.storage_sync_cloud_endpoints : v.storage_account_id]
}
output "storage_sync_cloud_endpoints_storage_account_tenant_id" {
  description = "List of storage_account_tenant_id values across all storage_sync_cloud_endpoints"
  value       = [for k, v in azurerm_storage_sync_cloud_endpoint.storage_sync_cloud_endpoints : v.storage_account_tenant_id]
}
output "storage_sync_cloud_endpoints_storage_sync_group_id" {
  description = "List of storage_sync_group_id values across all storage_sync_cloud_endpoints"
  value       = [for k, v in azurerm_storage_sync_cloud_endpoint.storage_sync_cloud_endpoints : v.storage_sync_group_id]
}

