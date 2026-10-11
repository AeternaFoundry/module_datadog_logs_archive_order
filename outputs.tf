output "logs_archive_orders_id" {
  description = "Map of id values across all logs_archive_orders, keyed the same as var.logs_archive_orders except keys with no id are omitted"
  value       = { for k, v in datadog_logs_archive_order.logs_archive_orders : k => v.id if v.id != null && length(v.id) > 0 }
}
output "logs_archive_orders_archive_ids" {
  description = "Map of archive_ids values across all logs_archive_orders, keyed the same as var.logs_archive_orders except keys with no archive_ids are omitted"
  value       = { for k, v in datadog_logs_archive_order.logs_archive_orders : k => v.archive_ids if v.archive_ids != null && length(v.archive_ids) > 0 }
}

