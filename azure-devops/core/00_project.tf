data "azuredevops_project" "this" {
  name = "${local.prefix}-projects"
}

data "azuredevops_group" "admins" {
  project_id = data.azuredevops_project.this.id
  name       = "admins"
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
