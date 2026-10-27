data "azuread_groups" "groups_lookup" {
  for_each = var.groups_lookup

  display_name_prefix = each.value.display_name_prefix
  display_names       = each.value.display_names
  ignore_missing      = each.value.ignore_missing
  mail_enabled        = each.value.mail_enabled
  object_ids          = each.value.object_ids
  return_all          = each.value.return_all
  security_enabled    = each.value.security_enabled

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

