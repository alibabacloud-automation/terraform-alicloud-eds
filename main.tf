
resource "alicloud_ecd_simple_office_site" "office_site" {
  count                       = var.create_office_site ? 1 : 0
  office_site_name            = var.office_site_name
  cidr_block                  = var.cidr_block
  desktop_access_type         = var.desktop_access_type
  cen_id                      = var.cen_id
  cen_owner_id                = var.cen_owner_id
  enable_admin_access         = var.enable_admin_access
  enable_cross_desktop_access = var.enable_cross_desktop_access
  mfa_enabled                 = var.mfa_enabled
  sso_enabled                 = var.sso_enabled
}

resource "alicloud_ecd_policy_group" "policy_group" {
  count                  = var.create_policy_group ? 1 : 0
  policy_group_name      = var.policy_group_name
  clipboard              = var.policy_clipboard
  local_drive            = var.policy_local_drive
  usb_redirect           = var.policy_usb_redirect
  watermark              = var.policy_watermark
  domain_list            = var.domain_list
  html_access            = var.html_access
  html_file_transfer     = var.html_file_transfer
  visual_quality         = var.visual_quality
  watermark_type         = var.watermark_type
  watermark_transparency = var.watermark_transparency
  authorize_access_policy_rules {
    description = lookup(var.authorize_access_policy_rules, "description", null)
    cidr_ip     = lookup(var.authorize_access_policy_rules, "cidr_ip", null)
  }
  authorize_security_policy_rules {
    type        = lookup(var.authorize_security_policy_rules, "type", null)
    policy      = lookup(var.authorize_security_policy_rules, "policy", null)
    description = lookup(var.authorize_security_policy_rules, "description", null)
    port_range  = lookup(var.authorize_security_policy_rules, "port_range", null)
    ip_protocol = lookup(var.authorize_security_policy_rules, "ip_protocol", null)
    priority    = lookup(var.authorize_security_policy_rules, "priority", null)
    cidr_ip     = lookup(var.authorize_security_policy_rules, "cidr_ip", null)
  }
}

resource "alicloud_ecd_user" "user" {
  count       = var.create_user ? 1 : 0
  end_user_id = var.end_user_id
  email       = var.user_email
  phone       = var.user_phone
  password    = var.user_password
  status      = var.user_status
}

resource "alicloud_ecd_desktop" "desktop" {
  count              = var.create_desktop ? 1 : 0
  office_site_id     = local.this_office_site_id
  policy_group_id    = local.this_policy_group_id
  bundle_id          = var.bundle_id
  desktop_name       = var.desktop_name
  end_user_ids       = [local.this_user_id]
  amount             = var.amount
  auto_pay           = var.auto_pay
  auto_renew         = var.auto_renew
  desktop_type       = var.desktop_type
  host_name          = var.host_name
  payment_type       = var.payment_type
  period             = var.period
  period_unit        = var.period_unit
  root_disk_size_gib = var.root_disk_size_gib
  status             = var.desktop_status
  stopped_mode       = var.stopped_mode
  user_assign_mode   = var.user_assign_mode
  user_disk_size_gib = var.user_disk_size_gib
  tags               = var.tags
  timeouts {
    create = "20m"
  }
}

resource "alicloud_ecd_image" "image" {
  count       = var.create_image ? 1 : 0
  desktop_id  = local.this_desktop_id
  image_name  = var.image_name
  description = var.image_description
}

resource "alicloud_ecd_network_package" "network_package" {
  count          = var.create_network_package ? 1 : 0
  office_site_id = local.this_office_site_id
  bandwidth      = var.bandwidth
}

resource "alicloud_ecd_nas_file_system" "nas_file_system" {
  count                = var.create_nas_file_system ? 1 : 0
  office_site_id       = local.this_office_site_id
  nas_file_system_name = var.nas_file_system_name
  description          = var.nas_file_system_description
  mount_target_domain  = var.mount_target_domain
  reset                = var.reset
}
