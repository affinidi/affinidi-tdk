# SignJwtV2InputDto

DTO contains payload of JWT to be signed

## Properties

| Name        | Type       | Description                                                              | Notes                             |
| ----------- | ---------- | ------------------------------------------------------------------------ | --------------------------------- |
| **payload** | **object** |                                                                          | [default to undefined]            |
| **keyId**   | **string** | wallet key ID to use for signing (defaults to wallet\&#39;s default key) | [optional] [default to undefined] |

## Example

```typescript
import { SignJwtV2InputDto } from '@affinidi-tdk/wallets-client'

const instance: SignJwtV2InputDto = {
  payload,
  keyId,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
