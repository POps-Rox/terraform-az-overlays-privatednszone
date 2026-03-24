# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

output "private_dns_zone_id" {
  description = "Private DNS Zone ID."
  value       = module.mod_pdz.private_dns_zone_id
}

output "private_dns_zone_name" {
  description = "Private DNS Zone name."
  value       = module.mod_pdz.private_dns_zone_name
}