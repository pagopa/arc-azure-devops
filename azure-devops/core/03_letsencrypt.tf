# create let's encrypt credential used to create SSL certificates
# 🟢 DEV
module "letsencrypt_dev" {
  source = "./.terraform/modules/__v3__/letsencrypt_credential"

  providers = {
    azurerm = azurerm.dev
  }

  prefix            = local.prefix
  env               = "d"
  key_vault_name    = local.dev_core_kv_name
  subscription_name = data.azurerm_subscriptions.dev.subscriptions[0].display_name
}

# 🟨 UAT
module "letsencrypt_uat" {
  source = "./.terraform/modules/__v3__/letsencrypt_credential"

  providers = {
    azurerm = azurerm.uat
  }

  prefix            = local.prefix
  env               = "u"
  key_vault_name    = local.uat_core_kv_name
  subscription_name = data.azurerm_subscriptions.uat.subscriptions[0].display_name
}