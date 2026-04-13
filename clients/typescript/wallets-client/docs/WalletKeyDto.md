# WalletKeyDto

Detailed information about a wallet key. Multiple keys are only supported for did:web wallets.

## Properties

| Name              | Type                                                                     | Description                                                  | Notes                             |
| ----------------- | ------------------------------------------------------------------------ | ------------------------------------------------------------ | --------------------------------- |
| **keyId**         | **string**                                                               | wallet-scoped key identifier (e.g., \&quot;key-1\&quot;)     | [optional] [default to undefined] |
| **keyType**       | **string**                                                               | cryptographic algorithm used by this key                     | [optional] [default to undefined] |
| **keyAri**        | **string**                                                               | ARI identifier for the key (e.g., \&quot;ari:key:...\&quot;) | [optional] [default to undefined] |
| **relationships** | [**Array&lt;VerificationRelationship&gt;**](VerificationRelationship.md) | verification relationships this key supports                 | [optional] [default to undefined] |

## Example

```typescript
import { WalletKeyDto } from '@affinidi-tdk/wallets-client'

const instance: WalletKeyDto = {
  keyId,
  keyType,
  keyAri,
  relationships,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
