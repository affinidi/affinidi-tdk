# UpdateWalletKeyInput

Input for updating an existing wallet key. Only supported for did:web wallets.

## Properties

| Name              | Type                                                                     | Description                            | Notes                             |
| ----------------- | ------------------------------------------------------------------------ | -------------------------------------- | --------------------------------- |
| **relationships** | [**Array&lt;VerificationRelationship&gt;**](VerificationRelationship.md) | verification relationships for the key | [optional] [default to undefined] |

## Example

```typescript
import { UpdateWalletKeyInput } from '@affinidi-tdk/wallets-client'

const instance: UpdateWalletKeyInput = {
  relationships,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
