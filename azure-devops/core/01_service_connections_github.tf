#
# 🐙 GITHUB
#

# Github service connection (read-only)
resource "azuredevops_serviceendpoint_github" "azure_devops_github_ro" {

  project_id            = local.devops_project_id
  service_endpoint_name = "azure-devops-github-ro"

  auth_personal {
    personal_access_token = module.secrets.values["azure-devops-github-ro-TOKEN"].value
  }

  lifecycle {
    ignore_changes = [
      description,
      authorization
    ]
  }
}

# Github service connection (pull request)
resource "azuredevops_serviceendpoint_github" "azure_devops_github_pr" {

  project_id            = local.devops_project_id
  service_endpoint_name = "azure-devops-github-pr"

  auth_personal {
    personal_access_token = module.secrets.values["azure-devops-github-pr-TOKEN"].value
  }

  lifecycle {
    ignore_changes = [
      description,
      authorization
    ]
  }
}

# Github service connection (read-write)
resource "azuredevops_serviceendpoint_github" "azure_devops_github_rw" {

  project_id            = local.devops_project_id
  service_endpoint_name = "azure-devops-github-rw"

  auth_personal {
    personal_access_token = module.secrets.values["azure-devops-github-rw-TOKEN"].value
  }

  lifecycle {
    ignore_changes = [
      description,
      authorization
    ]
  }
}