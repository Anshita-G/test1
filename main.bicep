@minLength(3)
@maxLength(11)


@allowed([
  'Premium_LRS'
  'Premium_ZRS'
])

param storageSKU string = 'Premium_ZRS'

param location string = resourceGroup().location

var uniqueStorageName = 'abhay98098'

resource stg 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: uniqueStorageName
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
