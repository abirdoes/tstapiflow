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
}