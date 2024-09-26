# core

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.0 |
| <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) | ~> 1.3 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.116 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module___devops_v0__"></a> [\_\_devops\_v0\_\_](#module\_\_\_devops\_v0\_\_) | git::https://github.com/pagopa/azuredevops-tf-modules.git | 7e23d73d22e7b37352c25a32cc40f6f42b6569ea |
| <a name="module___v3__"></a> [\_\_v3\_\_](#module\_\_\_v3\_\_) | git::https://github.com/pagopa/terraform-azurerm-v3.git | ab2cf6a43414f2cc80a9e51332182c26ad970f72 |
| <a name="module_arc_dev_secrets"></a> [arc\_dev\_secrets](#module\_arc\_dev\_secrets) | ./.terraform/modules/__v3__/key_vault_secrets_query | n/a |
| <a name="module_arc_uat_secrets"></a> [arc\_uat\_secrets](#module\_arc\_uat\_secrets) | ./.terraform/modules/__v3__/key_vault_secrets_query | n/a |
| <a name="module_cittadini_be_deploy"></a> [cittadini\_be\_deploy](#module\_cittadini\_be\_deploy) | ./.terraform/modules/__devops_v0__/azuredevops_build_definition_generic | n/a |
| <a name="module_cittadini_fe_deploy"></a> [cittadini\_fe\_deploy](#module\_cittadini\_fe\_deploy) | ./.terraform/modules/__devops_v0__/azuredevops_build_definition_generic | n/a |
| <a name="module_dev_tls_cert_service_conn"></a> [dev\_tls\_cert\_service\_conn](#module\_dev\_tls\_cert\_service\_conn) | ./.terraform/modules/__devops_v0__/azuredevops_serviceendpoint_federated | n/a |
| <a name="module_e2e_test"></a> [e2e\_test](#module\_e2e\_test) | ./.terraform/modules/__devops_v0__/azuredevops_build_definition_generic | n/a |
| <a name="module_letsencrypt_dev"></a> [letsencrypt\_dev](#module\_letsencrypt\_dev) | ./.terraform/modules/__v3__/letsencrypt_credential | n/a |
| <a name="module_letsencrypt_uat"></a> [letsencrypt\_uat](#module\_letsencrypt\_uat) | ./.terraform/modules/__v3__/letsencrypt_credential | n/a |
| <a name="module_tlscert_citizen_internal_dev_cittadini_pagopa_it_cert_az"></a> [tlscert\_citizen\_internal\_dev\_cittadini\_pagopa\_it\_cert\_az](#module\_tlscert\_citizen\_internal\_dev\_cittadini\_pagopa\_it\_cert\_az) | ./.terraform/modules/__devops_v0__/azuredevops_build_definition_tls_cert_federated | n/a |
| <a name="module_tlscert_citizen_internal_uat_cittadini_pagopa_it_cert_az"></a> [tlscert\_citizen\_internal\_uat\_cittadini\_pagopa\_it\_cert\_az](#module\_tlscert\_citizen\_internal\_uat\_cittadini\_pagopa\_it\_cert\_az) | ./.terraform/modules/__devops_v0__/azuredevops_build_definition_tls_cert_federated | n/a |
| <a name="module_tlscert_dev_dev_cittadini_pagopa_it_cert_az"></a> [tlscert\_dev\_dev\_cittadini\_pagopa\_it\_cert\_az](#module\_tlscert\_dev\_dev\_cittadini\_pagopa\_it\_cert\_az) | ./.terraform/modules/__devops_v0__/azuredevops_build_definition_tls_cert_federated | n/a |
| <a name="module_tlscert_uat_uat_cittadini_pagopa_it_cert_az"></a> [tlscert\_uat\_uat\_cittadini\_pagopa\_it\_cert\_az](#module\_tlscert\_uat\_uat\_cittadini\_pagopa\_it\_cert\_az) | ./.terraform/modules/__devops_v0__/azuredevops_build_definition_tls_cert_federated | n/a |
| <a name="module_uat_tls_cert_service_conn"></a> [uat\_tls\_cert\_service\_conn](#module\_uat\_tls\_cert\_service\_conn) | ./.terraform/modules/__devops_v0__/azuredevops_serviceendpoint_federated | n/a |

## Resources

| Name | Type |
|------|------|
| [azuredevops_serviceendpoint_kubernetes.aks_dev](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/serviceendpoint_kubernetes) | resource |
| [azuredevops_serviceendpoint_kubernetes.aks_uat](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/serviceendpoint_kubernetes) | resource |
| [azurerm_key_vault_access_policy.dev_tls_cert_service_conn](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_access_policy) | resource |
| [azurerm_key_vault_access_policy.uat_tls_cert_service_conn](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_access_policy) | resource |
| [azuredevops_project.this](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/project) | data source |
| [azuredevops_serviceendpoint_azurecr.dev_azureacr_service_endpoint](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/serviceendpoint_azurecr) | data source |
| [azuredevops_serviceendpoint_azurecr.dev_ita_workload_identity](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/serviceendpoint_azurecr) | data source |
| [azuredevops_serviceendpoint_azurecr.prod_ita_workload_identity](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/serviceendpoint_azurecr) | data source |
| [azuredevops_serviceendpoint_azurecr.uat_azureacr_service_endpoint](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/serviceendpoint_azurecr) | data source |
| [azuredevops_serviceendpoint_azurecr.uat_ita_workload_identity](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/serviceendpoint_azurecr) | data source |
| [azuredevops_serviceendpoint_azurerm.dev_azurerm_service_conn](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/serviceendpoint_azurerm) | data source |
| [azuredevops_serviceendpoint_azurerm.uat_azurerm_service_conn](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/serviceendpoint_azurerm) | data source |
| [azuredevops_serviceendpoint_github.azure_devops_github_ro](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/serviceendpoint_github) | data source |
| [azuredevops_serviceendpoint_github.azure_devops_github_rw](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/serviceendpoint_github) | data source |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |
| [azurerm_key_vault.kv_domain_dev](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault) | data source |
| [azurerm_key_vault.kv_domain_uat](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault) | data source |
| [azurerm_subscriptions.dev](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscriptions) | data source |
| [azurerm_subscriptions.prod](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscriptions) | data source |
| [azurerm_subscriptions.uat](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscriptions) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acr_ita_service_connection_workload_identity_dev"></a> [acr\_ita\_service\_connection\_workload\_identity\_dev](#input\_acr\_ita\_service\_connection\_workload\_identity\_dev) | The service connection ID for the ITA DEV workload identity in Azure Container Registry | `string` | `""` | no |
| <a name="input_acr_ita_service_connection_workload_identity_prod"></a> [acr\_ita\_service\_connection\_workload\_identity\_prod](#input\_acr\_ita\_service\_connection\_workload\_identity\_prod) | The service connection ID for the ITA PROD workload identity in Azure Container Registry | `string` | `""` | no |
| <a name="input_acr_ita_service_connection_workload_identity_uat"></a> [acr\_ita\_service\_connection\_workload\_identity\_uat](#input\_acr\_ita\_service\_connection\_workload\_identity\_uat) | The service connection ID for the ITA UAT workload identity in Azure Container Registry | `string` | `""` | no |
| <a name="input_cittadini_be"></a> [cittadini\_be](#input\_cittadini\_be) | n/a | `map` | <pre>{<br>  "pipeline": {<br>    "enable_code_review": true,<br>    "enable_deploy": true,<br>    "path": "cittadini\\be"<br>  },<br>  "repository": {<br>    "branch_name": "refs/heads/main",<br>    "name": "arc-be",<br>    "organization": "pagopa",<br>    "pipelines_path": ".devops",<br>    "yml_prefix_name": null<br>  }<br>}</pre> | no |
| <a name="input_cittadini_fe"></a> [cittadini\_fe](#input\_cittadini\_fe) | n/a | `map` | <pre>{<br>  "pipeline": {<br>    "path": "cittadini\\fe"<br>  },<br>  "repository": {<br>    "branch_name": "refs/heads/main",<br>    "name": "arc-fe",<br>    "organization": "pagopa",<br>    "pipelines_path": ".devops",<br>    "yml_prefix_name": null<br>  }<br>}</pre> | no |
| <a name="input_e2e_test"></a> [e2e\_test](#input\_e2e\_test) | n/a | `map` | <pre>{<br>  "pipeline": {<br>    "path": "cittadini\\e2e-test"<br>  },<br>  "repository": {<br>    "branch_name": "refs/heads/main",<br>    "name": "arc-fe-e2e",<br>    "organization": "pagopa",<br>    "pipelines_path": ".devops",<br>    "yml_prefix_name": null<br>  }<br>}</pre> | no |
| <a name="input_tlscert_citizen_internal_dev_cittadini_pagopa_it"></a> [tlscert\_citizen\_internal\_dev\_cittadini\_pagopa\_it](#input\_tlscert\_citizen\_internal\_dev\_cittadini\_pagopa\_it) | n/a | `map` | <pre>{<br>  "pipeline": {<br>    "dns_record_name": "citizen.internal",<br>    "dns_zone_name": "dev.cittadini.pagopa.it",<br>    "dns_zone_resource_group": "arc-d-itn-core-vnet-rg",<br>    "enable_tls_cert": true,<br>    "path": "TLS-Certificates\\DEV",<br>    "variables": {},<br>    "variables_secret": {}<br>  }<br>}</pre> | no |
| <a name="input_tlscert_citizen_internal_uat_cittadini_pagopa_it"></a> [tlscert\_citizen\_internal\_uat\_cittadini\_pagopa\_it](#input\_tlscert\_citizen\_internal\_uat\_cittadini\_pagopa\_it) | n/a | `map` | <pre>{<br>  "pipeline": {<br>    "dns_record_name": "citizen.internal",<br>    "dns_zone_name": "uat.cittadini.pagopa.it",<br>    "dns_zone_resource_group": "arc-u-itn-core-vnet-rg",<br>    "enable_tls_cert": true,<br>    "path": "TLS-Certificates\\UAT",<br>    "variables": {},<br>    "variables_secret": {}<br>  }<br>}</pre> | no |
| <a name="input_tlscert_dev_dev_cittadini_pagopa_it"></a> [tlscert\_dev\_dev\_cittadini\_pagopa\_it](#input\_tlscert\_dev\_dev\_cittadini\_pagopa\_it) | n/a | `map` | <pre>{<br>  "pipeline": {<br>    "dns_record_name": "",<br>    "dns_zone_name": "dev.cittadini.pagopa.it",<br>    "dns_zone_resource_group": "arc-d-itn-core-vnet-rg",<br>    "enable_tls_cert": true,<br>    "path": "TLS-Certificates\\DEV",<br>    "variables": {},<br>    "variables_secret": {}<br>  }<br>}</pre> | no |
| <a name="input_tlscert_uat_uat_cittadini_pagopa_it"></a> [tlscert\_uat\_uat\_cittadini\_pagopa\_it](#input\_tlscert\_uat\_uat\_cittadini\_pagopa\_it) | n/a | `map` | <pre>{<br>  "pipeline": {<br>    "dns_record_name": "",<br>    "dns_zone_name": "uat.cittadini.pagopa.it",<br>    "dns_zone_resource_group": "arc-u-itn-core-vnet-rg",<br>    "enable_tls_cert": true,<br>    "path": "TLS-Certificates\\UAT",<br>    "variables": {},<br>    "variables_secret": {}<br>  }<br>}</pre> | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
