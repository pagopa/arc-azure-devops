terraform {
  required_version = " <= 1.8.5"
  required_providers {
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = "<= 1.11.1"
    }
    azurerm = {
      version = "<= 3.107.0"
    }
  }
  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = false
    }
  }
  alias           = "dev"
  subscription_id = data.azurerm_subscriptions.dev.subscriptions[0].subscription_id
}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = false
    }
  }
  alias           = "uat"
  subscription_id = data.azurerm_subscriptions.uat.subscriptions[0].subscription_id
}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = false
    }
  }
  alias           = "prod"
  subscription_id = data.azurerm_subscriptions.prod.subscriptions[0].subscription_id
}

module "__v3__" {
  # https://github.com/pagopa/terraform-azurerm-v3/releases/tag/v8.21.0
  source = "git::https://github.com/pagopa/terraform-azurerm-v3.git?ref=fdb0738ca6a652df3ff161c9cb5be92f7728ed9b"
}

module "__devops_v0__" {
  # https://github.com/pagopa/azuredevops-tf-modules/releases/tag/v9.0.0
  source = "git::https://github.com/pagopa/azuredevops-tf-modules.git?ref=7a19400902abf7f58d1af6cb7e34ef83dba5cf68"
}