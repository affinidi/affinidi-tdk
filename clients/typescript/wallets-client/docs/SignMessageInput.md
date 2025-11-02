# SignMessageInput

DTO contains params to sign plain text DIDComm message

## Properties

| Name                 | Type       | Description                         | Notes                             |
| -------------------- | ---------- | ----------------------------------- | --------------------------------- |
| **plainTextMessage** | **object** | Unsigned plain text DIDComm message | [default to undefined]            |
| **signatureScheme**  | **string** |                                     | [optional] [default to undefined] |

## Example

```typescript
import { SignMessageInput } from '@affinidi-tdk/wallets-client'

const instance: SignMessageInput = {
  plainTextMessage,
  signatureScheme,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
