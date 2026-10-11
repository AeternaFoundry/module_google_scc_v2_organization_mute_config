variable "scc_v2_organization_mute_configs" {
  description = <<EOT
Map of scc_v2_organization_mute_configs, attributes below
Required:
    - filter
    - mute_config_id
    - organization
    - type
Optional:
    - deletion_policy
    - description
    - location
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    filter          = string
    mute_config_id  = string
    organization    = string
    type            = string
    deletion_policy = optional(string)
    description     = optional(string)
    location        = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

