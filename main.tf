module "alz" {
  # To enable correct testing of our examples, we must source this
  # module locally. Please remove the local `source = "../../../../"`
  # and uncomment the remote `source` and `version` below.
  source  = "Azure/caf-enterprise-scale/azurerm"
  version = "6.1.0"
  # source  = "Azure/caf-enterprise-scale/azurerm"
  # version = "<version>" # change this to your desired version, https://www.terraform.io/language/expressions/version-constraints

  providers = {
    azurerm              = azurerm
    azurerm.connectivity = azurerm
    azurerm.management   = azurerm
  }

  # Base module configuration settings
  root_parent_id   = data.azurerm_client_config.core.tenant_id
  root_id          = var.root_id
  root_name        = var.root_name
  library_path     = "${path.root}/lib"
  default_location = var.location

  # Enable creation of the core management group hierarchy
  # and additional custom_landing_zones
  deploy_core_landing_zones = var.deploy_core_landing_zones
  deploy_corp_landing_zones = var.deploy_corp_landing_zones
  deploy_demo_landing_zones = var.deploy_demo_landing_zones
  deploy_sap_landing_zones  = var.deploy_sap_landing_zones

  custom_landing_zones = local.custom_landing_zones


  # Configuration settings for identity resources is
  # bundled with core as no resources are actually created
  # for the identity subscription
  deploy_identity_resources    = var.deploy_identity_resources
  configure_identity_resources = local.configure_identity_resources
  subscription_id_identity     = var.subscription_id_identity

  # The following inputs ensure that managed parameters are
  # configured correctly for policies relating to connectivity
  # resources created by the connectivity module instance and
  # to map the subscription to the correct management group,
  # but no resources are created by this module instance
  deploy_connectivity_resources    = var.deploy_connectivity_resources
  configure_connectivity_resources = local.configure_connectivity_resources
  subscription_id_connectivity     = var.subscription_id_identity

  # The following inputs ensure that managed parameters are
  # configured correctly for policies relating to management
  # resources created by the management module instance and
  # to map the subscription to the correct management group,
  # but no resources are created by this module instance
  deploy_management_resources    = var.deploy_management_resources
  configure_management_resources = local.configure_management_resources
  subscription_id_management     = var.subscription_id_management
}