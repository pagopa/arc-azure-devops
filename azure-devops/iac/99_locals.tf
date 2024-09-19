locals {
  prefix = "arc"

  dev_subscription_name  = "dev-${local.prefix}"
  uat_subscription_name  = "uat-${local.prefix}"
  prod_subscription_name = "prod-${local.prefix}"

  dev_identity_rg_name  = "${local.prefix}-d-itn-core-identity-rg"
  uat_identity_rg_name  = "${local.prefix}-u-itn-core-identity-rg"
  prod_identity_rg_name = "${local.prefix}-p-itn-core-identity-rg"

  prod_key_vault_resource_group = "${local.prefix}-p-itn-core-sec-rg"
  prod_key_vault_azdo_name      = "${local.prefix}-p-itn-core-kv"

  # Service connections/ End points
  srv_endpoint_github_ro = "io-azure-devops-github-ro"
  srv_endpoint_github_rw = "io-azure-devops-github-rw"
  srv_endpoint_github_pr = "io-azure-devops-github-pr"

  aks_dev_platform_name  = "arc-d-itn-dev-aks"
  aks_uat_platform_name  = "arc-u-itn-uat-aks"
  aks_prod_platform_name = "arc-p-itn-prod-aks"

  domains = [
    {
      name : "cittadini",
      envs : ["d", "u"],
      kv_name : "arc-%s-itn-cittadini-kv",
      rg_name : "arc-%s-itn-cittadini-sec-rg",
      code_review : true,
      deploy : true,
      pipeline_prefix : "cittadini-infra",
      pipeline_path : "cittadini-infrastructure",
      repository : {
        yml_prefix_name : "cittadini"
      }
    },
    {
      name : "networking",
      envs : ["d", "u"],
      kv_name : "",
      rg_name : "",
      code_review : true,
      deploy : true,
      pipeline_prefix : "networking-infra",
      pipeline_path : "networking-infrastructure",
      repository : {
        yml_prefix_name : "networking"
      }
    },
    {
      name : "security",
      envs : ["d", "u"],
      kv_name : "",
      rg_name : "",
      code_review : true,
      deploy : true,
      pipeline_prefix : "security-infra",
      pipeline_path : "security-infrastructure",
      repository : {
        yml_prefix_name : "security"
      }
    },
    {
      name : "packer",
      envs : ["d", "u"],
      kv_name : "",
      rg_name : "",
      code_review : true,
      deploy : true,
      pipeline_prefix : "packer-infra",
      pipeline_path : "packer-infrastructure",
      repository : {
        yml_prefix_name : "packer"
      }
    },
    {
      name : "core",
      envs : ["d", "u"],
      kv_name : "",
      rg_name : "",
      code_review : true,
      deploy : true,
      pipeline_prefix : "core-infra",
      pipeline_path : "core-infrastructure",
      repository : {
        yml_prefix_name : "core"
      }
    }
  ]

  domain_variables = {
    cittadini = {
      iac_variables_cr : {},
      iac_variables_secrets_cr : {},
      iac_variables_deploy : {},
      iac_variables_secrets_deploy : {}
    }
  }

}