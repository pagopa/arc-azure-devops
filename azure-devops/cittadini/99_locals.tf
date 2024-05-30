locals {
  prefix                = "arc"
  domain                = "cittadini"
  location_short        = "itn"
  location_service_conn = "westeurope"
  product               = "${local.prefix}-${local.domain}"

  uat_subscription_name  = "uat-${local.prefix}"
  prod_subscription_name = "prod-${local.prefix}"

  prod_core_kv_name           = "${local.prefix}-p-${local.location_short}-${local.domain}-kv"
  prod_core_kv_resource_group = "${local.prefix}-p-${local.location_short}-${local.domain}-sec-rg"

  # ⚙️ DevOps
  devops_project_id     = data.azuredevops_project.this.project_id
  pipeline_environments = ["DEV", "UAT", "PROD"]

  ###
  # 🟢 DEV
  ###
  dev_subscription_name = "dev-${local.prefix}"

  # 🔐 KV
  dev_core_kv_name           = "${local.prefix}-d-${local.location_short}-${local.domain}-kv"
  dev_core_kv_resource_group = "${local.prefix}-d-${local.location_short}-${local.domain}-sec-rg"

  # 🆔 IAM
  dev_identity_rg_name = "${local.prefix}-d-${local.location_short}-${local.domain}-identity-rg"

  # 🌎 CDN
  dev_storage_account_rg   = "${local.prefix}-d-${local.location_short}-${local.domain}-cdn-rg"
  dev_storage_account_name = replace("${local.prefix}-d-${local.domain}-sa", "-", "")
  dev_cdn_profile          = "${local.prefix}-d-${local.domain}-cdn-profile"
  dev_cdn_endpoint         = "${local.prefix}-d-${local.domain}-cdn-endpoint"
}