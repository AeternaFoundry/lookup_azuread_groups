variable "groups_lookup" {
  description = <<EOT
Map of groups_lookup, attributes below
Optional:
    - display_name_prefix
    - display_names
    - ignore_missing
    - mail_enabled
    - object_ids
    - return_all
    - security_enabled
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    display_name_prefix = optional(string)
    display_names       = optional(list(string))
    ignore_missing      = optional(bool)
    mail_enabled        = optional(bool)
    object_ids          = optional(list(string))
    return_all          = optional(bool)
    security_enabled    = optional(bool)
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.groups_lookup : (
        v.object_ids == null || (alltrue([for x in v.object_ids : can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", x))]))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.groups_lookup : (
        v.display_names == null || (alltrue([for x in v.display_names : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.groups_lookup : (
        v.display_name_prefix == null || (length(v.display_name_prefix) > 0)
      )
    ])
    error_message = "must not be empty"
  }
}

