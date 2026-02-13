# WalletV2DtoKeysInner

## Properties

| Name              | Type       | Description                                              | Notes                             |
| ----------------- | ---------- | -------------------------------------------------------- | --------------------------------- |
| **keyId**         | **string** | wallet-scoped key identifier (e.g., \&quot;key-1\&quot;) | [default to undefined]            |
| **kmsKeyId**      | **string** | id of the key in KMS                                     | [default to undefined]            |
| **kmsKeyAri**     | **string** | ari of the key in KMS                                    | [default to undefined]            |
| **kmsKeyType**    | **string** | type of the key in KMS                                   | [default to undefined]            |
| **relationships** | **string** | comma separated relationships                            | [optional] [default to undefined] |

## Example

```typescript
import { WalletV2DtoKeysInner } from '@affinidi-tdk/wallets-client'

const instance: WalletV2DtoKeysInner = {
  keyId,
  kmsKeyId,
  kmsKeyAri,
  kmsKeyType,
  relationships,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
