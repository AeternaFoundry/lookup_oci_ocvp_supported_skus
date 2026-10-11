variable "ocvp_supported_skus_lookup" {
  description = <<EOT
Map of ocvp_supported_skus_lookup, attributes below
Required:
    - compartment_id
Optional:
    - host_shape_name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id  = string
    host_shape_name = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

