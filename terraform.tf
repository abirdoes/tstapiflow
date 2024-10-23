terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~> 3.107"
    }
  }
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "tstelz"
    workspaces {
      name = "tstapiflow"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}