resource "vault_keymgmt_gcp_kms" "keymgmt_gcp_kms" {
  for_each = var.keymgmt_gcp_kms

  key_collection         = each.value.key_collection
  mount                  = each.value.mount
  name                   = each.value.name
  credentials_wo         = each.value.credentials_wo
  credentials_wo_version = each.value.credentials_wo_version
  namespace              = each.value.namespace
}

