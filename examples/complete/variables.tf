variable "image_name" {
  description = "The name of the image."
  type        = string
  default     = "tf-test"
}

variable "image_description" {
  description = "The description of the image."
  type        = string
  default     = "image_description"
}

#alicloud_ecd_simple_office_site
variable "office_site_name" {
  description = "The office site name."
  type        = string
  default     = "tf-test"
}

variable "desktop_access_type" {
  description = "Connect to the Cloud Desktop Allows the Use of the Access Mode of. Valid values: Any, Internet, VPC."
  type        = string
  default     = "Internet"
}

variable "cen_owner_id" {
  description = "The cen owner id."
  type        = number
  default     = null
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
variable "user_status" {
  description = "The status of the resource. Valid values: Unlocked, Locked."
  type        = string
  default     = "Locked"
}

#alicloud_ecd_policy_group
variable "policy_group_name" {
  description = "The name of policy group."
  type        = string
  default     = "tf-test"
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
  default = {
    description = "tf_access_policy_rule_description"
    cidr_ip     = "1.2.3.45/24"
  }
}

variable "authorize_security_policy_rules" {
  description = "The policy rule."
  type        = map(string)
  default = {
    type        = "inflow"
    policy      = "accept"
    description = "tf_security_policy_rule_description"
    port_range  = "80/80"
    ip_protocol = "TCP"
    priority    = "1"
    cidr_ip     = "1.2.3.4/24"
  }
}

variable "domain_list" {
  description = "The list of domain."
  type        = string
  default     = "[white:],example.com"
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
variable "desktop_name" {
  description = " The desktop name of the Desktop."
  type        = string
  default     = "tf-test"
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
  default     = null
}

variable "host_name" {
  description = "The hostname of the Desktop."
  type        = string
  default     = "testhost"
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
  default     = 150
}

variable "desktop_status" {
  description = "The status of the Desktop. Valid values: Deleted, Expired, Pending, Running, Starting, Stopped, Stopping."
  type        = string
  default     = "Pending"
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
  default     = 150
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default = {
    Created = "TF"
  }
}
#alicloud_ecd_network_package
variable "bandwidth" {
  description = "The bandwidth of package public network bandwidth peak. Valid values: 1~200. Unit:Mbps."
  type        = string
  default     = "20"
}

#alicloud_ecd_nas_file_system
variable "mount_target_domain" {
  description = "The domain of mount target."
  type        = string
  default     = ""
}

variable "reset" {
  description = "The mount point is in an inactive state, reset the mount point of the NAS file system. Default to false."
  type        = bool
  default     = false
}

