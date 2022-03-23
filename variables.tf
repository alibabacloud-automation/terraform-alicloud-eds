#alicloud_ecd_simple_office_site
variable "create_office_site" {
  description = "Controls if office site should be created"
  type        = bool
  default     = false
}

variable "office_site_name" {
  description = "The office site name."
  type        = string
  default     = ""
}

variable "cidr_block" {
  description = "Workspace Corresponds to the Security Office Network of IPv4 Segment."
  type        = string
  default     = ""
}

variable "desktop_access_type" {
  description = "Connect to the Cloud Desktop Allows the Use of the Access Mode of. Valid values: Any, Internet, VPC."
  type        = string
  default     = "Internet"
}

variable "cen_id" {
  description = "Cloud Enterprise Network Instance ID."
  type        = string
  default     = null
}

variable "cen_owner_id" {
  description = "The cen owner id."
  type        = number
  default     = null
}

variable "enable_admin_access" {
  description = "Whether to Use Cloud Desktop User Empowerment of Local Administrator Permissions."
  type        = bool
  default     = false
}

variable "enable_cross_desktop_access" {
  description = "Enable Cross-Desktop Access."
  type        = bool
  default     = false
}

variable "mfa_enabled" {
  description = "Whether to Enable Multi-Factor Authentication MFA."
  type        = bool
  default     = false
}

variable "sso_enabled" {
  description = "Whether to Enable Single Sign-on (SSO) for User-Based SSO."
  type        = bool
  default     = false
}

#alicloud_ecd_user
variable "create_user" {
  description = "Controls if ecd user should be created"
  type        = bool
  default     = false
}

variable "end_user_id" {
  description = "The Username. The custom setting is composed of lowercase letters, numbers and underscores, and the length is 3~24 characters."
  type        = string
  default     = ""
}

variable "user_email" {
  description = "The email of the user email."
  type        = string
  default     = ""
}

variable "user_phone" {
  description = "The phone of the mobile phone number."
  type        = string
  default     = ""
}

variable "user_password" {
  description = "The password of the user password."
  type        = string
  default     = ""
}

variable "user_status" {
  description = "The status of the resource. Valid values: Unlocked, Locked."
  type        = string
  default     = "Unlocked"
}

#alicloud_ecd_policy_group
variable "create_policy_group" {
  description = "Controls if ecd policy group should be created"
  type        = bool
  default     = false
}

variable "policy_group_name" {
  description = "The name of policy group."
  type        = string
  default     = ""
}

variable "policy_clipboard" {
  description = "The clipboard policy. Valid values: off, read, readwrite."
  type        = string
  default     = "off"
}

variable "policy_local_drive" {
  description = " Local drive redirect policy. Valid values: readwrite, off, read."
  type        = string
  default     = "off"
}

variable "policy_usb_redirect" {
  description = "The usb redirect policy. Valid values: off, on."
  type        = string
  default     = "off"
}

variable "policy_watermark" {
  description = "The watermark policy. Valid values: off, on."
  type        = string
  default     = "off"
}

variable "authorize_access_policy_rules" {
  description = "The rule of authorize access rule."
  type        = map(string)
  default     = {}
}

variable "authorize_security_policy_rules" {
  description = "The policy rule."
  type        = map(string)
  default     = {}
}

variable "domain_list" {
  description = "The list of domain."
  type        = string
  default     = ""
}

variable "html_access" {
  description = "The access of html5. Valid values: off, on."
  type        = string
  default     = "off"
}

variable "html_file_transfer" {
  description = "The html5 file transfer. Valid values: all, download, off, upload."
  type        = string
  default     = "off"
}

variable "visual_quality" {
  description = "The quality of visual. Valid values: high, lossless, low, medium."
  type        = string
  default     = "low"
}

variable "watermark_transparency" {
  description = "The watermark transparency. Valid values: DARK, LIGHT, MIDDLE."
  type        = string
  default     = "DARK"
}

variable "watermark_type" {
  description = "The type of watemark. Valid values: EndUserId, HostName."
  type        = string
  default     = "HostName"
}

#alicloud_ecd_desktop
variable "create_desktop" {
  description = "Controls if ecd desktop should be created"
  type        = bool
  default     = false
}

variable "desktop_name" {
  description = " The desktop name of the Desktop."
  type        = string
  default     = ""
}

variable "user_id" {
  description = "The desktop end user id of the Desktop.It will be ignored when create_user = true"
  type        = string
  default     = ""
}

variable "bundle_id" {
  description = "The bundle id of the Desktop."
  type        = string
  default     = ""
}

variable "office_site_id" {
  description = "The ID of the Simple Office Site."
  type        = string
  default     = ""
}

variable "policy_group_id" {
  description = "The policy group id of the Desktop.It will be ignored when create_policy_group = true"
  type        = string
  default     = ""
}

variable "amount" {
  description = "The amount of the Desktop."
  type        = number
  default     = 1
}

variable "auto_pay" {
  description = "The auto-pay of the Desktop whether to pay automatically. values: true, false."
  type        = bool
  default     = false
}

variable "auto_renew" {
  description = "The auto-renewal of the Desktop whether to renew automatically. It takes effect only when the parameter ChargeType is set to PrePaid. values: true, false."
  type        = bool
  default     = false
}

variable "desktop_type" {
  description = "The desktop type of the Desktop."
  type        = string
  default     = ""
}

variable "host_name" {
  description = " The hostname of the Desktop."
  type        = string
  default     = ""
}

variable "payment_type" {
  description = "The payment type of the Desktop. Valid values: PayAsYouGo, Subscription. Default to PayAsYouGo."
  type        = string
  default     = "PayAsYouGo"
}

variable "period" {
  description = "The period of the Desktop."
  type        = number
  default     = 1
}

variable "period_unit" {
  description = "The period unit of the Desktop."
  type        = string
  default     = "Month"
}

variable "root_disk_size_gib" {
  description = "The root disk size gib of the Desktop."
  type        = number
  default     = 100
}

variable "desktop_status" {
  description = "The status of the Desktop. Valid values: Deleted, Expired, Pending, Running, Starting, Stopped, Stopping."
  type        = string
  default     = null
}

variable "stopped_mode" {
  description = "The stopped mode of the Desktop."
  type        = string
  default     = "StopCharging"
}

variable "user_assign_mode" {
  description = "The user assign mode of the Desktop. Valid values: ALL, PER_USER. Default to ALL."
  type        = string
  default     = "ALL"
}

variable "user_disk_size_gib" {
  description = "The user disk size gib of the Desktop."
  type        = number
  default     = 100
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
#alicloud_ecd_network_package
variable "create_network_package" {
  description = "Controls if ecd network package should be created"
  type        = bool
  default     = false
}

variable "bandwidth" {
  description = "The bandwidth of package public network bandwidth peak. Valid values: 1~200. Unit:Mbps."
  type        = string
  default     = ""
}

#alicloud_ecd_nas_file_system
variable "create_nas_file_system" {
  description = "Controls if ecd nas file system should be created"
  type        = bool
  default     = false
}

variable "nas_file_system_description" {
  description = "The description of nas file system."
  type        = string
  default     = ""
}

variable "mount_target_domain" {
  description = "The domain of mount target."
  type        = string
  default     = null
}

variable "reset" {
  description = "The mount point is in an inactive state, reset the mount point of the NAS file system. Default to false."
  type        = bool
  default     = false
}

variable "nas_file_system_name" {
  description = "The name of nas file system."
  type        = string
  default     = ""
}
#alicloud_ecd_image
variable "create_image" {
  description = "Controls if ecd image should be created"
  type        = bool
  default     = false
}

variable "image_name" {
  description = "The name of the image."
  type        = string
  default     = ""
}

variable "image_description" {
  description = "The description of the image."
  type        = string
  default     = ""
}

variable "desktop_id" {
  description = "The desktop id of the desktop.It will be ignored when create_desktop = true"
  type        = string
  default     = ""
}