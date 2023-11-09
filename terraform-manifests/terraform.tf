terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.79.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  skip_provider_registration = true # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
}

provider "azurerm" {
    alias = "connectivity"
	  skip_provider_registration = true
    features {
      
    }
    subscription_id = var.subscription_id_connectivity
  
}
provider "azurerm" {
    alias = "management"
	  skip_provider_registration = true
    features {
      
    }
    subscription_id = var.subscription_id_management
  
}