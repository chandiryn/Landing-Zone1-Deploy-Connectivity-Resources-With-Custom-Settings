#reference for Azure Root Tenent ID

data "azurerm_client_config" "core" {}

module "caf-enterprise-scale" {
  source  = "Azure/caf-enterprise-scale/azurerm"
  version = "2.4.1"

  default_location = "eastus"
  
  # insert the 1 required variable here
  providers = {
    azurerm = azurerm
    azurerm.connectivity = azurerm.connectivity
    azurerm.management = azurerm.management
  }
  root_parent_id = data.azurerm_client_config.core.tenant_id
  root_id = var.root_id
  root_name = var.root_name

  deploy_connectivity_resources = var.deploy_connectivity_resources
  subscription_id_connectivity = var.subscription_id_connectivity
  configure_connectivity_resources = local.configure_connectivity_resources

  deploy_management_resources = var.deploy_management_resources
  subscription_id_management = var.subscription_id_management
  configure_management_resources = local.configure_management_resources

}

