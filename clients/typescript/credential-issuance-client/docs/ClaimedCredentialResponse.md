# ClaimedCredentialResponse

Response for getting the claimed VC

## Properties

| Name            | Type                                     | Description                              | Notes                             |
| --------------- | ---------------------------------------- | ---------------------------------------- | --------------------------------- |
| **credential**  | **{ [key: string]: any; }**              | claimed credential for a single issuance | [optional] [default to undefined] |
| **credentials** | **Array&lt;{ [key: string]: any; }&gt;** | claimed credentials for batch issuances  | [optional] [default to undefined] |

## Example

```typescript
import { ClaimedCredentialResponse } from '@affinidi-tdk/credential-issuance-client'

const instance: ClaimedCredentialResponse = {
  credential,
  credentials,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
