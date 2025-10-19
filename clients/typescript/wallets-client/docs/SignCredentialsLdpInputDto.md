# SignCredentialsLdpInputDto

DTO contains params to sign credential

## Properties

| Name                   | Type        | Description                       | Notes                             |
| ---------------------- | ----------- | --------------------------------- | --------------------------------- |
| **unsignedCredential** | **object**  | Unsigned Credential in Dm2 format | [default to undefined]            |
| **revocable**          | **boolean** |                                   | [optional] [default to undefined] |
| **signatureScheme**    | **string**  |                                   | [optional] [default to undefined] |

## Example

```typescript
import { SignCredentialsLdpInputDto } from '@affinidi-tdk/wallets-client'

const instance: SignCredentialsLdpInputDto = {
  unsignedCredential,
  revocable,
  signatureScheme,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
