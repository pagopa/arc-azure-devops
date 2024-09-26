locals {
  prefix                = "arc"
  domain                = "cittadini"
  location_short        = "itn"
  location_service_conn = "westeurope"

  product = "${local.prefix}-${local.domain}"

  # ⚙️ DevOps
  devops_project_id      = data.azuredevops_project.this.project_id
  pipeline_environments  = ["DEV", "UAT", "PROD"]
  srv_endpoint_github_id = data.azuredevops_serviceendpoint_github.azure_devops_github_rw.id

  # 🟢 DEV
  dev_subscription_name        = "dev-${local.prefix}"
  dev_domain_kv_name           = "${local.prefix}-d-${local.location_short}-${local.domain}-kv"
  dev_domain_kv_resource_group = "${local.prefix}-d-${local.location_short}-${local.domain}-sec-rg"
  dev_aks_name                 = "${local.prefix}-d-${local.location_short}-dev-aks"
  dev_azurecr_name             = "${local.prefix}d${local.location_short}corecommonacr"
  dev_azdo_agent_pool          = "${local.prefix}-dev-linux-app"

  dev_srv_endpoint_aks_name                 = "${local.prefix}-${local.domain}-aks-dev"
  dev_srv_endpoint_azure_devops_docker_name = data.azuredevops_serviceendpoint_azurecr.dev_ita_workload_identity.service_endpoint_name
  dev_srv_endpoint_aks_id                   = azuredevops_serviceendpoint_kubernetes.aks_dev.id
  dev_srv_endpoint_azure_devops_docker_id   = data.azuredevops_serviceendpoint_azurecr.dev_azureacr_service_endpoint.id
  dev_srv_endpoint_azure_id                 = data.azuredevops_serviceendpoint_azurerm.dev_azurerm_service_conn.id
  dev_srv_endpoint_tls_id                   = module.dev_tls_cert_service_conn.service_endpoint_id

  dev_identity_rg_name            = "${local.prefix}-d-${local.location_short}-core-identity-rg"
  dev_workload_identity_client_id = module.arc_dev_secrets.values["cittadini-workload-identity-client-id"].value

  dev_apim_prefix_domain     = "https://api.dev.cittadini.pagopa.it"
  dev_storage_account_rg     = "${local.prefix}-d-${local.location_short}-${local.domain}-cdn-rg"
  dev_storage_account_name   = replace("${local.prefix}-d-${local.domain}-sa", "-", "")
  dev_cdn_profile            = "${local.prefix}-d-${local.domain}-cdn-profile"
  dev_cdn_endpoint           = "${local.prefix}-d-${local.domain}-cdn-endpoint"
  dev_checkout_prefix_domain = "https://dev.checkout.pagopa.it"
  dev_checkout_platform_url  = "https://api.dev.platform.pagopa.it/checkout/ec/v1"
  dev_payment_return_url     = "https://dev.cittadini.pagopa.it/pagamenti"

  # 🟨 UAT
  uat_subscription_name        = "uat-${local.prefix}"
  uat_domain_kv_name           = "${local.prefix}-u-${local.location_short}-${local.domain}-kv"
  uat_domain_kv_resource_group = "${local.prefix}-u-${local.location_short}-${local.domain}-sec-rg"
  uat_aks_name                 = "${local.prefix}-u-${local.location_short}-uat-aks"
  uat_azurecr_name             = "${local.prefix}u${local.location_short}corecommonacr"
  uat_azdo_agent_pool          = "${local.prefix}-uat-linux-app"

  uat_srv_endpoint_aks_name                 = "${local.prefix}-${local.domain}-aks-uat"
  uat_srv_endpoint_azure_devops_docker_name = data.azuredevops_serviceendpoint_azurecr.uat_ita_workload_identity.service_endpoint_name
  uat_srv_endpoint_aks_id                   = azuredevops_serviceendpoint_kubernetes.aks_dev.id
  uat_srv_endpoint_azure_devops_docker_id   = data.azuredevops_serviceendpoint_azurecr.uat_ita_workload_identity.id
  uat_srv_endpoint_azure_id                 = data.azuredevops_serviceendpoint_azurerm.uat_azurerm_service_conn.id
  uat_srv_endpoint_tls_id                   = module.uat_tls_cert_service_conn.service_endpoint_id

  uat_identity_rg_name            = "${local.prefix}-u-${local.location_short}-core-identity-rg"
  uat_workload_identity_client_id = module.arc_uat_secrets.values["cittadini-workload-identity-client-id"].value

  uat_apim_prefix_domain     = "https://api.uat.cittadini.pagopa.it"
  uat_storage_account_rg     = "${local.prefix}-u-${local.location_short}-${local.domain}-cdn-rg"
  uat_storage_account_name   = replace("${local.prefix}-u-${local.domain}-sa", "-", "")
  uat_cdn_profile            = "${local.prefix}-u-${local.domain}-cdn-profile"
  uat_cdn_endpoint           = "${local.prefix}-u-${local.domain}-cdn-endpoint"
  uat_checkout_prefix_domain = "https://uat.checkout.pagopa.it"
  uat_checkout_platform_url  = "https://api.uat.platform.pagopa.it/checkout/ec/v1"
  uat_payment_return_url     = "https://uat.cittadini.pagopa.it/pagamenti"

  # 🛑 PROD
  prod_subscription_name      = "prod-${local.prefix}"
  prod_core_kv_name           = "${local.prefix}-p-${local.location_short}-core-kv"
  prod_core_kv_resource_group = "${local.prefix}-p-${local.location_short}-core-sec-rg"
  prod_srv_endpoint_name_aks  = "${local.prefix}-${local.domain}-aks-prod"

  prod_checkout_prefix_domain = "https://checkout.pagopa.it"
  prod_checkout_platform_url  = "https://api.platform.pagopa.it/checkout/ec/v1"
}

# LOCAL TLS CERT
locals {
  tlscert_repository = {
    organization   = "pagopa"
    name           = "le-azure-acme-tiny"
    branch_name    = "refs/heads/master"
    pipelines_path = "."
  }
}
