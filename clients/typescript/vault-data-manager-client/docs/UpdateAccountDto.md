# UpdateAccountDto

## Properties

| Name             | Type       | Description                                            | Notes                             |
| ---------------- | ---------- | ------------------------------------------------------ | --------------------------------- |
| **accountIndex** | **number** |                                                        | [default to undefined]            |
| **accountDid**   | **string** | Profile DID that is associated with the account number | [default to undefined]            |
| **metadata**     | **object** |                                                        | [optional] [default to undefined] |

## Example

```typescript
import { UpdateAccountDto } from '@affinidi-tdk/vault-data-manager-client'

const instance: UpdateAccountDto = {
  accountIndex,
  accountDid,
  metadata,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
