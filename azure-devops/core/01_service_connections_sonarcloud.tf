# SonarCloud service connection
resource "azuredevops_serviceendpoint_sonarcloud" "sonarcloud" {
  project_id            = local.devops_project_id
  service_endpoint_name = "SONARCLOUD-SERVICE-CONN"
  token                 = module.secrets.values["sonar-cloud-token"].value
  description           = "Managed by Terraform"
}