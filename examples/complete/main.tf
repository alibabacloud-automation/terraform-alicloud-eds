provider "alicloud" {
  region = "cn-shanghai"
}

data "alicloud_ecd_bundles" "bundles" {
  bundle_type = "SYSTEM"
}

resource "random_integer" "default" {
  min = 10000  
  max = 99999
}

module "default" {
  source                      = "../.."
  bundle_id                   = data.alicloud_ecd_bundles.bundles.bundles.0.id
  #alicloud_ecd_simple_office_site
  create_office_site          = true
  office_site_name            = "${var.office_site_name}-${random_integer.default.result}"
  cidr_block                  = "172.16.0.0/12"
  desktop_access_type         = var.desktop_access_type
  cen_id                      = ""
  cen_owner_id                = var.cen_owner_id
  enable_admin_access         = false
  enable_cross_desktop_access = var.enable_cross_desktop_access
  mfa_enabled                 = var.mfa_enabled
  sso_enabled                 = var.sso_enabled
  #alicloud_ecd_policy_group
  create_policy_group             = true
  policy_group_name               = var.policy_group_name
  policy_clipboard                = var.policy_clipboard
  policy_local_drive              = var.policy_local_drive
  policy_usb_redirect             = var.policy_usb_redirect
  policy_watermark                = var.policy_watermark
  domain_list                     = var.domain_list
  html_access                     = var.html_access
  html_file_transfer              = var.html_file_transfer
  visual_quality                  = var.visual_quality
  watermark_type                  = var.watermark_type
  watermark_transparency          = var.watermark_transparency
  authorize_access_policy_rules   = var.authorize_access_policy_rules
  authorize_security_policy_rules = var.authorize_security_policy_rules
  #alicloud_ecd_user
  create_user   = true
  end_user_id   = "tf-user-test"
  user_email    = "hello123456.abc@abc.com"
  user_phone    = "15800000011"
  user_password = "tf-user-password"
  user_status   = var.user_status
  #alicloud_ecd_desktop
  create_desktop     = true
  desktop_name       = var.desktop_name
  amount             = var.amount
  auto_pay           = var.auto_pay
  auto_renew         = var.auto_renew
  desktop_type       = var.desktop_type
  host_name          = var.host_name
  payment_type       = var.payment_type
  period             = var.period
  period_unit        = var.period_unit
  root_disk_size_gib = var.root_disk_size_gib
  desktop_status     = var.desktop_status
  stopped_mode       = var.stopped_mode
  user_assign_mode   = var.user_assign_mode
  user_disk_size_gib = var.user_disk_size_gib
  tags               = var.tags
  #alicloud_ecd_network_package
  create_network_package = true
  bandwidth              = var.bandwidth
  #alicloud_ecd_nas_file_system
  create_nas_file_system      = true
  nas_file_system_description = "tf_nas_file_system_description"
  mount_target_domain         = var.mount_target_domain
  reset                       = var.reset
  nas_file_system_name        = "tf_nas_file_system_name"
  create_image                = true
  image_name                  = var.image_name
  image_description           = var.image_description
}
