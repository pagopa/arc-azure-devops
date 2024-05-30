# core

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.0 |
| <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) | ~> 0.10.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.90 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module___devops_v0__"></a> [\_\_devops\_v0\_\_](#module\_\_\_devops\_v0\_\_) | git::https://github.com/pagopa/azuredevops-tf-modules.git | fa340ca0929348edf276a9247840c67aece70a78 |
| <a name="module___v3__"></a> [\_\_v3\_\_](#module\_\_\_v3\_\_) | git::https://github.com/pagopa/terraform-azurerm-v3.git | 8d21a675f3f12e5c217c76ea7786a47c64d939b7 |
| <a name="module_cittadini_fe_deploy"></a> [cittadini\_fe\_deploy](#module\_cittadini\_fe\_deploy) | ./.terraform/modules/__devops_v0__/azuredevops_build_definition_generic | n/a |

## Resources

| Name | Type |
|------|------|
| [azuredevops_project.this](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/project) | data source |
| [azuredevops_serviceendpoint_azurerm.dev_azurerm_service_conn](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/serviceendpoint_azurerm) | data source |
| [azuredevops_serviceendpoint_github.azure_devops_github_ro](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/serviceendpoint_github) | data source |
| [azuredevops_serviceendpoint_github.azure_devops_github_rw](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/serviceendpoint_github) | data source |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |
| [azurerm_subscriptions.dev](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscriptions) | data source |
| [azurerm_subscriptions.prod](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscriptions) | data source |
| [azurerm_subscriptions.uat](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscriptions) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cittadini_fe"></a> [cittadini\_fe](#input\_cittadini\_fe) | n/a | `map` | <pre>{<br>  "pipeline": {<br>    "path": "cittadini\\fe"<br>  },<br>  "repository": {<br>    "branch_name": "refs/heads/main",<br>    "name": "pagopa-arc-fe",<br>    "organization": "pagopa",<br>    "pipelines_path": ".devops",<br>    "yml_prefix_name": null<br>  }<br>}</pre> | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
