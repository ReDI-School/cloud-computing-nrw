param storageAccountName string = 'mystor241024'
var locationname = 'germanywestcentral'

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: storageAccountName
  location: locationname
  kind: 'StorageV2'
  sku: {
    name: 'Premium_LRS'
  }
  properties: {
    allowSharedKeyAccess: false
  }
}
