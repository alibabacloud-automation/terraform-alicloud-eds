Terraform Module for creating Elastic Desktop Service on Alibaba Cloud.

terraform-alicloud-eds
=====================================================================

[English](README.md) | 简体中文

本 Module 用于在阿里云自动化管理和配置无影云桌面，包括工作区、云桌面、网络、镜像、策略等。

本 Module 支持创建以下资源:

* [alicloud_ecd_desktop](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/ecd_desktop)
* [alicloud_ecd_image](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/ecd_image)
* [alicloud_ecd_nas_file_system](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/ecd_nas_file_system)
* [alicloud_ecd_network_package](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/ecd_network_package)
* [alicloud_ecd_policy_group](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/ecd_policy_group)
* [alicloud_ecd_simple_office_site](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/ecd_simple_office_site)
* [alicloud_ecd_user](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/ecd_user)

## 用法

```hcl
module "default" {
  source                      = "terraform-alicloud-modules/eds/alicloud"
  bundle_id                   = "bundle_1234567xxx"
  #alicloud_ecd_simple_office_site
  create_office_site          = true
  office_site_name            = "tf-name"
  cidr_block                  = "172.16.0.0/12"
  desktop_access_type         = "Internet"
  #alicloud_ecd_policy_group
  create_policy_group         = true
  policy_group_name           = "tf-name"
  #alicloud_ecd_user
  create_user                 = true
  end_user_id                 = "tf-user-test"
  user_email                  = "hello123456.abc@abc.com"
  user_phone                  = "15800000011"
  #alicloud_ecd_desktop
  create_desktop              = true
  desktop_name                = "tf-name"
  #alicloud_ecd_network_package
  create_network_package      = true
  bandwidth                   = "10"
  #alicloud_ecd_nas_file_system
  create_nas_file_system      = true
  nas_file_system_name        = "tf_nas_file_system_name"
  create_image                = true
  image_name                  = "tf-name"
}
```

## 示例

* [完整示例](https://github.com/terraform-alicloud-modules/terraform-alicloud-eds/tree/main/examples/complete)

## 注意事项

* 本 Module 使用的 AccessKey 和 SecretKey 可以直接从 `profile` 和 `shared_credentials_file`
  中获取。如果未设置，可通过下载安装 [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) 后进行配置.


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.13 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [alicloud_ecd_desktop.desktop](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/ecd_desktop) | resource |
| [alicloud_ecd_image.image](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/ecd_image) | resource |
| [alicloud_ecd_nas_file_system.nas_file_system](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/ecd_nas_file_system) | resource |
| [alicloud_ecd_network_package.network_package](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/ecd_network_package) | resource |
| [alicloud_ecd_policy_group.policy_group](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/ecd_policy_group) | resource |
| [alicloud_ecd_simple_office_site.office_site](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/ecd_simple_office_site) | resource |
| [alicloud_ecd_user.user](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/ecd_user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_amount"></a> [amount](#input\_amount) | The amount of the Desktop. | `number` | `1` | no |
| <a name="input_authorize_access_policy_rules"></a> [authorize\_access\_policy\_rules](#input\_authorize\_access\_policy\_rules) | The rule of authorize access rule. | `map(string)` | `{}` | no |
| <a name="input_authorize_security_policy_rules"></a> [authorize\_security\_policy\_rules](#input\_authorize\_security\_policy\_rules) | The policy rule. | `map(string)` | `{}` | no |
| <a name="input_auto_pay"></a> [auto\_pay](#input\_auto\_pay) | The auto-pay of the Desktop whether to pay automatically. values: true, false. | `bool` | `false` | no |
| <a name="input_auto_renew"></a> [auto\_renew](#input\_auto\_renew) | The auto-renewal of the Desktop whether to renew automatically. It takes effect only when the parameter ChargeType is set to PrePaid. values: true, false. | `bool` | `false` | no |
| <a name="input_bandwidth"></a> [bandwidth](#input\_bandwidth) | The bandwidth of package public network bandwidth peak. Valid values: 1~200. Unit:Mbps. | `string` | `null` | no |
| <a name="input_bundle_id"></a> [bundle\_id](#input\_bundle\_id) | The bundle id of the Desktop. | `string` | `null` | no |
| <a name="input_cen_id"></a> [cen\_id](#input\_cen\_id) | Cloud Enterprise Network Instance ID. | `string` | `null` | no |
| <a name="input_cen_owner_id"></a> [cen\_owner\_id](#input\_cen\_owner\_id) | The cen owner id. | `number` | `null` | no |
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | Workspace Corresponds to the Security Office Network of IPv4 Segment. | `string` | `null` | no |
| <a name="input_create_desktop"></a> [create\_desktop](#input\_create\_desktop) | Controls if ecd desktop should be created | `bool` | `false` | no |
| <a name="input_create_image"></a> [create\_image](#input\_create\_image) | Controls if ecd image should be created | `bool` | `false` | no |
| <a name="input_create_nas_file_system"></a> [create\_nas\_file\_system](#input\_create\_nas\_file\_system) | Controls if ecd nas file system should be created | `bool` | `false` | no |
| <a name="input_create_network_package"></a> [create\_network\_package](#input\_create\_network\_package) | Controls if ecd network package should be created | `bool` | `false` | no |
| <a name="input_create_office_site"></a> [create\_office\_site](#input\_create\_office\_site) | Controls if office site should be created | `bool` | `false` | no |
| <a name="input_create_policy_group"></a> [create\_policy\_group](#input\_create\_policy\_group) | Controls if ecd policy group should be created | `bool` | `false` | no |
| <a name="input_create_user"></a> [create\_user](#input\_create\_user) | Controls if ecd user should be created | `bool` | `false` | no |
| <a name="input_desktop_access_type"></a> [desktop\_access\_type](#input\_desktop\_access\_type) | Connect to the Cloud Desktop Allows the Use of the Access Mode of. Valid values: Any, Internet, VPC. | `string` | `"Internet"` | no |
| <a name="input_desktop_id"></a> [desktop\_id](#input\_desktop\_id) | The desktop id of the desktop.It will be ignored when create\_desktop = true | `string` | `null` | no |
| <a name="input_desktop_name"></a> [desktop\_name](#input\_desktop\_name) | The desktop name of the Desktop. | `string` | `null` | no |
| <a name="input_desktop_status"></a> [desktop\_status](#input\_desktop\_status) | The status of the Desktop. Valid values: Deleted, Expired, Pending, Running, Starting, Stopped, Stopping. | `string` | `null` | no |
| <a name="input_desktop_type"></a> [desktop\_type](#input\_desktop\_type) | The desktop type of the Desktop. | `string` | `null` | no |
| <a name="input_domain_list"></a> [domain\_list](#input\_domain\_list) | The list of domain. | `string` | `null` | no |
| <a name="input_enable_admin_access"></a> [enable\_admin\_access](#input\_enable\_admin\_access) | Whether to Use Cloud Desktop User Empowerment of Local Administrator Permissions. | `bool` | `false` | no |
| <a name="input_enable_cross_desktop_access"></a> [enable\_cross\_desktop\_access](#input\_enable\_cross\_desktop\_access) | Enable Cross-Desktop Access. | `bool` | `false` | no |
| <a name="input_end_user_id"></a> [end\_user\_id](#input\_end\_user\_id) | The Username. The custom setting is composed of lowercase letters, numbers and underscores, and the length is 3~24 characters. | `string` | `null` | no |
| <a name="input_host_name"></a> [host\_name](#input\_host\_name) | The hostname of the Desktop. | `string` | `null` | no |
| <a name="input_html_access"></a> [html\_access](#input\_html\_access) | The access of html5. Valid values: off, on. | `string` | `"off"` | no |
| <a name="input_html_file_transfer"></a> [html\_file\_transfer](#input\_html\_file\_transfer) | The html5 file transfer. Valid values: all, download, off, upload. | `string` | `"off"` | no |
| <a name="input_image_description"></a> [image\_description](#input\_image\_description) | The description of the image. | `string` | `null` | no |
| <a name="input_image_name"></a> [image\_name](#input\_image\_name) | The name of the image. | `string` | `null` | no |
| <a name="input_mfa_enabled"></a> [mfa\_enabled](#input\_mfa\_enabled) | Whether to Enable Multi-Factor Authentication MFA. | `bool` | `false` | no |
| <a name="input_mount_target_domain"></a> [mount\_target\_domain](#input\_mount\_target\_domain) | The domain of mount target. | `string` | `null` | no |
| <a name="input_nas_file_system_description"></a> [nas\_file\_system\_description](#input\_nas\_file\_system\_description) | The description of nas file system. | `string` | `null` | no |
| <a name="input_nas_file_system_name"></a> [nas\_file\_system\_name](#input\_nas\_file\_system\_name) | The name of nas file system. | `string` | `null` | no |
| <a name="input_office_site_id"></a> [office\_site\_id](#input\_office\_site\_id) | The ID of the Simple Office Site. | `string` | `null` | no |
| <a name="input_office_site_name"></a> [office\_site\_name](#input\_office\_site\_name) | The office site name. | `string` | `null` | no |
| <a name="input_payment_type"></a> [payment\_type](#input\_payment\_type) | The payment type of the Desktop. Valid values: PayAsYouGo, Subscription. Default to PayAsYouGo. | `string` | `"PayAsYouGo"` | no |
| <a name="input_period"></a> [period](#input\_period) | The period of the Desktop. | `number` | `1` | no |
| <a name="input_period_unit"></a> [period\_unit](#input\_period\_unit) | The period unit of the Desktop. | `string` | `"Month"` | no |
| <a name="input_policy_clipboard"></a> [policy\_clipboard](#input\_policy\_clipboard) | The clipboard policy. Valid values: off, read, readwrite. | `string` | `"off"` | no |
| <a name="input_policy_group_id"></a> [policy\_group\_id](#input\_policy\_group\_id) | The policy group id of the Desktop.It will be ignored when create\_policy\_group = true | `string` | `null` | no |
| <a name="input_policy_group_name"></a> [policy\_group\_name](#input\_policy\_group\_name) | The name of policy group. | `string` | `null` | no |
| <a name="input_policy_local_drive"></a> [policy\_local\_drive](#input\_policy\_local\_drive) | Local drive redirect policy. Valid values: readwrite, off, read. | `string` | `"off"` | no |
| <a name="input_policy_usb_redirect"></a> [policy\_usb\_redirect](#input\_policy\_usb\_redirect) | The usb redirect policy. Valid values: off, on. | `string` | `"off"` | no |
| <a name="input_policy_watermark"></a> [policy\_watermark](#input\_policy\_watermark) | The watermark policy. Valid values: off, on. | `string` | `"off"` | no |
| <a name="input_reset"></a> [reset](#input\_reset) | The mount point is in an inactive state, reset the mount point of the NAS file system. Default to false. | `bool` | `false` | no |
| <a name="input_root_disk_size_gib"></a> [root\_disk\_size\_gib](#input\_root\_disk\_size\_gib) | The root disk size gib of the Desktop. | `number` | `100` | no |
| <a name="input_sso_enabled"></a> [sso\_enabled](#input\_sso\_enabled) | Whether to Enable Single Sign-on (SSO) for User-Based SSO. | `bool` | `false` | no |
| <a name="input_stopped_mode"></a> [stopped\_mode](#input\_stopped\_mode) | The stopped mode of the Desktop. | `string` | `"StopCharging"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |
| <a name="input_user_assign_mode"></a> [user\_assign\_mode](#input\_user\_assign\_mode) | The user assign mode of the Desktop. Valid values: ALL, PER\_USER. Default to ALL. | `string` | `"ALL"` | no |
| <a name="input_user_disk_size_gib"></a> [user\_disk\_size\_gib](#input\_user\_disk\_size\_gib) | The user disk size gib of the Desktop. | `number` | `100` | no |
| <a name="input_user_email"></a> [user\_email](#input\_user\_email) | The email of the user email. | `string` | `null` | no |
| <a name="input_user_id"></a> [user\_id](#input\_user\_id) | The desktop end user id of the Desktop.It will be ignored when create\_user = true | `string` | `null` | no |
| <a name="input_user_password"></a> [user\_password](#input\_user\_password) | The password of the user password. | `string` | `null` | no |
| <a name="input_user_phone"></a> [user\_phone](#input\_user\_phone) | The phone of the mobile phone number. | `string` | `null` | no |
| <a name="input_user_status"></a> [user\_status](#input\_user\_status) | The status of the resource. Valid values: Unlocked, Locked. | `string` | `"Unlocked"` | no |
| <a name="input_visual_quality"></a> [visual\_quality](#input\_visual\_quality) | The quality of visual. Valid values: high, lossless, low, medium. | `string` | `"low"` | no |
| <a name="input_watermark_transparency"></a> [watermark\_transparency](#input\_watermark\_transparency) | The watermark transparency. Valid values: DARK, LIGHT, MIDDLE. | `string` | `null` | no |
| <a name="input_watermark_type"></a> [watermark\_type](#input\_watermark\_type) | The type of watemark. Valid values: EndUserId, HostName. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_desktop_bundle_id"></a> [desktop\_bundle\_id](#output\_desktop\_bundle\_id) | The bundle id list of the Desktop. |
| <a name="output_desktop_id"></a> [desktop\_id](#output\_desktop\_id) | The resource ID in terraform of Desktop. |
| <a name="output_image_id"></a> [image\_id](#output\_image\_id) | The resource ID in terraform of Image. |
| <a name="output_nas_file_system_id"></a> [nas\_file\_system\_id](#output\_nas\_file\_system\_id) | The resource ID in terraform of Nas File System. |
| <a name="output_network_package_id"></a> [network\_package\_id](#output\_network\_package\_id) | The resource ID in terraform of Network Package. |
| <a name="output_policy_group_id"></a> [policy\_group\_id](#output\_policy\_group\_id) | The resource ID in terraform of Policy Group. |
| <a name="output_simple_office_site_id"></a> [simple\_office\_site\_id](#output\_simple\_office\_site\_id) | The resource ID in terraform of Simple Office Site. |
| <a name="output_user_id"></a> [user\_id](#output\_user\_id) | The resource ID in terraform of User. |
<!-- END_TF_DOCS -->

## 提交问题

如果在使用该 Terraform Module
的过程中有任何问题，可以直接创建一个 [Provider Issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new)，我们将根据问题描述提供解决方案。

**注意:** 不建议在该 Module 仓库中直接提交 Issue。

## 作者

Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com).

## 许可

MIT Licensed. See LICENSE for full details.

## 参考

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)
