#Root variables
variable "root_id" {
    type = string
    default = "terraform"
  
}
variable "root_name" {
    type = string
    default = "terraform"
  
}

#connectivity settings
variable "deploy_connectivity_resources" {
    type = bool
    default = true
 
}
variable "connectivity_resources_location" {
    type = string
    default = "eastus"
  
}
variable "subscription_id_connectivity" {
    type = string
    default = "bdfb9a7c-d68a-45a4-83e8-5c42d5b52191"
  
}
variable "connectivity_resources_tags" {
    type = map(string)
    default = {
      "resourcetype" = "connectivity"
    }
  
}

#Management settings
variable "deploy_management_resources" {
    type = bool
    default = true

}
variable "log_retention_in_days" {
    type = number
    default = 50
  
}
variable "security_alerts_email_address" {
    type = string
    default = "azurelogin23@gmail.com"
  
}
variable "management_resources_location" {
    type = string
    default = "eastus"
  
}
variable "subscription_id_management" {
    type = string
    default = "7d01ad10-7e31-4fc7-bc94-503fc521135f"
  
}
variable "management_resources_tags" {
    type = map(string)
    default = {
      "resourcetype" = "management"
    }
  
}