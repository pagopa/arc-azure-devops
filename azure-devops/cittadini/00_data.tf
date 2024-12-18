data "azurerm_client_config" "current" {}

#
# Subscription
#
data "azurerm_subscriptions" "dev" {
  display_name_prefix = local.dev_subscription_name
}

data "azurerm_subscriptions" "uat" {
  display_name_prefix = local.uat_subscription_name
}

data "azurerm_subscriptions" "prod" {
  display_name_prefix = local.prod_subscription_name
}

#
# Github
#
data "azuredevops_serviceendpoint_github" "azure_devops_github_rw" {
  project_id            = local.devops_project_id
  service_endpoint_name = "azure-devops-github-rw"
}

data "azuredevops_serviceendpoint_github" "azure_devops_github_ro" {
  project_id            = local.devops_project_id
  service_endpoint_name = "azure-devops-github-ro"
}

#
# Azure
#
data "azuredevops_serviceendpoint_azurerm" "dev_azurerm_service_conn" {
  project_id            = local.devops_project_id
  service_endpoint_name = "${data.azurerm_subscriptions.dev.subscriptions[0].display_name}-AZURE-SERVICE-CONN"
}

data "azuredevops_serviceendpoint_azurerm" "uat_azurerm_service_conn" {
  project_id            = local.devops_project_id
  service_endpoint_name = "${data.azurerm_subscriptions.uat.subscriptions[0].display_name}-AZURE-SERVICE-CONN"
}

data "azuredevops_serviceendpoint_azurerm" "prod_azurerm_service_conn" {
  project_id            = local.devops_project_id
  service_endpoint_name = "${data.azurerm_subscriptions.prod.subscriptions[0].display_name}-AZURE-SERVICE-CONN"
}
