#PROD KEYVAULT
module "secrets" {
  source = "./.terraform/modules/__v3__/key_vault_secrets_query"

  providers = {
    azurerm = azurerm.prod
  }

  resource_group = local.prod_core_kv_resource_group
  key_vault_name = local.prod_core_kv_name

  secrets = [
    "azure-devops-github-ro-TOKEN",
    "azure-devops-github-rw-TOKEN",
    "azure-devops-github-pr-TOKEN",
    "sonar-cloud-token"
  ]
}
