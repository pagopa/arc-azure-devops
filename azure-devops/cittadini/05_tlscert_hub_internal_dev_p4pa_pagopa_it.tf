variable "tlscert_citizien_internal_dev_cittadini_p4pa_pagopa_it" {
  default = {
    repository = {
      organization   = "pagopa"
      name           = "le-azure-acme-tiny"
      branch_name    = "refs/heads/master"
      pipelines_path = "."
    }
    pipeline = {
      enable_tls_cert         = true
      path                    = "TLS-Certificates\\DEV"
      dns_record_name         = "citizien.internal"
      dns_zone_name           = "dev.cittadini-p4pa.pagopa.it"
      dns_zone_resource_group = "arc-d-itn-core-vnet-rg"
      # common variables to all pipelines
      variables = {
        CERT_NAME_EXPIRE_SECONDS = "2592000" #30 days
        KEY_VAULT_NAME           = "arc-d-itn-cittadini-kv"
      }
      # common secret variables to all pipelines
      variables_secret = {
      }
    }
  }
}

locals {
  tlscert_citizien_internal_dev_cittadini_p4pa_pagopa_it = {
    tenant_id         = data.azurerm_client_config.current.tenant_id
    subscription_name = data.azurerm_subscriptions.dev.subscriptions[0].display_name
    subscription_id   = data.azurerm_subscriptions.dev.subscriptions[0].subscription_id
  }
  tlscert_citizien_internal_dev_cittadini_p4pa_pagopa_it_variables = {
    KEY_VAULT_SERVICE_CONNECTION = module.dev_tls_cert_service_conn.service_endpoint_name
  }
  tlscert_citizien_internal_dev_cittadini_p4pa_pagopa_it_variables_secret = {
  }
}

module "tlscert_citizien_internal_dev_cittadini_p4pa_pagopa_it_cert_az" {
  source = "./.terraform/modules/__devops_v0__/azuredevops_build_definition_tls_cert_federated"
  count  = var.tlscert_citizien_internal_dev_cittadini_p4pa_pagopa_it.pipeline.enable_tls_cert == true ? 1 : 0

  providers = {
    azurerm = azurerm.dev
  }

  project_id = local.devops_project_id
  repository = var.tlscert_citizien_internal_dev_cittadini_p4pa_pagopa_it.repository
  #tfsec:ignore:GEN003
  path                         = var.tlscert_citizien_internal_dev_cittadini_p4pa_pagopa_it.pipeline.path
  github_service_connection_id = local.dev_srv_endpoint_github_id

  dns_record_name                      = var.tlscert_citizien_internal_dev_cittadini_p4pa_pagopa_it.pipeline.dns_record_name
  dns_zone_name                        = var.tlscert_citizien_internal_dev_cittadini_p4pa_pagopa_it.pipeline.dns_zone_name
  dns_zone_resource_group              = var.tlscert_citizien_internal_dev_cittadini_p4pa_pagopa_it.pipeline.dns_zone_resource_group
  tenant_id                            = local.tlscert_citizien_internal_dev_cittadini_p4pa_pagopa_it.tenant_id
  subscription_name                    = local.tlscert_citizien_internal_dev_cittadini_p4pa_pagopa_it.subscription_name
  subscription_id                      = local.tlscert_citizien_internal_dev_cittadini_p4pa_pagopa_it.subscription_id
  managed_identity_resource_group_name = local.dev_identity_rg_name

  location                            = local.location_service_conn
  credential_key_vault_name           = local.dev_domain_kv_name
  credential_key_vault_resource_group = local.dev_domain_kv_resource_group

  variables = merge(
    var.tlscert_citizien_internal_dev_cittadini_p4pa_pagopa_it.pipeline.variables,
    local.tlscert_citizien_internal_dev_cittadini_p4pa_pagopa_it_variables
  )

  variables_secret = merge(
    var.tlscert_citizien_internal_dev_cittadini_p4pa_pagopa_it.pipeline.variables_secret,
    local.tlscert_citizien_internal_dev_cittadini_p4pa_pagopa_it_variables_secret
  )

  service_connection_ids_authorization = [
    module.dev_tls_cert_service_conn.service_endpoint_id
  ]

  schedules = {
    days_to_build              = ["Fri"]
    schedule_only_with_changes = false
    start_hours                = 3
    start_minutes              = 0
    time_zone                  = "(UTC+01:00) Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna"
    branch_filter = {
      include = ["master"]
      exclude = []
    }
  }
}
