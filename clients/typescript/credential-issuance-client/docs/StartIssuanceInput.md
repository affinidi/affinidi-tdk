# StartIssuanceInput

## Properties

| Name           | Type                                                                           | Description                                                                                                                                                                                                                                                                                                                  | Notes                             |
| -------------- | ------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------- |
| **claimMode**  | **string**                                                                     | In TX_CODE claim mode, additional transaction code will be generated and the Authorization Server expects presentation of the transaction Code by the end-user. If FIXED_HOLDER claim mode is defined, holderDid must be present and service will not generate additional transaction code (NORMAL claimMode is deprecated). | [optional] [default to undefined] |
| **holderDid**  | **string**                                                                     | Holder DID                                                                                                                                                                                                                                                                                                                   | [optional] [default to undefined] |
| **issuanceId** | **string**                                                                     | Website\&#39;s internal identifier. Website may use to get info about the status of issuance flow. If it is not provided, CIS will generate one.                                                                                                                                                                             | [optional] [default to undefined] |
| **data**       | [**Array&lt;StartIssuanceInputDataInner&gt;**](StartIssuanceInputDataInner.md) |                                                                                                                                                                                                                                                                                                                              | [default to undefined]            |

## Example

```typescript
import { StartIssuanceInput } from '@affinidi-tdk/credential-issuance-client'

const instance: StartIssuanceInput = {
  claimMode,
  holderDid,
  issuanceId,
  data,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
