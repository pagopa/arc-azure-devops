data "azuredevops_project" "this" {
  name = "${local.prefix}-projects"
}

data "azuredevops_group" "admins" {
  project_id = data.azuredevops_project.this.id
  name       = "admins"
}
