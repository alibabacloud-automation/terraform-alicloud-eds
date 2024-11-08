output "simple_office_site_id" {
  description = "The resource ID in terraform of Simple Office Site."
  value       = local.this_office_site_id
}

output "policy_group_id" {
  description = "The resource ID in terraform of Policy Group."
  value       = local.this_policy_group_id
}

output "user_id" {
  description = "The resource ID in terraform of User."
  value       = local.this_user_id
}

output "desktop_id" {
  description = "The resource ID in terraform of Desktop."
  value       = local.this_desktop_id
}

output "desktop_bundle_id" {
  description = "The bundle id list of the Desktop."
  value       = concat(alicloud_ecd_desktop.desktop[*].bundle_id, [""])[0]
}

output "image_id" {
  description = "The resource ID in terraform of Image."
  value       = concat(alicloud_ecd_image.image[*].id, [""])[0]
}

output "network_package_id" {
  description = "The resource ID in terraform of Network Package."
  value       = concat(alicloud_ecd_network_package.network_package[*].id, [""])[0]
}

output "nas_file_system_id" {
  description = "The resource ID in terraform of Nas File System."
  value       = concat(alicloud_ecd_nas_file_system.nas_file_system[*].id, [""])[0]
}