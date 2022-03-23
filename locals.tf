locals {
  # Get ID of office site resources
  this_office_site_id = var.create_office_site ? concat(alicloud_ecd_simple_office_site.office_site.*.id, [""])[0] : var.office_site_id
  # Get ID of policy group resources
  this_policy_group_id = var.create_policy_group ? concat(alicloud_ecd_policy_group.policy_group.*.id, [""])[0] : var.policy_group_id
  # Get ID of user resources
  this_user_id = var.create_user ? concat(alicloud_ecd_user.user.*.id, [""])[0] : var.user_id
  # Get ID of desktop resources
  this_desktop_id = var.create_desktop ? concat(alicloud_ecd_desktop.desktop.*.id, [""])[0] : var.desktop_id
}