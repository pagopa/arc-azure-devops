variable "soak_test" {
  default = {
    repository = {
      organization    = "pagopa"
      name            = "arc-soak-test"
      branch_name     = "refs/heads/main"
      pipelines_path  = ".devops"
      yml_prefix_name = null
    }
    pipeline = {
      path = "cittadini\\soak-test"
    }
  }
}

locals {
  # global vars
  soak_test_variables = {}

  # global secrets
  soak_test_variables_secret = {}
}

module "soak_test" {
  source = "./.terraform/modules/__devops_v0__/azuredevops_build_definition_generic"

  providers = {
    azurerm = azurerm.prod
  }

  project_id                   = local.devops_project_id
  repository                   = var.soak_test.repository
  github_service_connection_id = data.azuredevops_serviceendpoint_github.azure_devops_github_rw.id
  pipeline_name                = "${local.product}-soak-test"
  pipeline_yml_filename        = "soak-tests-pipeline.yml"
  path                         = var.soak_test.pipeline.path

  variables = merge(
    local.soak_test_variables,
  )

  variables_secret = merge(
    local.soak_test_variables_secret
  )

  service_connection_ids_authorization = []
}
