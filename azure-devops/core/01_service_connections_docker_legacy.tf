# Service connection for azure container registry
#
# 🟢 DEV - ACR Service Connection
#
resource "azuredevops_serviceendpoint_azurecr" "acr_docker_registry_dev" {
  project_id     = local.devops_project_id
  resource_group = local.dev_docker_registry_rg_name

  service_endpoint_name = local.dev_srv_endpoint_azure_devops_docker_name
  azurecr_name          = local.dev_docker_registry_name

  azurecr_subscription_name = local.dev_subscription_name
  azurecr_spn_tenantid      = data.azurerm_client_config.current.tenant_id
  azurecr_subscription_id   = data.azurerm_subscriptions.dev.subscriptions[0].subscription_id
}

#
# 🟨 UAT - ACR Service Connection
#
resource "azuredevops_serviceendpoint_azurecr" "acr_docker_registry_uat" {
  project_id     = local.devops_project_id
  resource_group = local.uat_docker_registry_rg_name

  service_endpoint_name = local.uat_srv_endpoint_azure_devops_docker_name
  azurecr_name          = local.uat_docker_registry_name

  azurecr_subscription_name = local.uat_subscription_name
  azurecr_spn_tenantid      = data.azurerm_client_config.current.tenant_id
  azurecr_subscription_id   = data.azurerm_subscriptions.uat.subscriptions[0].subscription_id
}

#
# 🛑 PROD - ACR Service Connection
#
# resource "azuredevops_serviceendpoint_azurecr" "acr_docker_registry_prod" {
#   project_id     = local.devops_project_id
#   resource_group = local.prod_docker_registry_rg_name
#
#   service_endpoint_name = local.prod_srv_endpoint_azure_devops_docker_name
#   azurecr_name          = local.prod_docker_registry_name
#
#   azurecr_subscription_name = local.prod_subscription_name
#   azurecr_spn_tenantid      = data.azurerm_client_config.current.tenant_id
#   azurecr_subscription_id   = data.azurerm_subscriptions.prod.subscriptions[0].subscription_id
# }
