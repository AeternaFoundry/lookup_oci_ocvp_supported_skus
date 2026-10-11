data "oci_ocvp_supported_skus" "ocvp_supported_skus_lookup" {
  for_each = var.ocvp_supported_skus_lookup

  compartment_id  = each.value.compartment_id
  host_shape_name = each.value.host_shape_name

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

