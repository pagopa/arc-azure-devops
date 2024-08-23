locals {
  prefix                = "arc"
  domain                = "core"
  location_short        = "itn"
  location_service_conn = "westeurope"

  # ⚙️ DevOps
  devops_project_id     = data.azuredevops_project.this.project_id
  pipeline_environments = ["DEV", "UAT", "PROD"]

  # 🟢 DEV
  dev_subscription_name = "dev-${local.prefix}"
  dev_subscription_id   = data.azurerm_subscriptions.dev.subscriptions[0].subscription_id

  dev_core_kv_name           = "${local.prefix}-d-${local.location_short}-${local.domain}-kv"
  dev_core_kv_resource_group = "${local.prefix}-d-${local.location_short}-${local.domain}-sec-rg"

  dev_srv_endpoint_azure_devops_docker_name = "${local.prefix}-azurecr-dev"
  dev_docker_registry_rg_name               = "${local.prefix}-d-${local.location_short}-${local.domain}-container-registry-rg"
  dev_docker_registry_name                  = "${local.prefix}d${local.location_short}${local.domain}commonacr"

  dev_identity_rg_name = "${local.prefix}-d-${local.location_short}-${local.domain}-identity-rg"

  dev_dns_zone_name = "dev.cittadini-p4pa.pagopa.it"

  # 🟨 UAT
  uat_subscription_name = "uat-${local.prefix}"
  uat_subscription_id   = data.azurerm_subscriptions.uat.subscriptions[0].subscription_id

  uat_core_kv_name           = "${local.prefix}-u-${local.location_short}-${local.domain}-kv"
  uat_core_kv_resource_group = "${local.prefix}-u-${local.location_short}-${local.domain}-sec-rg"

  uat_srv_endpoint_azure_devops_docker_name = "${local.prefix}-azurecr-uat"
  uat_docker_registry_rg_name               = "${local.prefix}-u-${local.location_short}-${local.domain}-container-registry-rg"
  uat_docker_registry_name                  = "${local.prefix}u${local.location_short}${local.domain}commonacr"

  uat_identity_rg_name = "${local.prefix}-u-${local.location_short}-${local.domain}-identity-rg"

  uat_dns_zone_name = "uat.cittadini.pagopa.it"

  # 🛑 PROD
  prod_subscription_name = "prod-${local.prefix}"

  prod_core_kv_name           = "${local.prefix}-p-${local.location_short}-${local.domain}-kv"
  prod_core_kv_resource_group = "${local.prefix}-p-${local.location_short}-${local.domain}-sec-rg"
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