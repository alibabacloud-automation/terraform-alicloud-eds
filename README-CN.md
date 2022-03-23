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

* [Clickhouse 完整示例](https://github.com/terraform-alicloud-modules/terraform-alicloud-eds/tree/main/examples/complete)

## 注意事项

* 本 Module 使用的 AccessKey 和 SecretKey 可以直接从 `profile` 和 `shared_credentials_file`
  中获取。如果未设置，可通过下载安装 [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) 后进行配置.

## 要求

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > = 0.13.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | > = 1.146.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | > = 1.146.0 |

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
