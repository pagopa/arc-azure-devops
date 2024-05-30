terraform {
  required_version = ">= 1.6.0"
  required_providers {
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = "~> 0.10.0"
    }
    azurerm = {
      version = "~> 3.90"
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
  # https://github.com/pagopa/terraform-azurerm-v3/releases/tag/v8.18.0
  source = "git::https://github.com/pagopa/terraform-azurerm-v3.git?ref=8d21a675f3f12e5c217c76ea7786a47c64d939b7"
}

module "__devops_v0__" {
  # https://github.com/pagopa/azuredevops-tf-modules/releases/tag/v8.0.0
  source = "git::https://github.com/pagopa/azuredevops-tf-modules.git?ref=fa340ca0929348edf276a9247840c67aece70a78"
}