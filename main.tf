
provider "azurerm" {
  features {}
  use_oidc = true
}

resource "azurerm_resource_group" "default" {
  name     = "container-registry-rg"
  location = "East US 2"

  tags = {
    environment = "Production"
  }
}

