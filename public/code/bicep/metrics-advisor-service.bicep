resource symbolicname 'Microsoft.CognitiveServices/accounts@2023-05-01' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  sku: {
    capacity: int
    family: 'string'
    name: 'string'
    size: 'string'
    tier: 'string'
  }
  kind: 'string'
  identity: {
    type: 'string'
    userAssignedIdentities: {}
  }
  properties: {
    allowedFqdnList: [
      'string'
    ]
    apiProperties: {
      aadClientId: 'string'
      aadTenantId: 'string'
      eventHubConnectionString: 'string'
      qnaAzureSearchEndpointId: 'string'
      qnaAzureSearchEndpointKey: 'string'
      qnaRuntimeEndpoint: 'string'
      statisticsEnabled: bool
      storageAccountConnectionString: 'string'
      superUser: 'string'
      websiteName: 'string'
    }
    customSubDomainName: 'string'
    disableLocalAuth: bool
    dynamicThrottlingEnabled: bool
    encryption: {
      keySource: 'string'
      keyVaultProperties: {
        identityClientId: 'string'
        keyName: 'string'
        keyVaultUri: 'string'
        keyVersion: 'string'
      }
    }
    locations: {
      regions: [
        {
          customsubdomain: 'string'
          name: 'string'
          value: int
        }
      ]
      routingMethod: 'string'
    }
    migrationToken: 'string'
    networkAcls: {
      defaultAction: 'string'
      ipRules: [
        {
          value: 'string'
        }
      ]
      virtualNetworkRules: [
        {
          id: 'string'
          ignoreMissingVnetServiceEndpoint: bool
          state: 'string'
        }
      ]
    }
    publicNetworkAccess: 'string'
    restore: bool
    restrictOutboundNetworkAccess: bool
    userOwnedStorage: [
      {
        identityClientId: 'string'
        resourceId: 'string'
      }
    ]
  }
}
