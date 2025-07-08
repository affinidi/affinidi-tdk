# IssuanceStateResponse

## Properties

| Name           | Type       | Description                                                                                                                                      | Notes                  |
| -------------- | ---------- | ------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------- |
| **issuanceId** | **string** | Website\&#39;s internal identifier. Website may use to get info about the status of issuance flow. If it is not provided, CIS will generate one. | [default to undefined] |
| **status**     | **string** | String describing the status of the issuance                                                                                                     | [default to undefined] |

## Example

```typescript
import { IssuanceStateResponse } from '@affinidi-tdk/credential-issuance-client'

const instance: IssuanceStateResponse = {
  issuanceId,
  status,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
