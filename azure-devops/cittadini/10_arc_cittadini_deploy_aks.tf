variable "arc_cittadini_aks_deploy" {
  default = {
    repository = {
      organization   = "pagopa"
      name           = "arc-cittadini-deploy-aks"
      branch_name    = "refs/heads/main"
      pipelines_path = ".devops"
    }
    pipeline = {
      path = "cittadini\\arc-cittadini-deploy-aks"
      name = "arc-cittadini-deploy-aks"
    }
  }
}

locals {
  # global vars
  arc_cittadini_aks_deploy_variables = {}

  # global secrets
  arc_cittadini_aks_deploy_variables_secret = {}

  # code_review vars
  arc_cittadini_aks_deploy_variables_code_review = {
  }
  # code_review secrets
  arc_cittadini_aks_deploy_variables_secret_code_review = {}

  # deploy vars
  arc_cittadini_aks_deploy_variables_deploy = {
    DEV_KUBERNETES_SERVICE_CONN = azuredevops_serviceendpoint_kubernetes.aks_dev.service_endpoint_name
    DEV_AGENT_POOL              = local.azdo_agent_pool_dev
    ARGOCD_SERVER               = module.domain_dev_secrets.values["argocd-server"].value
    ARGOCD_USERNAME             = module.domain_dev_secrets.values["argocd-admin-username"].value
    ARGOCD_PASSWORD             = module.domain_dev_secrets.values["argocd-admin-password"].value
  }

  # deploy secrets vars
  arc_cittadini_aks_deploy_variables_secret_deploy = {}
}

module "arc_cittadini_aks_deploy" {
  source = "git::https://github.com/pagopa/azuredevops-tf-modules.git//azuredevops_build_definition_generic?ref=v9.2.1"

  project_id                   = data.azuredevops_project.project.project_id
  repository                   = var.arc_cittadini_aks_deploy.repository
  github_service_connection_id = data.azuredevops_serviceendpoint_github.azure-devops-github-rw.id

  pipeline_name         = "${var.arc_cittadini_aks_deploy.pipeline.name}.deploy"
  pipeline_yml_filename = "deploy.yml"
  path                  = var.arc_cittadini_aks_deploy.pipeline.path

  pull_request_trigger_enabled     = true
  pull_request_trigger_auto_cancel = true
  pull_request_trigger_use_yaml    = true

  variables = merge(
    local.arc_cittadini_aks_deploy_variables,
    local.arc_cittadini_aks_deploy_variables_deploy
  )

  variables_secret = merge(
    local.arc_cittadini_aks_deploy_variables_secret,
    local.arc_cittadini_aks_deploy_variables_secret_deploy
  )

  service_connection_ids_authorization = [
    data.azuredevops_serviceendpoint_azurerm.azure_dev.id,
    azuredevops_serviceendpoint_kubernetes.aks_dev.id,
  ]

}
