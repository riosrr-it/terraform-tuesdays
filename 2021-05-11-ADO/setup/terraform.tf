terraform {
  required_providers {
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = ">=0.1.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.0"

    }

    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }

  }
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "UTHealthSA"

    workspaces {
      name = "AzureDevOps-Setup"
    }
  }
}