variable "keymgmt_gcp_kms" {
  description = <<EOT
Map of keymgmt_gcp_kms, attributes below
Required:
    - key_collection
    - mount
    - name
Optional:
    - credentials_wo
    - credentials_wo_version
    - namespace
EOT

  type = map(object({
    key_collection         = string
    mount                  = string
    name                   = string
    credentials_wo         = optional(map(string))
    credentials_wo_version = optional(number)
    namespace              = optional(string)
  }))
}

