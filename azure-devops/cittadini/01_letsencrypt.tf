# create let's encrypt credential used to create SSL certificates
module "letsencrypt_dev" {
  source = "./.terraform/modules/__v3__/letsencrypt_credential"

  providers = {
    azurerm = azurerm.dev
  }

  prefix            = local.prefix
  env               = "d"
  key_vault_name    = local.dev_domain_kv_name
  subscription_name = data.azurerm_subscriptions.dev.subscriptions[0].display_name
}