output "groups_lookup_id" {
  description = "Map of id values across all groups_lookup, keyed the same as var.groups_lookup"
  value       = { for k, v in data.azuread_groups.groups_lookup : k => v.id }
}
output "groups_lookup_display_name_prefix" {
  description = "Map of display_name_prefix values across all groups_lookup, keyed the same as var.groups_lookup"
  value       = { for k, v in data.azuread_groups.groups_lookup : k => v.display_name_prefix }
}
output "groups_lookup_display_names" {
  description = "Map of display_names values across all groups_lookup, keyed the same as var.groups_lookup"
  value       = { for k, v in data.azuread_groups.groups_lookup : k => v.display_names }
}
output "groups_lookup_ignore_missing" {
  description = "Map of ignore_missing values across all groups_lookup, keyed the same as var.groups_lookup"
  value       = { for k, v in data.azuread_groups.groups_lookup : k => v.ignore_missing }
}
output "groups_lookup_mail_enabled" {
  description = "Map of mail_enabled values across all groups_lookup, keyed the same as var.groups_lookup"
  value       = { for k, v in data.azuread_groups.groups_lookup : k => v.mail_enabled }
}
output "groups_lookup_object_ids" {
  description = "Map of object_ids values across all groups_lookup, keyed the same as var.groups_lookup"
  value       = { for k, v in data.azuread_groups.groups_lookup : k => v.object_ids }
}
output "groups_lookup_return_all" {
  description = "Map of return_all values across all groups_lookup, keyed the same as var.groups_lookup"
  value       = { for k, v in data.azuread_groups.groups_lookup : k => v.return_all }
}
output "groups_lookup_security_enabled" {
  description = "Map of security_enabled values across all groups_lookup, keyed the same as var.groups_lookup"
  value       = { for k, v in data.azuread_groups.groups_lookup : k => v.security_enabled }
}

