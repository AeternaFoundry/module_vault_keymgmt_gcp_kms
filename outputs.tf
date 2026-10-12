output "keymgmt_gcp_kms_credentials_wo_version" {
  description = "Map of credentials_wo_version values across all keymgmt_gcp_kms, keyed the same as var.keymgmt_gcp_kms except keys with no credentials_wo_version are omitted"
  value       = { for k, v in vault_keymgmt_gcp_kms.keymgmt_gcp_kms : k => v.credentials_wo_version if v.credentials_wo_version != null }
}
output "keymgmt_gcp_kms_key_collection" {
  description = "Map of key_collection values across all keymgmt_gcp_kms, keyed the same as var.keymgmt_gcp_kms except keys with no key_collection are omitted"
  value       = { for k, v in vault_keymgmt_gcp_kms.keymgmt_gcp_kms : k => v.key_collection if v.key_collection != null && length(v.key_collection) > 0 }
}
output "keymgmt_gcp_kms_mount" {
  description = "Map of mount values across all keymgmt_gcp_kms, keyed the same as var.keymgmt_gcp_kms except keys with no mount are omitted"
  value       = { for k, v in vault_keymgmt_gcp_kms.keymgmt_gcp_kms : k => v.mount if v.mount != null && length(v.mount) > 0 }
}
output "keymgmt_gcp_kms_name" {
  description = "Map of name values across all keymgmt_gcp_kms, keyed the same as var.keymgmt_gcp_kms except keys with no name are omitted"
  value       = { for k, v in vault_keymgmt_gcp_kms.keymgmt_gcp_kms : k => v.name if v.name != null && length(v.name) > 0 }
}
output "keymgmt_gcp_kms_namespace" {
  description = "Map of namespace values across all keymgmt_gcp_kms, keyed the same as var.keymgmt_gcp_kms except keys with no namespace are omitted"
  value       = { for k, v in vault_keymgmt_gcp_kms.keymgmt_gcp_kms : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}

