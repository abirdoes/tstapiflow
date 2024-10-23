terraform {
  required_version = "~> 1.8"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.107"
    }
    azapi = {
      source  = "Azure/azapi"
      version = "~> 1.13"
    }
  }
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "tstelz"

    workspaces {
      name = "tstelz2"
    }
  }
}


provider "azurerm" {
  features {}
  subscription_id = "a43ab6fc-dd26-4a56-a527-b073659b69da"
  tenant_id = "38742c59-8740-4045-a2f1-6c12589760f3"
}