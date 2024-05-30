data "azuredevops_project" "this" {
  name = "${local.prefix}-projects"
}
