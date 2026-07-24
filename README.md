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

The GCP bucket reference is configured for the existing Repello GCP test project. It
can become `Verified` after the matching GCP bucket is scanned. References to resources
that do not exist in connected cloud inventory should remain `Detected`.
