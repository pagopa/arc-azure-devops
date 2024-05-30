# core

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.0 |
| <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) | ~> 0.10.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | <= 3.92.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module___devops_v0__"></a> [\_\_devops\_v0\_\_](#module\_\_\_devops\_v0\_\_) | git::https://github.com/pagopa/azuredevops-tf-modules.git | a70536de3f132276290707af6ebdaa26ce38f994 |
| <a name="module___v3__"></a> [\_\_v3\_\_](#module\_\_\_v3\_\_) | git::https://github.com/pagopa/terraform-azurerm-v3.git | 84273af26316260741fe9c1d741c2cc831c1c8af |
| <a name="module_dev_azurerm_service_conn"></a> [dev\_azurerm\_service\_conn](#module\_dev\_azurerm\_service\_conn) | ./.terraform/modules/__devops_v0__/azuredevops_serviceendpoint_federated | n/a |
| <a name="module_dev_tls_cert_service_conn"></a> [dev\_tls\_cert\_service\_conn](#module\_dev\_tls\_cert\_service\_conn) | ./.terraform/modules/__devops_v0__/azuredevops_serviceendpoint_federated | n/a |
| <a name="module_letsencrypt_dev"></a> [letsencrypt\_dev](#module\_letsencrypt\_dev) | ./.terraform/modules/__v3__/letsencrypt_credential | n/a |
| <a name="module_secrets"></a> [secrets](#module\_secrets) | ./.terraform/modules/__v3__/key_vault_secrets_query | n/a |
| <a name="module_tlscert_dev_api_dev_platform_pagopa_it_cert_az"></a> [tlscert\_dev\_api\_dev\_platform\_pagopa\_it\_cert\_az](#module\_tlscert\_dev\_api\_dev\_platform\_pagopa\_it\_cert\_az) | ./.terraform/modules/__devops_v0__/azuredevops_build_definition_tls_cert_federated | n/a |
| <a name="module_tlscert_dev_dev_cittadini_p4pa_pagopa_it_cert_az"></a> [tlscert\_dev\_dev\_cittadini\_p4pa\_pagopa\_it\_cert\_az](#module\_tlscert\_dev\_dev\_cittadini\_p4pa\_pagopa\_it\_cert\_az) | ./.terraform/modules/__devops_v0__/azuredevops_build_definition_tls_cert_federated | n/a |
| <a name="module_tlscert_dev_management_dev_platform_pagopa_it_cert_az"></a> [tlscert\_dev\_management\_dev\_platform\_pagopa\_it\_cert\_az](#module\_tlscert\_dev\_management\_dev\_platform\_pagopa\_it\_cert\_az) | ./.terraform/modules/__devops_v0__/azuredevops_build_definition_tls_cert_federated | n/a |
| <a name="module_tlscert_dev_portal_dev_platform_pagopa_it_cert_az"></a> [tlscert\_dev\_portal\_dev\_platform\_pagopa\_it\_cert\_az](#module\_tlscert\_dev\_portal\_dev\_platform\_pagopa\_it\_cert\_az) | ./.terraform/modules/__devops_v0__/azuredevops_build_definition_tls_cert_federated | n/a |

## Resources

| Name | Type |
|------|------|
| [azuredevops_environment.environments](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/environment) | resource |
| [azuredevops_serviceendpoint_github.azure_devops_github_pr](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/serviceendpoint_github) | resource |
| [azuredevops_serviceendpoint_github.azure_devops_github_ro](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/serviceendpoint_github) | resource |
| [azuredevops_serviceendpoint_github.azure_devops_github_rw](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/serviceendpoint_github) | resource |
| [azuredevops_serviceendpoint_sonarcloud.sonarcloud](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/serviceendpoint_sonarcloud) | resource |
| [azurerm_key_vault_access_policy.dev_tls_cert_service_conn](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_access_policy) | resource |
| [azurerm_role_assignment.dev_azurerm](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azuredevops_project.this](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/project) | data source |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |
| [azurerm_key_vault.kv_dev](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault) | data source |
| [azurerm_subscriptions.dev](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscriptions) | data source |
| [azurerm_subscriptions.prod](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscriptions) | data source |
| [azurerm_subscriptions.uat](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscriptions) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_tlscert_dev_api_dev_cittadini_p4pa_pagopa_it"></a> [tlscert\_dev\_api\_dev\_cittadini\_p4pa\_pagopa\_it](#input\_tlscert\_dev\_api\_dev\_cittadini\_p4pa\_pagopa\_it) | n/a | `map` | <pre>{<br>  "pipeline": {<br>    "dns_record_name": "api",<br>    "dns_zone_name": "dev.cittadini-p4pa.pagopa.it",<br>    "dns_zone_resource_group": "arc-d-itn-core-vnet-rg",<br>    "enable_tls_cert": true,<br>    "path": "TLS-Certificates\\DEV",<br>    "variables": {<br>      "CERT_NAME_EXPIRE_SECONDS": "2592000",<br>      "KEY_VAULT_NAME": "arc-d-itn-core-kv"<br>    },<br>    "variables_secret": {}<br>  },<br>  "repository": {<br>    "branch_name": "refs/heads/master",<br>    "name": "le-azure-acme-tiny",<br>    "organization": "pagopa",<br>    "pipelines_path": "."<br>  }<br>}</pre> | no |
| <a name="input_tlscert_dev_dev_cittadini_p4pa_pagopa_it"></a> [tlscert\_dev\_dev\_cittadini\_p4pa\_pagopa\_it](#input\_tlscert\_dev\_dev\_cittadini\_p4pa\_pagopa\_it) | n/a | `map` | <pre>{<br>  "pipeline": {<br>    "dns_record_name": "",<br>    "dns_zone_name": "dev.cittadini-p4pa.pagopa.it",<br>    "dns_zone_resource_group": "arc-d-itn-core-vnet-rg",<br>    "enable_tls_cert": true,<br>    "path": "TLS-Certificates\\DEV",<br>    "variables": {<br>      "CERT_NAME_EXPIRE_SECONDS": "2592000",<br>      "KEY_VAULT_NAME": "arc-d-itn-core-kv"<br>    },<br>    "variables_secret": {}<br>  },<br>  "repository": {<br>    "branch_name": "refs/heads/master",<br>    "name": "le-azure-acme-tiny",<br>    "organization": "pagopa",<br>    "pipelines_path": "."<br>  }<br>}</pre> | no |
| <a name="input_tlscert_dev_management_dev_cittadini_p4pa_pagopa_it"></a> [tlscert\_dev\_management\_dev\_cittadini\_p4pa\_pagopa\_it](#input\_tlscert\_dev\_management\_dev\_cittadini\_p4pa\_pagopa\_it) | n/a | `map` | <pre>{<br>  "pipeline": {<br>    "dns_record_name": "management",<br>    "dns_zone_name": "dev.cittadini-p4pa.pagopa.it",<br>    "dns_zone_resource_group": "arc-d-itn-core-vnet-rg",<br>    "enable_tls_cert": true,<br>    "path": "TLS-Certificates\\DEV",<br>    "variables": {<br>      "CERT_NAME_EXPIRE_SECONDS": "2592000",<br>      "KEY_VAULT_NAME": "arc-d-itn-core-kv"<br>    },<br>    "variables_secret": {}<br>  },<br>  "repository": {<br>    "branch_name": "refs/heads/master",<br>    "name": "le-azure-acme-tiny",<br>    "organization": "pagopa",<br>    "pipelines_path": "."<br>  }<br>}</pre> | no |
| <a name="input_tlscert_dev_portal_dev_cittadini_p4pa_pagopa_it"></a> [tlscert\_dev\_portal\_dev\_cittadini\_p4pa\_pagopa\_it](#input\_tlscert\_dev\_portal\_dev\_cittadini\_p4pa\_pagopa\_it) | n/a | `map` | <pre>{<br>  "pipeline": {<br>    "dns_record_name": "portal",<br>    "dns_zone_name": "dev.cittadini-p4pa.pagopa.it",<br>    "dns_zone_resource_group": "arc-d-itn-core-vnet-rg",<br>    "enable_tls_cert": true,<br>    "path": "TLS-Certificates\\DEV",<br>    "variables": {<br>      "CERT_NAME_EXPIRE_SECONDS": "2592000",<br>      "KEY_VAULT_NAME": "arc-d-itn-core-kv"<br>    },<br>    "variables_secret": {}<br>  },<br>  "repository": {<br>    "branch_name": "refs/heads/master",<br>    "name": "le-azure-acme-tiny",<br>    "organization": "pagopa",<br>    "pipelines_path": "."<br>  }<br>}</pre> | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
