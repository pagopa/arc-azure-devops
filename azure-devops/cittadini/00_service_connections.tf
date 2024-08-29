#
# ACR Workload Identity
#
data "azuredevops_serviceendpoint_azurecr" "dev_ita_workload_identity" {
  project_id            = data.azuredevops_project.this.id
  service_endpoint_name = var.acr_ita_service_connection_workload_identity_dev
}

data "azuredevops_serviceendpoint_azurecr" "uat_ita_workload_identity" {
  project_id            = data.azuredevops_project.this.id
  service_endpoint_name = var.acr_ita_service_connection_workload_identity_uat
}

data "azuredevops_serviceendpoint_azurecr" "prod_ita_workload_identity" {
  project_id            = data.azuredevops_project.this.id
  service_endpoint_name = var.acr_ita_service_connection_workload_identity_prod
}
