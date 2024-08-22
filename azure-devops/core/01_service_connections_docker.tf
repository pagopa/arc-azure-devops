# 🟢 DEV service connection for azure container registry
resource "azuredevops_serviceendpoint_azurecr" "acr_docker_registry_dev" {
  project_id     = local.devops_project_id
  resource_group = local.dev_docker_registry_rg_name

  service_endpoint_name = local.dev_srv_endpoint_azure_devops_docker_name
  azurecr_name          = local.dev_docker_registry_name

  azurecr_subscription_name = local.dev_subscription_name
  azurecr_spn_tenantid      = data.azurerm_client_config.current.tenant_id
  azurecr_subscription_id   = data.azurerm_subscriptions.dev.subscriptions[0].subscription_id
}
