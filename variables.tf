variable "logs_archive_orders" {
  description = <<EOT
Map of logs_archive_orders, attributes below
Optional:
    - archive_ids
EOT

  type = map(object({
    archive_ids = optional(list(string))
  }))
}

