# core

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) |  <= 1.8.5 |
| <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) | <= 1.11.1 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | <= 3.107.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module___devops_v0__"></a> [\_\_devops\_v0\_\_](#module\_\_\_devops\_v0\_\_) | git::https://github.com/pagopa/azuredevops-tf-modules.git | 7a19400902abf7f58d1af6cb7e34ef83dba5cf68 |
| <a name="module___v3__"></a> [\_\_v3\_\_](#module\_\_\_v3\_\_) | git::https://github.com/pagopa/terraform-azurerm-v3.git | fc90227d77e86531ad7a8889bdbc2c406f12c66a |
| <a name="module_arc_dev_secrets"></a> [arc\_dev\_secrets](#module\_arc\_dev\_secrets) | ./.terraform/modules/__v3__/key_vault_secrets_query | n/a |
| <a name="module_cittadini_be_deploy"></a> [cittadini\_be\_deploy](#module\_cittadini\_be\_deploy) | ./.terraform/modules/__devops_v0__/azuredevops_build_definition_generic | n/a |
| <a name="module_cittadini_fe_deploy"></a> [cittadini\_fe\_deploy](#module\_cittadini\_fe\_deploy) | ./.terraform/modules/__devops_v0__/azuredevops_build_definition_generic | n/a |
| <a name="module_dev_tls_cert_service_conn"></a> [dev\_tls\_cert\_service\_conn](#module\_dev\_tls\_cert\_service\_conn) | ./.terraform/modules/__devops_v0__/azuredevops_serviceendpoint_federated | n/a |
| <a name="module_letsencrypt_dev"></a> [letsencrypt\_dev](#module\_letsencrypt\_dev) | ./.terraform/modules/__v3__/letsencrypt_credential | n/a |
| <a name="module_tlscert_citizen_internal_dev_cittadini_p4pa_pagopa_it_cert_az"></a> [tlscert\_citizen\_internal\_dev\_cittadini\_p4pa\_pagopa\_it\_cert\_az](#module\_tlscert\_citizen\_internal\_dev\_cittadini\_p4pa\_pagopa\_it\_cert\_az) | ./.terraform/modules/__devops_v0__/azuredevops_build_definition_tls_cert_federated | n/a |

## Resources

| Name | Type |
|------|------|
| [azuredevops_serviceendpoint_kubernetes.aks_dev](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/serviceendpoint_kubernetes) | resource |
| [azurerm_key_vault_access_policy.dev_tls_cert_service_conn](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_access_policy) | resource |
| [azuredevops_project.this](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/project) | data source |
| [azuredevops_serviceendpoint_azurecr.dev_azureacr_service_endpoint](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/serviceendpoint_azurecr) | data source |
| [azuredevops_serviceendpoint_azurerm.dev_azurerm_service_conn](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/serviceendpoint_azurerm) | data source |
| [azuredevops_serviceendpoint_github.azure_devops_github_ro](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/serviceendpoint_github) | data source |
| [azuredevops_serviceendpoint_github.azure_devops_github_rw](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/serviceendpoint_github) | data source |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |
| [azurerm_key_vault.kv_domain_dev](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault) | data source |
| [azurerm_subscriptions.dev](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscriptions) | data source |
| [azurerm_subscriptions.prod](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscriptions) | data source |
| [azurerm_subscriptions.uat](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscriptions) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cittadini_be"></a> [cittadini\_be](#input\_cittadini\_be) | n/a | `map` | <pre>{<br>  "pipeline": {<br>    "enable_code_review": true,<br>    "enable_deploy": true,<br>    "path": "cittadini\\be"<br>  },<br>  "repository": {<br>    "branch_name": "refs/heads/main",<br>    "name": "pagopa-arc-be",<br>    "organization": "pagopa",<br>    "pipelines_path": ".devops",<br>    "yml_prefix_name": null<br>  }<br>}</pre> | no |
| <a name="input_cittadini_fe"></a> [cittadini\_fe](#input\_cittadini\_fe) | n/a | `map` | <pre>{<br>  "pipeline": {<br>    "path": "cittadini\\fe"<br>  },<br>  "repository": {<br>    "branch_name": "refs/heads/main",<br>    "name": "pagopa-arc-fe",<br>    "organization": "pagopa",<br>    "pipelines_path": ".devops",<br>    "yml_prefix_name": null<br>  }<br>}</pre> | no |
| <a name="input_tlscert_citizen_internal_dev_cittadini_p4pa_pagopa_it"></a> [tlscert\_citizen\_internal\_dev\_cittadini\_p4pa\_pagopa\_it](#input\_tlscert\_citizen\_internal\_dev\_cittadini\_p4pa\_pagopa\_it) | n/a | `map` | <pre>{<br>  "pipeline": {<br>    "dns_record_name": "citizen.internal",<br>    "dns_zone_name": "dev.cittadini-p4pa.pagopa.it",<br>    "dns_zone_resource_group": "arc-d-itn-core-vnet-rg",<br>    "enable_tls_cert": true,<br>    "path": "TLS-Certificates\\DEV",<br>    "variables": {<br>      "CERT_NAME_EXPIRE_SECONDS": "2592000",<br>      "KEY_VAULT_NAME": "arc-d-itn-cittadini-kv"<br>    },<br>    "variables_secret": {}<br>  },<br>  "repository": {<br>    "branch_name": "refs/heads/master",<br>    "name": "le-azure-acme-tiny",<br>    "organization": "pagopa",<br>    "pipelines_path": "."<br>  }<br>}</pre> | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
