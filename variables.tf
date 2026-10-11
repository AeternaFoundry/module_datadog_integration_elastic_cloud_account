variable "integration_elastic_cloud_accounts" {
  description = <<EOT
Map of integration_elastic_cloud_accounts, attributes below
Required:
    - authentication
    - name
    - settings
Optional:
    - dataflows
EOT

  type = map(object({
    authentication = object({
      elastic_cloud_integration_account_basic_auth = optional(object({
        auth_type           = optional(string)
        password_wo         = string
        password_wo_version = string
        username            = string
      }))
    })
    name = string
    settings = object({
      tags = optional(string)
      url  = string
    })
    dataflows = optional(object({
      elastic_cloud_detailed_index_stats = optional(object({
        enabled = optional(bool)
      }))
      elastic_cloud_index_stats = optional(object({
        enabled = optional(bool)
      }))
      elastic_cloud_pending_task_stats = optional(object({
        enabled = optional(bool)
      }))
      elastic_cloud_primary_shard_graceful_timeout = optional(object({
        enabled = optional(bool)
      }))
      elastic_cloud_primary_shard_stats = optional(object({
        enabled = optional(bool)
      }))
      elastic_cloud_shard_allocation_stats = optional(object({
        enabled = optional(bool)
      }))
      elastic_cloud_slm_stats = optional(object({
        enabled = optional(bool)
      }))
    }))
  }))
}

