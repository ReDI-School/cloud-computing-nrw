# Terraform saves a state in a file
# State mismatches are corrected. This can mean deletions as well
resource "azapi_resource" "storageaccount" {
  type      = "Microsoft.Storage/storageAccounts@2021-02-01"
  parent_id = "/subscriptions/b1a72f88-1277-48f5-9084-34ab73c9dccf/resourceGroups/rg-gerw-storage"
  name      = var.storageAccountName
  location  = "germanywestcentral"
  body = {
    kind = "StorageV2"
    sku = {
      name = "Premium_LRS"
    }
    properties = {
      allowSharedKeyAccess = false
    }
  }
}

variable "storageAccountName" {
  default     = "mystor24102401"
  description = "Storage Account name"
  type        = string
}

terraform {
  required_providers {
    azapi = {
      source  = "Azure/azapi"
      version = "2.0.1"
    }
  }
}

provider "azapi" {
  # Configuration options
  use_cli = true
}
