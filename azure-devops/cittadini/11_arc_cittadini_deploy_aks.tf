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
    DEV_AGENT_POOL      = local.dev_azdo_agent_pool
    DEV_ARGOCD_SERVER   = module.arc_dev_secrets.values["argocd-server-url"].value
    DEV_ARGOCD_USERNAME = module.arc_dev_secrets.values["argocd-admin-username"].value
    DEV_ARGOCD_PASSWORD = module.arc_dev_secrets.values["argocd-admin-password"].value

    UAT_AGENT_POOL      = local.uat_azdo_agent_pool
    UAT_ARGOCD_SERVER   = module.arc_uat_secrets.values["argocd-server-url"].value
    UAT_ARGOCD_USERNAME = module.arc_uat_secrets.values["argocd-admin-username"].value
    UAT_ARGOCD_PASSWORD = module.arc_uat_secrets.values["argocd-admin-password"].value

    PROD_AGENT_POOL      = local.prod_azdo_agent_pool
    PROD_ARGOCD_SERVER   = module.arc_prod_secrets.values["argocd-server-url"].value
    PROD_ARGOCD_USERNAME = module.arc_prod_secrets.values["argocd-admin-username"].value
    PROD_ARGOCD_PASSWORD = module.arc_prod_secrets.values["argocd-admin-password"].value
  }

  # deploy secrets vars
  arc_cittadini_aks_deploy_variables_secret_deploy = {}
}

module "arc_cittadini_aks_deploy" {
  source = "./.terraform/modules/__devops_v0__/azuredevops_build_definition_generic"

  project_id                   = data.azuredevops_project.this.project_id
  repository                   = var.arc_cittadini_aks_deploy.repository
  github_service_connection_id = data.azuredevops_serviceendpoint_github.azure_devops_github_rw.id

  pipeline_name         = "${var.arc_cittadini_aks_deploy.pipeline.name}.deploy"
  pipeline_yml_filename = "deploy-argocd-apps.yml"
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
  ]

}
