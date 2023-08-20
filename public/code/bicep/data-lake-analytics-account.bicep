resource symbolicname 'Microsoft.DataLakeAnalytics/accounts@2019-11-01-preview' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  properties: {
    computePolicies: [
      {
        name: 'string'
        properties: {
          maxDegreeOfParallelismPerJob: int
          minPriorityPerJob: int
          objectId: 'string'
          objectType: 'string'
        }
      }
    ]
    dataLakeStoreAccounts: [
      {
        name: 'string'
        properties: {
          suffix: 'string'
        }
      }
    ]
    defaultDataLakeStoreAccount: 'string'
    firewallAllowAzureIps: 'string'
    firewallRules: [
      {
        name: 'string'
        properties: {
          endIpAddress: 'string'
          startIpAddress: 'string'
        }
      }
    ]
    firewallState: 'string'
    maxDegreeOfParallelism: int
    maxDegreeOfParallelismPerJob: int
    maxJobCount: int
    minPriorityPerJob: int
    newTier: 'string'
    queryStoreRetention: int
    storageAccounts: [
      {
        name: 'string'
        properties: {
          accessKey: 'string'
          suffix: 'string'
        }
      }
    ]
  }
}
