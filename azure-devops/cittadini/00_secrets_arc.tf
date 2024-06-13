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
    "${local.dev_aks_name}-apiserver-url"
  ]
}