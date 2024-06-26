terraform {
  required_providers {
    azuredevops = {
      source = "microsoft/azuredevops"
      version = ">= 0.1.0"
    }
  }
}

provider "azuredevops" {
  org_service_url = "https://dev.azure.com/nadakhater"
  personal_access_token = "YOUR_PERSONAL_ACCESS_TOKEN"
}
