# BatchCredentialResponse

## Properties

| Name                     | Type                                                                                                                   | Description                | Notes                             |
| ------------------------ | ---------------------------------------------------------------------------------------------------------------------- | -------------------------- | --------------------------------- |
| **credential_responses** | [**Array&lt;BatchCredentialResponseCredentialResponsesInner&gt;**](BatchCredentialResponseCredentialResponsesInner.md) |                            | [default to undefined]            |
| **c_nonce**              | **string**                                                                                                             |                            | [optional] [default to undefined] |
| **c_nonce_expires_in**   | **number**                                                                                                             | Expiration time in seconds | [optional] [default to undefined] |

## Example

```typescript
import { BatchCredentialResponse } from '@affinidi-tdk/credential-issuance-client'

const instance: BatchCredentialResponse = {
  credential_responses,
  c_nonce,
  c_nonce_expires_in,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
