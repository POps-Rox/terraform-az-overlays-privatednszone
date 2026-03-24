
module "mod_pdz" {
  source     = "../../.."
  depends_on = [azurerm_resource_group.dns-network-rg]

  # Resource Group, location, VNet and Subnet details
  location           = var.location
  deploy_environment = var.deploy_environment
  environment        = var.environment
  org_name           = var.org_name
  workload_name      = var.workload_name

  private_dns_zone_name        = "privatelink.database.windows.net"
  existing_resource_group_name = azurerm_resource_group.dns-network-rg.name
  private_dns_zone_vnets_ids = [
    azurerm_virtual_network.dns-vnet.id
  ]

  add_tags = {}
}
