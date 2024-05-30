resource "azuredevops_environment" "environments" {
  for_each = toset(local.pipeline_environments)

  project_id = local.devops_project_id
  name       = each.key
}
