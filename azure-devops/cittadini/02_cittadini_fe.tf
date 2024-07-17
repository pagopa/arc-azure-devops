variable "cittadini_fe" {
  default = {
    repository = {
      organization    = "pagopa"
      name            = "arc-fe"
      branch_name     = "refs/heads/main"
      pipelines_path  = ".devops"
      yml_prefix_name = null
    }
    pipeline = {
      path = "cittadini\\fe"
    }
  }
}

locals {

  # deploy vars
  cittadini_fe_variables_deploy = {
    DEV_AZURE_SUBSCRIPTION   = data.azuredevops_serviceendpoint_azurerm.dev_azurerm_service_conn.id
    DEV_STORAGE_ACCOUNT_RG   = local.dev_storage_account_rg
    DEV_STORAGE_ACCOUNT_NAME = local.dev_storage_account_name
    DEV_CDN_ENDPOINT         = local.dev_cdn_endpoint
    DEV_CDN_PROFILE          = local.dev_cdn_profile
    AZURE_DEVOPS_GITHUB_RO   = data.azuredevops_serviceendpoint_github.azure_devops_github_ro.service_endpoint_name
    DEV_AGENT_POOL           = local.dev_azdo_agent_pool
  }
}

module "cittadini_fe_deploy" {
  source = "./.terraform/modules/__devops_v0__/azuredevops_build_definition_generic"

  providers = {
    azurerm = azurerm.prod
  }

  project_id                   = local.devops_project_id
  repository                   = var.cittadini_fe.repository
  github_service_connection_id = data.azuredevops_serviceendpoint_github.azure_devops_github_rw.id

  pipeline_name         = "${local.product}-fe.deploy"
  pipeline_yml_filename = "deploy-pipelines.yml"
  path                  = var.cittadini_fe.pipeline.path

  ci_trigger_enabled  = true
  ci_trigger_use_yaml = true

  variables = merge(
    local.cittadini_fe_variables_deploy,
  )

  variables_secret = {}

  service_connection_ids_authorization = [
    data.azuredevops_serviceendpoint_azurerm.dev_azurerm_service_conn.id,
    data.azuredevops_serviceendpoint_github.azure_devops_github_ro.id
  ]
}