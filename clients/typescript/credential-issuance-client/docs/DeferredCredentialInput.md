# DeferredCredentialInput

## Properties

| Name               | Type       | Description                                                                                                                                                          | Notes                  |
| ------------------ | ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------- |
| **transaction_id** | **string** | String identifying a Deferred Issuance transaction. This claim is contained in the response if the Credential Issuer was unable to immediately issue the Credential. | [default to undefined] |

## Example

```typescript
import { DeferredCredentialInput } from '@affinidi-tdk/credential-issuance-client'

const instance: DeferredCredentialInput = {
  transaction_id,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
