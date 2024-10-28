#
# 🟢 DEV - Azure Service Connection
#
module "dev_azurerm_service_conn" {
  source = "./.terraform/modules/__devops_v0__/azuredevops_serviceendpoint_federated"
  providers = {
    azurerm = azurerm.dev
  }

  project_id = local.devops_project_id
  # #tfsec:ignore:general-secrets-no-plaintext-exposure
  name = "${data.azurerm_subscriptions.dev.subscriptions[0].display_name}-AZURE"

  tenant_id         = data.azurerm_client_config.current.tenant_id
  subscription_id   = data.azurerm_subscriptions.dev.subscriptions[0].subscription_id
  subscription_name = data.azurerm_subscriptions.dev.subscriptions[0].display_name

  location            = local.location_service_conn
  resource_group_name = local.dev_identity_rg_name
}

resource "azurerm_role_assignment" "dev_azurerm" {
  scope                = data.azurerm_subscriptions.dev.subscriptions[0].id
  role_definition_name = "Contributor"
  principal_id         = module.dev_azurerm_service_conn.identity_principal_id
}

#
# 🟨 UAT - Azure Service Connection
#
module "uat_azurerm_service_conn" {
  source = "./.terraform/modules/__devops_v0__/azuredevops_serviceendpoint_federated"
  providers = {
    azurerm = azurerm.uat
  }

  project_id = local.devops_project_id
  # #tfsec:ignore:general-secrets-no-plaintext-exposure
  name = "${data.azurerm_subscriptions.uat.subscriptions[0].display_name}-AZURE"

  tenant_id         = data.azurerm_client_config.current.tenant_id
  subscription_id   = data.azurerm_subscriptions.uat.subscriptions[0].subscription_id
  subscription_name = data.azurerm_subscriptions.uat.subscriptions[0].display_name

  location            = local.location_service_conn
  resource_group_name = local.uat_identity_rg_name
}

resource "azurerm_role_assignment" "uat_azurerm" {
  scope                = data.azurerm_subscriptions.uat.subscriptions[0].id
  role_definition_name = "Contributor"
  principal_id         = module.uat_azurerm_service_conn.identity_principal_id
}

#
# 🛑 PROD - Azure Service Connection
#

module "prod_azurerm_service_conn" {
  source = "./.terraform/modules/__devops_v0__/azuredevops_serviceendpoint_federated"
  providers = {
    azurerm = azurerm.prod
  }

  project_id = local.devops_project_id
  # #tfsec:ignore:general-secrets-no-plaintext-exposure
  name = "${data.azurerm_subscriptions.prod.subscriptions[0].display_name}-AZURE"

  tenant_id         = data.azurerm_client_config.current.tenant_id
  subscription_id   = data.azurerm_subscriptions.prod.subscriptions[0].subscription_id
  subscription_name = data.azurerm_subscriptions.prod.subscriptions[0].display_name

  location               = local.location_service_conn
  resource_group_name    = local.prod_identity_rg_name
  check_approval_enabled = true
  approver_ids           = [data.azuredevops_group.admins.origin_id]
}

resource "azurerm_role_assignment" "prod_azurerm" {
  scope                = data.azurerm_subscriptions.prod.subscriptions[0].id
  role_definition_name = "Contributor"
  principal_id         = module.prod_azurerm_service_conn.identity_principal_id
}
