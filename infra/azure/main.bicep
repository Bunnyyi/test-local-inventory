resource inventoryOpenAI 'Microsoft.CognitiveServices/accounts@2023-05-01' = {
  name: 'repello-iac-bicep-openai'
  location: 'eastus'
  kind: 'OpenAI'
  sku: {
    name: 'S0'
  }
  properties: {}
}
