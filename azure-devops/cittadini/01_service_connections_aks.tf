resource "azuredevops_serviceendpoint_kubernetes" "aks_dev" {

  project_id            = local.devops_project_id
  service_endpoint_name = local.dev_srv_endpoint_aks_name
  apiserver_url         = module.arc_dev_secrets.values["${local.dev_aks_name}-apiserver-url"].value
  authorization_type    = "ServiceAccount"
  service_account {
    # base64 values
    token   = module.arc_dev_secrets.values["${local.dev_aks_name}-azure-devops-sa-token"].value
    ca_cert = module.arc_dev_secrets.values["${local.dev_aks_name}-azure-devops-sa-cacrt"].value
  }
}
