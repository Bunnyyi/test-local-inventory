resource "google_storage_bucket" "inventory_test" {
  name     = "repello-gcp-inventory-test-forward-dream-501807-j3"
  project  = "forward-dream-501807-j3"
  location = "US"
}

variable "aws_sagemaker_execution_role_arn" {
  type = string
}

variable "aws_sagemaker_image_uri" {
  type = string
}

variable "azure_cognitive_account_id" {
  type = string
}

resource "azurerm_cognitive_deployment" "inference" {
  name                 = "repello-multicloud-openai-deployment"
  cognitive_account_id = var.azure_cognitive_account_id

  model {
    format  = "OpenAI"
    name    = "gpt-5-mini"
    version = "2025-08-07"
  }

  sku {
    name     = "Standard"
    capacity = 1
  }
}

resource "aws_sagemaker_model" "inference_proxy" {
  name               = "repello-multicloud-model"
  execution_role_arn = var.aws_sagemaker_execution_role_arn

  primary_container {
    image = var.aws_sagemaker_image_uri
    environment = {
      AZURE_OPENAI_DEPLOYMENT = azurerm_cognitive_deployment.inference.name
      GCP_RESULTS_BUCKET       = google_storage_bucket.inventory_test.name
    }
  }
}
