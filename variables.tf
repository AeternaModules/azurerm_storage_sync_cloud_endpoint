variable "storage_sync_cloud_endpoints" {
  description = <<EOT
Map of storage_sync_cloud_endpoints, attributes below
Required:
    - file_share_name
    - name
    - storage_account_id
    - storage_sync_group_id
Optional:
    - storage_account_tenant_id
EOT

  type = map(object({
    file_share_name           = string
    name                      = string
    storage_account_id        = string
    storage_sync_group_id     = string
    storage_account_tenant_id = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.storage_sync_cloud_endpoints : (
        v.storage_account_tenant_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.storage_account_tenant_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

