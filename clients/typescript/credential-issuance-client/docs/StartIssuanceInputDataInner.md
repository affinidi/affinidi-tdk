# StartIssuanceInputDataInner

Data to be included in issued credential

## Properties

| Name                  | Type                                                                                                                       | Description                                                                                                                                                  | Notes                             |
| --------------------- | -------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------ | --------------------------------- |
| **credentialTypeId**  | **string**                                                                                                                 | It is a String that identifies a Credential that is being requested to be issued.                                                                            | [default to undefined]            |
| **credentialData**    | **{ [key: string]: any; }**                                                                                                | Object of data to be included in the issued credential ,should match the credential type                                                                     | [default to undefined]            |
| **statusListDetails** | [**Array&lt;StartIssuanceInputDataInnerStatusListDetailsInner&gt;**](StartIssuanceInputDataInnerStatusListDetailsInner.md) | Types of status lists to which the credential should be added once issued. If not provided or empty, the credential is not added to any of the status lists. | [optional] [default to undefined] |
| **metaData**          | [**StartIssuanceInputDataInnerMetaData**](StartIssuanceInputDataInnerMetaData.md)                                          |                                                                                                                                                              | [optional] [default to undefined] |

## Example

```typescript
import { StartIssuanceInputDataInner } from '@affinidi-tdk/credential-issuance-client'

const instance: StartIssuanceInputDataInner = {
  credentialTypeId,
  credentialData,
  statusListDetails,
  metaData,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
