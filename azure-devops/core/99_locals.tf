locals {
  prefix                = "arc"
  domain                = "core"
  location_short        = "itn"
  location_service_conn = "westeurope"

  dev_subscription_name  = "dev-${local.prefix}"
  uat_subscription_name  = "uat-${local.prefix}"
  prod_subscription_name = "prod-${local.prefix}"

  # 🔐 KV
  dev_core_kv_name  = "${local.prefix}-d-${local.location_short}-${local.domain}-kv"
  prod_core_kv_name = "${local.prefix}-p-${local.location_short}-${local.domain}-kv"

  dev_core_kv_resource_group  = "${local.prefix}-d-${local.location_short}-${local.domain}-sec-rg"
  prod_core_kv_resource_group = "${local.prefix}-p-${local.location_short}-${local.domain}-sec-rg"

  # ⚙️ DevOps
  devops_project_id     = data.azuredevops_project.this.project_id
  pipeline_environments = ["DEV", "UAT", "PROD"]

  # 🆔
  dev_identity_rg_name = "${local.prefix}-d-${local.location_short}-${local.domain}-identity-rg"

  # 📦 ACR DEV DOCKER
  srv_endpoint_name_docker_registry_dev = "${local.prefix}-azurecr-dev"
  docker_registry_rg_name_dev           = "${local.prefix}-d-${local.location_short}-${local.domain}-container-registry-rg"
  docker_registry_name_dev              = "${local.prefix}d${local.location_short}${local.domain}commonacr"

}