#
# ⛩ Service connections
#

module "DEV_AZURERM_IAC_DEPLOY_SERVICE_CONN" {
  source = "./.terraform/modules/__devops_v0__/azuredevops_serviceendpoint_federated"
  providers = {
    azurerm = azurerm.dev
  }

  project_id = data.azuredevops_project.project.id
  #tfsec:ignore:general-secrets-no-plaintext-exposure
  name = "azdo-dev-arc-iac-deploy"

  tenant_id         = data.azurerm_client_config.current.tenant_id
  subscription_id   = data.azurerm_subscriptions.dev.subscriptions[0].subscription_id
  subscription_name = local.dev_subscription_name

  location            = var.location
  resource_group_name = local.dev_identity_rg_name
}

resource "azurerm_role_assignment" "dev_apply_permissions" {
  scope                = data.azurerm_subscriptions.dev.subscriptions[0].id
  role_definition_name = "Contributor"
  principal_id         = module.DEV_AZURERM_IAC_DEPLOY_SERVICE_CONN.identity_principal_id
}

#
# UAT
#

module "UAT_AZURERM_IAC_DEPLOY_SERVICE_CONN" {
  source = "./.terraform/modules/__devops_v0__/azuredevops_serviceendpoint_federated"
  providers = {
    azurerm = azurerm.uat
  }

  project_id = data.azuredevops_project.project.id
  #tfsec:ignore:general-secrets-no-plaintext-exposure
  name = "azdo-uat-arc-iac-deploy"

  tenant_id         = data.azurerm_client_config.current.tenant_id
  subscription_id   = data.azurerm_subscriptions.uat.subscriptions[0].subscription_id
  subscription_name = local.uat_subscription_name

  location            = var.location
  resource_group_name = local.uat_identity_rg_name
}

resource "azurerm_role_assignment" "uat_apply_permissions" {
  scope                = data.azurerm_subscriptions.uat.subscriptions[0].id
  role_definition_name = "Contributor"
  principal_id         = module.UAT_AZURERM_IAC_DEPLOY_SERVICE_CONN.identity_principal_id
}
#
##
## PROD
##
#module "PROD-AZURERM-IAC-DEPLOY-SERVICE-CONN" {
#  depends_on = [data.azuredevops_project.project]
#  source     = "./.terraform/modules/__devops_v0__/azuredevops_serviceendpoint_federated"
#  providers = {
#    azurerm = azurerm.prod
#  }
#
#  project_id = data.azuredevops_project.project.id
#  #tfsec:ignore:general-secrets-no-plaintext-exposure
#  name = "azdo-prod-arc-iac-deploy"
#
#  tenant_id         = data.azurerm_client_config.current.tenant_id
#  subscription_id   = data.azurerm_subscriptions.prod.subscriptions[0].subscription_id
#  subscription_name = local.prod_subscription_name
#
#  location            = var.location
#  resource_group_name = local.prod_identity_rg_name
#}
#
#resource "azurerm_role_assignment" "prod_apply_permissions" {
#  scope                = data.azurerm_subscriptions.prod.subscriptions[0].id
#  role_definition_name = "Contributor"
#  principal_id         = module.PROD-AZURERM-IAC-DEPLOY-SERVICE-CONN.identity_principal_id
#}