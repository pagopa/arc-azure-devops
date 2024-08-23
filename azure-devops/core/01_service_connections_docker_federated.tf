# 🟢 DEV
module "dev_azurecr_service_conn" {
  source = "./.terraform/modules/__devops_v0__/azuredevops_serviceendpoint_azurecr_federated"
  providers = {
    azurerm = azurerm.dev
  }

  project_id = local.devops_project_id
  # #tfsec:ignore:general-secrets-no-plaintext-exposure
  serviceendpoint_azurecr_name_prefix = "${local.dev_docker_registry_name}-docker"

  tenant_id         = data.azurerm_client_config.current.tenant_id
  subscription_id   = data.azurerm_subscriptions.dev.subscriptions[0].subscription_id
  subscription_name = data.azurerm_subscriptions.dev.subscriptions[0].display_name

  location            = local.location_service_conn
  resource_group_name = local.dev_identity_rg_name

  azurecr_name                = local.dev_docker_registry_name
  azurecr_resource_group_name = local.dev_docker_registry_rg_name
}

# 🟨 UAT
module "uat_azurecr_service_conn" {
  source = "./.terraform/modules/__devops_v0__/azuredevops_serviceendpoint_azurecr_federated"
  providers = {
    azurerm = azurerm.uat
  }

  project_id = local.devops_project_id
  # #tfsec:ignore:general-secrets-no-plaintext-exposure
  serviceendpoint_azurecr_name_prefix = "${local.uat_docker_registry_name}-docker"

  tenant_id         = data.azurerm_client_config.current.tenant_id
  subscription_id   = data.azurerm_subscriptions.uat.subscriptions[0].subscription_id
  subscription_name = data.azurerm_subscriptions.uat.subscriptions[0].display_name

  location                    = local.location_service_conn
  resource_group_name         = local.uat_identity_rg_name
  azurecr_name                = local.uat_docker_registry_name
  azurecr_resource_group_name = local.uat_docker_registry_rg_name
}

#module "prod_azurecr_service_conn" {
#  source = "./.terraform/modules/__devops_v0__/azuredevops_serviceendpoint_federated"
#  providers = {
#    azurerm = azurerm.prod
#  }
#
#  project_id = local.devops_project_id
#  # #tfsec:ignore:general-secrets-no-plaintext-exposure
#  name = "${data.azurerm_subscriptions.prod.subscriptions[0].display_name}-AZURE"
#
#  tenant_id         = data.azurerm_client_config.current.tenant_id
#  subscription_id   = data.azurerm_subscriptions.prod.subscriptions[0].subscription_id
#  subscription_name = data.azurerm_subscriptions.prod.subscriptions[0].display_name
#
#  location               = local.location_service_conn
#  resource_group_name    = local.prod_identity_rg_name
#  check_approval_enabled = true
#  approver_ids           = data.azuredevops_group.admins.origin_id
#}

