data "azuredevops_project" "this" {
  name = "${local.prefix}-projects"
}

resource "azuredevops_project_features" "project_features" {
  project_id = data.azuredevops_project.this.id
  features = {
    "boards"       = "disabled"
    "repositories" = "disabled"
    "pipelines"    = "enabled"
    "testplans"    = "disabled"
    "artifacts"    = "disabled"
  }
}

resource "azuredevops_check_approval" "check_approval_env_prod" {
  project_id           = data.azuredevops_project.this.id
  target_resource_id   = azuredevops_environment.environments["PROD"].id
  target_resource_type = "environment"

  requester_can_approve = true

  approvers = [
    data.azuredevops_group.admin.origin_id
  ]

  timeout = 60
}
