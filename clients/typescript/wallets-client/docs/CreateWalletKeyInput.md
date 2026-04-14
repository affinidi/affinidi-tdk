# CreateWalletKeyInput

Input for adding a new key to a wallet. Only supported for did:web ATM.

## Properties

| Name              | Type                                                                     | Description                             | Notes                  |
| ----------------- | ------------------------------------------------------------------------ | --------------------------------------- | ---------------------- |
| **keyType**       | **string**                                                               | cryptographic algorithm for the new key | [default to undefined] |
| **relationships** | [**Array&lt;VerificationRelationship&gt;**](VerificationRelationship.md) | verification relationships for the key. | [default to undefined] |

## Example

```typescript
import { CreateWalletKeyInput } from '@affinidi-tdk/wallets-client'

const instance: CreateWalletKeyInput = {
  keyType,
  relationships,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
