output "ocvp_supported_skus_lookup_id" {
  description = "Map of id values across all ocvp_supported_skus_lookup, keyed the same as var.ocvp_supported_skus_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_ocvp_supported_skus.ocvp_supported_skus_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ocvp_supported_skus_lookup_compartment_id" {
  description = "Map of compartment_id values across all ocvp_supported_skus_lookup, keyed the same as var.ocvp_supported_skus_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_ocvp_supported_skus.ocvp_supported_skus_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "ocvp_supported_skus_lookup_filter" {
  description = "Map of filter values across all ocvp_supported_skus_lookup, keyed the same as var.ocvp_supported_skus_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_ocvp_supported_skus.ocvp_supported_skus_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "ocvp_supported_skus_lookup_host_shape_name" {
  description = "Map of host_shape_name values across all ocvp_supported_skus_lookup, keyed the same as var.ocvp_supported_skus_lookup except keys with no host_shape_name are omitted"
  value       = { for k, v in data.oci_ocvp_supported_skus.ocvp_supported_skus_lookup : k => v.host_shape_name if v.host_shape_name != null && length(v.host_shape_name) > 0 }
}
output "ocvp_supported_skus_lookup_items" {
  description = "Map of items values across all ocvp_supported_skus_lookup, keyed the same as var.ocvp_supported_skus_lookup except keys with no items are omitted"
  value       = { for k, v in data.oci_ocvp_supported_skus.ocvp_supported_skus_lookup : k => v.items if v.items != null && length(v.items) > 0 }
}

