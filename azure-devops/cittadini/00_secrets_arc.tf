#
# 🟢 DEV - SECRET
#

module "arc_dev_secrets" {
  providers = {
    azurerm = azurerm.dev
  }

  source = "./.terraform/modules/__v3__/key_vault_secrets_query"

  resource_group = local.dev_domain_kv_resource_group
  key_vault_name = local.dev_domain_kv_name

  secrets = [
    "${local.dev_aks_name}-azure-devops-sa-token",
    "${local.dev_aks_name}-azure-devops-sa-cacrt",
    "${local.dev_aks_name}-apiserver-url",
    "testing-username",
    "testing-password",
    "cittadini-workload-identity-client-id",
    "argocd-admin-password",
    "argocd-admin-username",
    "argocd-server-url"
  ]
}

#
# 🟨 UAT - SECRETS
#

module "arc_uat_secrets" {
  providers = {
    azurerm = azurerm.uat
  }

  source = "./.terraform/modules/__v3__/key_vault_secrets_query"

  resource_group = local.uat_domain_kv_resource_group
  key_vault_name = local.uat_domain_kv_name

  secrets = [
    "${local.uat_aks_name}-azure-devops-sa-token",
    "${local.uat_aks_name}-azure-devops-sa-cacrt",
    "${local.uat_aks_name}-apiserver-url",
    "cittadini-workload-identity-client-id",
    "argocd-admin-password",
    "argocd-admin-username",
    "argocd-server-url"
  ]
}

#
# 🛑 PROD - SECRETS
#

module "arc_prod_secrets" {
  providers = {
    azurerm = azurerm.prod
  }

  source = "./.terraform/modules/__v3__/key_vault_secrets_query"

  resource_group = local.prod_domain_kv_resource_group
  key_vault_name = local.prod_domain_kv_name

  secrets = [
    "${local.prod_aks_name}-azure-devops-sa-token",
    "${local.prod_aks_name}-azure-devops-sa-cacrt",
    "${local.prod_aks_name}-apiserver-url",
    "cittadini-workload-identity-client-id",
    "argocd-admin-password",
    "argocd-admin-username",
    "argocd-server-url"
  ]
}
