variable "e2e_test" {
  default = {
    repository = {
      organization    = "pagopa"
      name            = "arc-fe-e2e"
      branch_name     = "refs/heads/main"
      pipelines_path  = ".devops"
      yml_prefix_name = null
    }
    pipeline = {
      path = "cittadini\\e2e-test"
    }
  }
}

locals {
  # global vars
  e2e_test_variables = {}

  # global secrets
  e2e_test_variables_secret = {
    DEV_TESTING_USERNAME = module.arc_dev_secrets.values["testing-username"].value
    DEV_TESTING_PASSWORD = module.arc_dev_secrets.values["testing-password"].value
  }
}

module "e2e_test" {
  source = "./.terraform/modules/__devops_v0__/azuredevops_build_definition_generic"

  providers = {
    azurerm = azurerm.prod
  }

  project_id                   = local.devops_project_id
  repository                   = var.e2e_test.repository
  github_service_connection_id = data.azuredevops_serviceendpoint_github.azure_devops_github_rw.id
  pipeline_name                = "${local.product}-e2e-test"
  pipeline_yml_filename        = "e2e-testing-pipeline.yml"
  path                         = var.e2e_test.pipeline.path

  variables = merge(
    local.e2e_test_variables,
  )

  variables_secret = merge(
    local.e2e_test_variables_secret
  )

  service_connection_ids_authorization = []
}