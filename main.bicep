
param storageSKU string = 'Standard_LRS'

param location string = resourceGroup().location



resource stg 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: 'abh86786'
  location: location
  sku: {
    name: storageSKU
  }
  kind: 'StorageV2'
  properties: {
    supportsHttpsTrafficOnly: true
  }
}

output storageEndpoint object = stg.properties.primaryEndpoints
