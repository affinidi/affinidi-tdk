# FlowData

## Properties

| Name                                       | Type                                                                                   | Description                                                                                                                                                            | Notes                             |
| ------------------------------------------ | -------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------- |
| **createdAt**                              | **string**                                                                             | [GEN] ISO 8601 string of the creation date/time the entity                                                                                                             | [default to undefined]            |
| **modifiedAt**                             | **string**                                                                             | [GEN] ISO 8601 string of the modification date/time the entity                                                                                                         | [default to undefined]            |
| **id**                                     | **string**                                                                             |                                                                                                                                                                        | [default to undefined]            |
| **projectId**                              | **string**                                                                             |                                                                                                                                                                        | [optional] [default to undefined] |
| **flowId**                                 | **string**                                                                             |                                                                                                                                                                        | [default to undefined]            |
| **credentialTypeId**                       | **string**                                                                             |                                                                                                                                                                        | [default to undefined]            |
| **jsonLdContextUrl**                       | **string**                                                                             |                                                                                                                                                                        | [default to undefined]            |
| **jsonSchemaUrl**                          | **string**                                                                             |                                                                                                                                                                        | [default to undefined]            |
| **configurationId**                        | **string**                                                                             | Id of configuration, used to issue VC.                                                                                                                                 | [optional] [default to undefined] |
| **issuedAt**                               | **string**                                                                             | when credential was issued to the holder (holder invoked generateCredentials endpoint)                                                                                 | [optional] [default to undefined] |
| **walletId**                               | **string**                                                                             | Id of wallet, used to issue VC.                                                                                                                                        | [optional] [default to undefined] |
| **projectIdConfigurationId**               | **string**                                                                             | Id of configuration with which VC was issued. To use as an index, it is grouped together with projectId, as \&quot;{projectIdConfigurationId}#{configurationId}\&quot; | [optional] [default to undefined] |
| **projectIdConfigurationIdWalletId**       | **string**                                                                             | Id of wallet which issued VC. To use as an index, it is grouped together with projectId, as \&quot;{projectIdConfigurationId}#{walletId}\&quot;                        | [optional] [default to undefined] |
| **projectIdConfigurationIdCredentialType** | **string**                                                                             | VC.type value. To use as an index, it is grouped together with projectId, as \&quot;{projectIdConfigurationId}#{credentialType}\&quot;                                 | [optional] [default to undefined] |
| **statusListsDetails**                     | [**Array&lt;FlowDataStatusListsDetailsInner&gt;**](FlowDataStatusListsDetailsInner.md) |                                                                                                                                                                        | [optional] [default to undefined] |

## Example

```typescript
import { FlowData } from '@affinidi-tdk/credential-issuance-client'

const instance: FlowData = {
  createdAt,
  modifiedAt,
  id,
  projectId,
  flowId,
  credentialTypeId,
  jsonLdContextUrl,
  jsonSchemaUrl,
  configurationId,
  issuedAt,
  walletId,
  projectIdConfigurationId,
  projectIdConfigurationIdWalletId,
  projectIdConfigurationIdCredentialType,
  statusListsDetails,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
