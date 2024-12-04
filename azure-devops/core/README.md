# core

<!-- BEGIN_TF_DOCS -->
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
| <a name="module___v3__"></a> [\_\_v3\_\_](#module\_\_\_v3\_\_) | git::https://github.com/pagopa/terraform-azurerm-v3.git | 8405da92a68ffc8267fed02a4689e55387299248 |
| <a name="module_dev_azurerm_service_conn"></a> [dev\_azurerm\_service\_conn](#module\_dev\_azurerm\_service\_conn) | ./.terraform/modules/__devops_v0__/azuredevops_serviceendpoint_federated | n/a |
| <a name="module_dev_tls_cert_service_conn"></a> [dev\_tls\_cert\_service\_conn](#module\_dev\_tls\_cert\_service\_conn) | ./.terraform/modules/__devops_v0__/azuredevops_serviceendpoint_federated | n/a |
| <a name="module_letsencrypt_dev"></a> [letsencrypt\_dev](#module\_letsencrypt\_dev) | ./.terraform/modules/__v3__/letsencrypt_credential | n/a |
| <a name="module_letsencrypt_prod"></a> [letsencrypt\_prod](#module\_letsencrypt\_prod) | ./.terraform/modules/__v3__/letsencrypt_credential | n/a |
| <a name="module_letsencrypt_uat"></a> [letsencrypt\_uat](#module\_letsencrypt\_uat) | ./.terraform/modules/__v3__/letsencrypt_credential | n/a |
| <a name="module_prod_azurerm_service_conn"></a> [prod\_azurerm\_service\_conn](#module\_prod\_azurerm\_service\_conn) | ./.terraform/modules/__devops_v0__/azuredevops_serviceendpoint_federated | n/a |
| <a name="module_prod_tls_cert_service_conn"></a> [prod\_tls\_cert\_service\_conn](#module\_prod\_tls\_cert\_service\_conn) | ./.terraform/modules/__devops_v0__/azuredevops_serviceendpoint_federated | n/a |
| <a name="module_secrets"></a> [secrets](#module\_secrets) | ./.terraform/modules/__v3__/key_vault_secrets_query | n/a |
| <a name="module_tlscert_argocd_internal_dev_cittadini_pagopa_it_cert_az"></a> [tlscert\_argocd\_internal\_dev\_cittadini\_pagopa\_it\_cert\_az](#module\_tlscert\_argocd\_internal\_dev\_cittadini\_pagopa\_it\_cert\_az) | ./.terraform/modules/__devops_v0__/azuredevops_build_definition_tls_cert_federated | n/a |
| <a name="module_tlscert_argocd_internal_prod_cittadini_pagopa_it_cert_az"></a> [tlscert\_argocd\_internal\_prod\_cittadini\_pagopa\_it\_cert\_az](#module\_tlscert\_argocd\_internal\_prod\_cittadini\_pagopa\_it\_cert\_az) | ./.terraform/modules/__devops_v0__/azuredevops_build_definition_tls_cert_federated | n/a |
| <a name="module_tlscert_argocd_internal_uat_cittadini_pagopa_it_cert_az"></a> [tlscert\_argocd\_internal\_uat\_cittadini\_pagopa\_it\_cert\_az](#module\_tlscert\_argocd\_internal\_uat\_cittadini\_pagopa\_it\_cert\_az) | ./.terraform/modules/__devops_v0__/azuredevops_build_definition_tls_cert_federated | n/a |
| <a name="module_tlscert_dev_api_dev_cittadini_pagopa_it_cert_az"></a> [tlscert\_dev\_api\_dev\_cittadini\_pagopa\_it\_cert\_az](#module\_tlscert\_dev\_api\_dev\_cittadini\_pagopa\_it\_cert\_az) | ./.terraform/modules/__devops_v0__/azuredevops_build_definition_tls_cert_federated | n/a |
| <a name="module_tlscert_dev_management_dev_cittadini_pagopa_it_cert_az"></a> [tlscert\_dev\_management\_dev\_cittadini\_pagopa\_it\_cert\_az](#module\_tlscert\_dev\_management\_dev\_cittadini\_pagopa\_it\_cert\_az) | ./.terraform/modules/__devops_v0__/azuredevops_build_definition_tls_cert_federated | n/a |
| <a name="module_tlscert_dev_portal_dev_cittadini_pagopa_it_cert_az"></a> [tlscert\_dev\_portal\_dev\_cittadini\_pagopa\_it\_cert\_az](#module\_tlscert\_dev\_portal\_dev\_cittadini\_pagopa\_it\_cert\_az) | ./.terraform/modules/__devops_v0__/azuredevops_build_definition_tls_cert_federated | n/a |
| <a name="module_tlscert_prod_api_prod_cittadini_pagopa_it_cert_az"></a> [tlscert\_prod\_api\_prod\_cittadini\_pagopa\_it\_cert\_az](#module\_tlscert\_prod\_api\_prod\_cittadini\_pagopa\_it\_cert\_az) | ./.terraform/modules/__devops_v0__/azuredevops_build_definition_tls_cert_federated | n/a |
| <a name="module_tlscert_prod_management_prod_cittadini_pagopa_it_cert_az"></a> [tlscert\_prod\_management\_prod\_cittadini\_pagopa\_it\_cert\_az](#module\_tlscert\_prod\_management\_prod\_cittadini\_pagopa\_it\_cert\_az) | ./.terraform/modules/__devops_v0__/azuredevops_build_definition_tls_cert_federated | n/a |
| <a name="module_tlscert_prod_portal_prod_cittadini_pagopa_it_cert_az"></a> [tlscert\_prod\_portal\_prod\_cittadini\_pagopa\_it\_cert\_az](#module\_tlscert\_prod\_portal\_prod\_cittadini\_pagopa\_it\_cert\_az) | ./.terraform/modules/__devops_v0__/azuredevops_build_definition_tls_cert_federated | n/a |
| <a name="module_tlscert_uat_api_uat_cittadini_pagopa_it_cert_az"></a> [tlscert\_uat\_api\_uat\_cittadini\_pagopa\_it\_cert\_az](#module\_tlscert\_uat\_api\_uat\_cittadini\_pagopa\_it\_cert\_az) | ./.terraform/modules/__devops_v0__/azuredevops_build_definition_tls_cert_federated | n/a |
| <a name="module_tlscert_uat_management_uat_cittadini_pagopa_it_cert_az"></a> [tlscert\_uat\_management\_uat\_cittadini\_pagopa\_it\_cert\_az](#module\_tlscert\_uat\_management\_uat\_cittadini\_pagopa\_it\_cert\_az) | ./.terraform/modules/__devops_v0__/azuredevops_build_definition_tls_cert_federated | n/a |
| <a name="module_tlscert_uat_portal_uat_cittadini_pagopa_it_cert_az"></a> [tlscert\_uat\_portal\_uat\_cittadini\_pagopa\_it\_cert\_az](#module\_tlscert\_uat\_portal\_uat\_cittadini\_pagopa\_it\_cert\_az) | ./.terraform/modules/__devops_v0__/azuredevops_build_definition_tls_cert_federated | n/a |
| <a name="module_uat_azurerm_service_conn"></a> [uat\_azurerm\_service\_conn](#module\_uat\_azurerm\_service\_conn) | ./.terraform/modules/__devops_v0__/azuredevops_serviceendpoint_federated | n/a |
| <a name="module_uat_tls_cert_service_conn"></a> [uat\_tls\_cert\_service\_conn](#module\_uat\_tls\_cert\_service\_conn) | ./.terraform/modules/__devops_v0__/azuredevops_serviceendpoint_federated | n/a |

## Resources

| Name | Type |
|------|------|
| [azuredevops_check_approval.check_approval_env_prod](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/check_approval) | resource |
| [azuredevops_environment.environments](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/environment) | resource |
| [azuredevops_project_features.project_features](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/project_features) | resource |
| [azuredevops_serviceendpoint_github.azure_devops_github_pr](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/serviceendpoint_github) | resource |
| [azuredevops_serviceendpoint_github.azure_devops_github_ro](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/serviceendpoint_github) | resource |
| [azuredevops_serviceendpoint_github.azure_devops_github_rw](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/serviceendpoint_github) | resource |
| [azuredevops_serviceendpoint_sonarcloud.sonarcloud](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/serviceendpoint_sonarcloud) | resource |
| [azurerm_key_vault_access_policy.dev_tls_cert_service_conn](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_access_policy) | resource |
| [azurerm_key_vault_access_policy.prod_tls_cert_service_conn](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_access_policy) | resource |
| [azurerm_key_vault_access_policy.uat_tls_cert_service_conn](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_access_policy) | resource |
| [azurerm_role_assignment.dev_azurerm](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.prod_azurerm](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.uat_azurerm](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azuredevops_group.admin](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/group) | data source |
| [azuredevops_project.this](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/project) | data source |
| [azuredevops_serviceendpoint_azurecr.dev_ita_workload_identity](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/serviceendpoint_azurecr) | data source |
| [azuredevops_serviceendpoint_azurecr.prod_ita_workload_identity](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/serviceendpoint_azurecr) | data source |
| [azuredevops_serviceendpoint_azurecr.uat_ita_workload_identity](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/serviceendpoint_azurecr) | data source |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |
| [azurerm_key_vault.kv_dev](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault) | data source |
| [azurerm_key_vault.kv_prod](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault) | data source |
| [azurerm_key_vault.kv_uat](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault) | data source |
| [azurerm_subscriptions.dev](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscriptions) | data source |
| [azurerm_subscriptions.prod](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscriptions) | data source |
| [azurerm_subscriptions.uat](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscriptions) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acr_ita_service_connection_workload_identity_dev"></a> [acr\_ita\_service\_connection\_workload\_identity\_dev](#input\_acr\_ita\_service\_connection\_workload\_identity\_dev) | The service connection ID for the ITA DEV workload identity in Azure Container Registry | `string` | `""` | no |
| <a name="input_acr_ita_service_connection_workload_identity_prod"></a> [acr\_ita\_service\_connection\_workload\_identity\_prod](#input\_acr\_ita\_service\_connection\_workload\_identity\_prod) | The service connection ID for the ITA PROD workload identity in Azure Container Registry | `string` | `""` | no |
| <a name="input_acr_ita_service_connection_workload_identity_uat"></a> [acr\_ita\_service\_connection\_workload\_identity\_uat](#input\_acr\_ita\_service\_connection\_workload\_identity\_uat) | The service connection ID for the ITA UAT workload identity in Azure Container Registry | `string` | `""` | no |
| <a name="input_tlscert_argocd_internal_dev_cittadini_pagopa_it"></a> [tlscert\_argocd\_internal\_dev\_cittadini\_pagopa\_it](#input\_tlscert\_argocd\_internal\_dev\_cittadini\_pagopa\_it) | n/a | `map` | <pre>{<br/>  "pipeline": {<br/>    "dns_record_name": "argocd.internal",<br/>    "dns_zone_name": "dev.cittadini.pagopa.it",<br/>    "dns_zone_resource_group": "arc-d-itn-core-vnet-rg",<br/>    "enable_tls_cert": true,<br/>    "path": "TLS-Certificates\\DEV",<br/>    "variables": {},<br/>    "variables_secret": {}<br/>  }<br/>}</pre> | no |
| <a name="input_tlscert_argocd_internal_prod_cittadini_pagopa_it"></a> [tlscert\_argocd\_internal\_prod\_cittadini\_pagopa\_it](#input\_tlscert\_argocd\_internal\_prod\_cittadini\_pagopa\_it) | n/a | `map` | <pre>{<br/>  "pipeline": {<br/>    "dns_record_name": "argocd.internal",<br/>    "dns_zone_name": "cittadini.pagopa.it",<br/>    "dns_zone_resource_group": "arc-p-itn-core-vnet-rg",<br/>    "enable_tls_cert": true,<br/>    "path": "TLS-Certificates\\PROD",<br/>    "variables": {},<br/>    "variables_secret": {}<br/>  }<br/>}</pre> | no |
| <a name="input_tlscert_argocd_internal_uat_cittadini_pagopa_it"></a> [tlscert\_argocd\_internal\_uat\_cittadini\_pagopa\_it](#input\_tlscert\_argocd\_internal\_uat\_cittadini\_pagopa\_it) | n/a | `map` | <pre>{<br/>  "pipeline": {<br/>    "dns_record_name": "argocd.internal",<br/>    "dns_zone_name": "uat.cittadini.pagopa.it",<br/>    "dns_zone_resource_group": "arc-u-itn-core-vnet-rg",<br/>    "enable_tls_cert": true,<br/>    "path": "TLS-Certificates\\UAT",<br/>    "variables": {},<br/>    "variables_secret": {}<br/>  }<br/>}</pre> | no |
| <a name="input_tlscert_dev_api_dev_cittadini_pagopa_it"></a> [tlscert\_dev\_api\_dev\_cittadini\_pagopa\_it](#input\_tlscert\_dev\_api\_dev\_cittadini\_pagopa\_it) | n/a | `map` | <pre>{<br/>  "pipeline": {<br/>    "dns_record_name": "api",<br/>    "dns_zone_name": "dev.cittadini.pagopa.it",<br/>    "dns_zone_resource_group": "arc-d-itn-core-vnet-rg",<br/>    "enable_tls_cert": true,<br/>    "path": "TLS-Certificates\\DEV",<br/>    "variables": {},<br/>    "variables_secret": {}<br/>  }<br/>}</pre> | no |
| <a name="input_tlscert_dev_management_dev_cittadini_pagopa_it"></a> [tlscert\_dev\_management\_dev\_cittadini\_pagopa\_it](#input\_tlscert\_dev\_management\_dev\_cittadini\_pagopa\_it) | n/a | `map` | <pre>{<br/>  "pipeline": {<br/>    "dns_record_name": "management",<br/>    "dns_zone_name": "dev.cittadini.pagopa.it",<br/>    "dns_zone_resource_group": "arc-d-itn-core-vnet-rg",<br/>    "enable_tls_cert": true,<br/>    "path": "TLS-Certificates\\DEV",<br/>    "variables": {},<br/>    "variables_secret": {}<br/>  }<br/>}</pre> | no |
| <a name="input_tlscert_dev_portal_dev_cittadini_pagopa_it"></a> [tlscert\_dev\_portal\_dev\_cittadini\_pagopa\_it](#input\_tlscert\_dev\_portal\_dev\_cittadini\_pagopa\_it) | n/a | `map` | <pre>{<br/>  "pipeline": {<br/>    "dns_record_name": "portal",<br/>    "dns_zone_name": "dev.cittadini.pagopa.it",<br/>    "dns_zone_resource_group": "arc-d-itn-core-vnet-rg",<br/>    "enable_tls_cert": true,<br/>    "path": "TLS-Certificates\\DEV",<br/>    "variables": {},<br/>    "variables_secret": {}<br/>  }<br/>}</pre> | no |
| <a name="input_tlscert_prod_api_prod_cittadini_pagopa_it"></a> [tlscert\_prod\_api\_prod\_cittadini\_pagopa\_it](#input\_tlscert\_prod\_api\_prod\_cittadini\_pagopa\_it) | n/a | `map` | <pre>{<br/>  "pipeline": {<br/>    "dns_record_name": "api",<br/>    "dns_zone_name": "cittadini.pagopa.it",<br/>    "dns_zone_resource_group": "arc-p-itn-core-vnet-rg",<br/>    "enable_tls_cert": true,<br/>    "path": "TLS-Certificates\\PROD",<br/>    "variables": {},<br/>    "variables_secret": {}<br/>  }<br/>}</pre> | no |
| <a name="input_tlscert_prod_management_prod_cittadini_pagopa_it"></a> [tlscert\_prod\_management\_prod\_cittadini\_pagopa\_it](#input\_tlscert\_prod\_management\_prod\_cittadini\_pagopa\_it) | n/a | `map` | <pre>{<br/>  "pipeline": {<br/>    "dns_record_name": "management",<br/>    "dns_zone_name": "cittadini.pagopa.it",<br/>    "dns_zone_resource_group": "arc-p-itn-core-vnet-rg",<br/>    "enable_tls_cert": true,<br/>    "path": "TLS-Certificates\\PROD",<br/>    "variables": {},<br/>    "variables_secret": {}<br/>  }<br/>}</pre> | no |
| <a name="input_tlscert_prod_portal_prod_cittadini_pagopa_it"></a> [tlscert\_prod\_portal\_prod\_cittadini\_pagopa\_it](#input\_tlscert\_prod\_portal\_prod\_cittadini\_pagopa\_it) | n/a | `map` | <pre>{<br/>  "pipeline": {<br/>    "dns_record_name": "portal",<br/>    "dns_zone_name": "cittadini.pagopa.it",<br/>    "dns_zone_resource_group": "arc-p-itn-core-vnet-rg",<br/>    "enable_tls_cert": true,<br/>    "path": "TLS-Certificates\\PROD",<br/>    "variables": {},<br/>    "variables_secret": {}<br/>  }<br/>}</pre> | no |
| <a name="input_tlscert_uat_api_uat_cittadini_pagopa_it"></a> [tlscert\_uat\_api\_uat\_cittadini\_pagopa\_it](#input\_tlscert\_uat\_api\_uat\_cittadini\_pagopa\_it) | n/a | `map` | <pre>{<br/>  "pipeline": {<br/>    "dns_record_name": "api",<br/>    "dns_zone_name": "uat.cittadini.pagopa.it",<br/>    "dns_zone_resource_group": "arc-u-itn-core-vnet-rg",<br/>    "enable_tls_cert": true,<br/>    "path": "TLS-Certificates\\UAT",<br/>    "variables": {},<br/>    "variables_secret": {}<br/>  }<br/>}</pre> | no |
| <a name="input_tlscert_uat_management_uat_cittadini_pagopa_it"></a> [tlscert\_uat\_management\_uat\_cittadini\_pagopa\_it](#input\_tlscert\_uat\_management\_uat\_cittadini\_pagopa\_it) | n/a | `map` | <pre>{<br/>  "pipeline": {<br/>    "dns_record_name": "management",<br/>    "dns_zone_name": "uat.cittadini.pagopa.it",<br/>    "dns_zone_resource_group": "arc-u-itn-core-vnet-rg",<br/>    "enable_tls_cert": true,<br/>    "path": "TLS-Certificates\\UAT",<br/>    "variables": {},<br/>    "variables_secret": {}<br/>  }<br/>}</pre> | no |
| <a name="input_tlscert_uat_portal_uat_cittadini_pagopa_it"></a> [tlscert\_uat\_portal\_uat\_cittadini\_pagopa\_it](#input\_tlscert\_uat\_portal\_uat\_cittadini\_pagopa\_it) | n/a | `map` | <pre>{<br/>  "pipeline": {<br/>    "dns_record_name": "portal",<br/>    "dns_zone_name": "uat.cittadini.pagopa.it",<br/>    "dns_zone_resource_group": "arc-u-itn-core-vnet-rg",<br/>    "enable_tls_cert": true,<br/>    "path": "TLS-Certificates\\UAT",<br/>    "variables": {},<br/>    "variables_secret": {}<br/>  }<br/>}</pre> | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
