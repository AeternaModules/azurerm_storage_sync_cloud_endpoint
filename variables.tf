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
  # --- Unconfirmed validation candidates, derived from azurerm_storage_sync_cloud_endpoint's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.StorageSyncName] !regexp.MustCompile("^[0-9a-zA-Z-_. ]*[0-9a-zA-Z-_]$").MatchString(input)
  # path: storage_sync_group_id
  #   source:    [from syncgroupresource.ValidateSyncGroupID] !ok
  # path: storage_sync_group_id
  #   source:    [from syncgroupresource.ValidateSyncGroupID] err != nil
  # path: file_share_name
  #   source:    [from validate.StorageShareName] !regexp.MustCompile(`^[0-9a-z-]+$`).MatchString(value)
  # path: file_share_name
  #   source:    [from validate.StorageShareName] len(value) < 3 || len(value) > 63
  # path: file_share_name
  #   source:    [from validate.StorageShareName] regexp.MustCompile(`^-`).MatchString(value)
  # path: file_share_name
  #   source:    [from validate.StorageShareName] regexp.MustCompile(`[-]{2,}`).MatchString(value)
  # path: storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] !ok
  # path: storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] err != nil
}

