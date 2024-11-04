variable "cittadini_be" {
  default = {
    repository = {
      organization    = "pagopa"
      name            = "arc-be"
      branch_name     = "refs/heads/main"
      pipelines_path  = ".devops"
      yml_prefix_name = null
    }
    pipeline = {
      path               = "cittadini\\be"
      enable_code_review = true
      enable_deploy      = true
    }
  }
}

locals {
  # global vars
  cittadini_be_variables = {}

  # global secrets
  cittadini_be_variables_secret = {}

  # deploy vars
  cittadini_be_variables_deploy = {
    K8S_IMAGE_REPOSITORY_NAME = replace(var.cittadini_be.repository.name, "-", "")
    DEPLOY_NAMESPACE          = local.domain
    HELM_RELEASE_NAME         = var.cittadini_be.repository.name

    DEV_CONTAINER_REGISTRY_SERVICE_CONN = local.dev_srv_endpoint_azure_devops_docker_name
    DEV_KUBERNETES_SERVICE_CONN         = local.dev_srv_endpoint_aks_name
    DEV_CONTAINER_REGISTRY_NAME         = local.dev_azurecr_name
    DEV_AGENT_POOL                      = local.dev_azdo_agent_pool

    UAT_CONTAINER_REGISTRY_SERVICE_CONN = local.uat_srv_endpoint_azure_devops_docker_name
    UAT_KUBERNETES_SERVICE_CONN         = local.uat_srv_endpoint_aks_name
    UAT_CONTAINER_REGISTRY_NAME         = local.uat_azurecr_name
    UAT_AGENT_POOL                      = local.uat_azdo_agent_pool

    PROD_CONTAINER_REGISTRY_SERVICE_CONN = local.prod_srv_endpoint_azure_devops_docker_name
    PROD_KUBERNETES_SERVICE_CONN         = local.prod_srv_endpoint_aks_name
    PROD_CONTAINER_REGISTRY_NAME         = local.prod_azurecr_name
    PROD_AGENT_POOL                      = local.prod_azdo_agent_pool

  }

  # deploy secrets vars
  cittadini_be_variables_secret_deploy = {
    DEV_WORK_IDENTITY_CLIENT_ID = local.dev_workload_identity_client_id

    UAT_WORK_IDENTITY_CLIENT_ID = local.uat_workload_identity_client_id

    PROD_WORK_IDENTITY_CLIENT_ID = local.prod_workload_identity_client_id
  }
}

module "cittadini_be_deploy" {
  source = "./.terraform/modules/__devops_v0__/azuredevops_build_definition_generic"

  providers = {
    azurerm = azurerm.prod
  }

  project_id                   = local.devops_project_id
  repository                   = var.cittadini_be.repository
  github_service_connection_id = data.azuredevops_serviceendpoint_github.azure_devops_github_rw.id

  pipeline_name         = "${local.product}-be.deploy"
  pipeline_yml_filename = "deploy-pipelines.yml"
  path                  = var.cittadini_be.pipeline.path
  ci_trigger_enabled    = true
  ci_trigger_use_yaml   = true

  variables = merge(
    local.cittadini_be_variables,
    local.cittadini_be_variables_deploy
  )

  variables_secret = merge(
    local.cittadini_be_variables_secret,
    local.cittadini_be_variables_secret_deploy
  )

  service_connection_ids_authorization = [
    local.dev_srv_endpoint_azure_id,
    local.dev_srv_endpoint_azure_devops_docker_id,
    local.dev_srv_endpoint_aks_id,
    local.uat_srv_endpoint_azure_id,
    local.uat_srv_endpoint_azure_devops_docker_id,
    local.uat_srv_endpoint_aks_id,
    local.prod_srv_endpoint_azure_id,
    local.prod_srv_endpoint_azure_devops_docker_id,
    local.prod_srv_endpoint_aks_id
  ]
}
