# Inventory Code Integration Test

This repository contains static SDK and Infrastructure-as-Code examples for testing
Repello Inventory's connector-native code-to-cloud discovery. The examples are
scanned as source files; they are not intended to be executed and contain no
credentials.

## Expected Evidence

- GCP Cloud Storage bucket access
- GCP Vertex AI Gemini model usage
- AWS S3 bucket access
- Azure Blob Storage account usage
- JavaScript AWS S3 usage
- Terraform HCL and Terraform JSON declarations
- CloudFormation YAML and JSON declarations
- SAM YAML and JSON declarations
- Azure Bicep declarations
- GCP Config Connector resources
- AWS ACK resources
- Azure Service Operator resources
- An Azure OpenAI deployment attached to an Azure Cognitive Services account
- An AWS SageMaker model with explicit Terraform dependencies on an Azure OpenAI
  deployment and a GCP bucket

The GCP bucket reference is configured for the existing Repello GCP test project. It
can become `Verified` after the matching GCP bucket is scanned. References to resources
that do not exist in connected cloud inventory should remain `Detected`.

When matching AWS, Azure, and GCP connectors are scanned, the Inventory graph should
show:

```text
repello-inventory-openai-14244 -> repello-multicloud-openai-deployment
repello-sagemaker-model-test -> repello-multicloud-openai-deployment
repello-sagemaker-model-test -> repello-gcp-inventory-test-forward-dream-501807-j3
```

The source explicitly declares all three dependencies. The Azure connector also reports
the first relationship from the live account and deployment; the latter two are
materialized as cross-cloud relationships after all referenced assets are verified.
Merely declaring resources from several providers in the same repository does not
create a dependency.

Use the Azure deployment as the graph root when comparing views. `All` should include
its Azure account relationship, while `Multi-cloud` should retain only relationships
whose verified endpoints belong to different cloud providers. Repository, file, and IaC
nodes remain visible as relationship evidence in both views.
