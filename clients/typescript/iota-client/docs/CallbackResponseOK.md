# CallbackResponseOK

## Properties

| Name              | Type       | Description                                                                                                                              | Notes                             |
| ----------------- | ---------- | ---------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------- |
| **redirect_uri**  | **string** | The URL to which Affinidi Vault will redirect the user.                                                                                  | [optional] [default to undefined] |
| **response_code** | **string** | A unique identifier to fetch the callback response data. Send this value together with the transactionId to successfully fetch the data. | [optional] [default to undefined] |
| **message**       | **string** | A message to the Affinidi Vault indicating that the update was successful.                                                               | [default to undefined]            |

## Example

```typescript
import { CallbackResponseOK } from '@affinidi-tdk/iota-client'

const instance: CallbackResponseOK = {
  redirect_uri,
  response_code,
  message,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
