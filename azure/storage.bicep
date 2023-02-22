@description('Specifies the location for resources.')
param location string = 'UK South'

resource storage 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: 'testbicepstorageacc'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  location: location
}
