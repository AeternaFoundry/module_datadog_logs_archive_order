resource "datadog_logs_archive_order" "logs_archive_orders" {
  for_each = var.logs_archive_orders

  archive_ids = each.value.archive_ids
}

