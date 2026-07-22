# Inventory Code Integration Test

This repository contains static SDK examples for testing Repello Inventory's
connector-native code-to-cloud discovery. The examples are scanned as source code;
they are not intended to be executed and contain no credentials.

## Expected Evidence

- GCP Cloud Storage bucket access
- GCP Vertex AI Gemini model usage
- AWS S3 bucket access
- Azure Blob Storage account usage
- JavaScript AWS S3 usage

The GCP bucket reference is configured for the existing Repello GCP test project. It
can become `Verified` after the matching GCP bucket is scanned. References to resources
that do not exist in connected cloud inventory should remain `Detected`.

