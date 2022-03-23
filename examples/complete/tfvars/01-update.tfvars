image_name        = "tf-test"
image_description = "update_image_description"
#alicloud_ecd_simple_office_site
office_site_name            = "tf-test"
desktop_access_type         = "Internet"
cen_owner_id                = null
enable_cross_desktop_access = true
mfa_enabled                 = true
sso_enabled                 = true
#alicloud_ecd_user
user_status = "Unlocked"
#alicloud_ecd_policy_group
policy_group_name      = "tf-test"
policy_clipboard       = "read"
policy_local_drive     = "read"
policy_usb_redirect    = "on"
policy_watermark       = "on"
domain_list            = "[black:],example.com"
html_access            = "on"
html_file_transfer     = "all"
visual_quality         = "medium"
watermark_type         = "EndUserId"
watermark_transparency = "LIGHT"
authorize_access_policy_rules = {
  description = "update_tf_access_policy_rule_description"
  cidr_ip     = "1.2.3.42/24"
}
authorize_security_policy_rules = {
  type        = "outflow"
  policy      = "drop"
  description = "update_tf_security_policy_rule_description"
  port_range  = "8080/8080"
  ip_protocol = "ALL"
  priority    = "2"
  cidr_ip     = "1.2.3.34/24"
}
#alicloud_ecd_desktop
desktop_name       = "tf-test"
amount             = 1
auto_pay           = true
auto_renew         = true
desktop_type       = ""
host_name          = "update-testhost-name"
payment_type       = "PayAsYouGo"
period             = 1
period_unit        = "Year"
user_disk_size_gib = 100
root_disk_size_gib = 80
desktop_status     = "Stopped"
stopped_mode       = "StopCharging"
user_assign_mode   = "PER_USER"
tags = {
  Created = "TF"
}
#alicloud_ecd_network_package
bandwidth = 30
#alicloud_ecd_nas_file_system
mount_target_domain = ""
reset               = false
