# 🟢 DEV service connection for azure container registry
resource "azuredevops_serviceendpoint_azurecr" "acr_docker_registry_dev" {
 project_id     = local.devops_project_id
 resource_group = local.docker_registry_rg_name_dev

 service_endpoint_name = local.srv_endpoint_name_docker_registry_dev
 azurecr_name          = local.docker_registry_name_dev

 azurecr_subscription_name = local.dev_subscription_name
 azurecr_spn_tenantid      = data.azurerm_client_config.current.tenant_id
 azurecr_subscription_id   = data.azurerm_subscriptions.dev.subscriptions[0].subscription_id
}
