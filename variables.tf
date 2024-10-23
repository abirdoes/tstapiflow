variable "starter_locations" {
  type        = list(string)
  description = "The location for Azure resources. (e.g 'uksouth')|azure_location"
}

variable "location" {
  type = string
  default = "westus2"
}

variable "subscription_id_connectivity" {
  type        = string
  description = "The identifier of the Connectivity Subscription. (e.g '00000000-0000-0000-0000-000000000000')|azure_subscription_id"
}

variable "subscription_id_identity" {
  type        = string
  description = "The identifier of the Identity Subscription. (e.g '00000000-0000-0000-0000-000000000000')|azure_subscription_id"
}

variable "subscription_id_management" {
  type        = string
  description = "The identifier of the Management Subscription. (e.g 00000000-0000-0000-0000-000000000000)|azure_subscription_id"
}

variable "root_id" {
  type        = string
  default     = "pge"
  description = "The root id is the identity for the root management group and a prefix applied to all management group identities|azure_name"
}

variable "root_name" {
  type        = string
  default     = "pge"
  description = "The display name for the root management group|azure_name"
}

variable "root_parent_id" {
  type        = string
  default     = "38742c59-8740-4045-a2f1-6c12589760f3"
  description = "The parent management group id. Defaults to `Tenant Root Group` if not supplied."
}

variable "deploy_management_resources" {
  type = bool
  default = false
}

variable "log_retention_in_days" {
  type = number
  default = 50
}

variable "security_alerts_email_address" {
  type    = string
  default = "my_valid_security_contact@replace_me" # Replace this value with your own email address.
}

variable "management_resources_location" {
  type    = string
  default = "westus2"
}

variable "management_resources_tags" {
  type = map(string)
  default = {
    demo_type = "deploy_management_resources_custom"
  }
}

variable "deploy_identity_resources" {
  type    = bool
  default = false
}

variable "deploy_connectivity_resources" {
  type = bool
  default = false
}