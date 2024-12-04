terraform {

  required_version = ">=1.2"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.7.0"
    }
  }
  # Update this block with the location of your terraform state file
  backend "azurerm" {
    resource_group_name  = "rg-tf-backend"
    storage_account_name = "sbwstaccounttfbackend"
    container_name       = "terraform-state-github"
    key                  = "terraform-state-github"
    use_oidc             = true
  }
}

