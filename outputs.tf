output "storage_sync_cloud_endpoints_id" {
  description = "Map of id values across all storage_sync_cloud_endpoints, keyed the same as var.storage_sync_cloud_endpoints"
  value       = { for k, v in azurerm_storage_sync_cloud_endpoint.storage_sync_cloud_endpoints : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_sync_cloud_endpoints_file_share_name" {
  description = "Map of file_share_name values across all storage_sync_cloud_endpoints, keyed the same as var.storage_sync_cloud_endpoints"
  value       = { for k, v in azurerm_storage_sync_cloud_endpoint.storage_sync_cloud_endpoints : k => v.file_share_name if v.file_share_name != null && length(v.file_share_name) > 0 }
}
output "storage_sync_cloud_endpoints_name" {
  description = "Map of name values across all storage_sync_cloud_endpoints, keyed the same as var.storage_sync_cloud_endpoints"
  value       = { for k, v in azurerm_storage_sync_cloud_endpoint.storage_sync_cloud_endpoints : k => v.name if v.name != null && length(v.name) > 0 }
}
output "storage_sync_cloud_endpoints_storage_account_id" {
  description = "Map of storage_account_id values across all storage_sync_cloud_endpoints, keyed the same as var.storage_sync_cloud_endpoints"
  value       = { for k, v in azurerm_storage_sync_cloud_endpoint.storage_sync_cloud_endpoints : k => v.storage_account_id if v.storage_account_id != null && length(v.storage_account_id) > 0 }
}
output "storage_sync_cloud_endpoints_storage_account_tenant_id" {
  description = "Map of storage_account_tenant_id values across all storage_sync_cloud_endpoints, keyed the same as var.storage_sync_cloud_endpoints"
  value       = { for k, v in azurerm_storage_sync_cloud_endpoint.storage_sync_cloud_endpoints : k => v.storage_account_tenant_id if v.storage_account_tenant_id != null && length(v.storage_account_tenant_id) > 0 }
}
output "storage_sync_cloud_endpoints_storage_sync_group_id" {
  description = "Map of storage_sync_group_id values across all storage_sync_cloud_endpoints, keyed the same as var.storage_sync_cloud_endpoints"
  value       = { for k, v in azurerm_storage_sync_cloud_endpoint.storage_sync_cloud_endpoints : k => v.storage_sync_group_id if v.storage_sync_group_id != null && length(v.storage_sync_group_id) > 0 }
}

