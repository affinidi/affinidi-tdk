# SignCredentialsDm1JwtInputDto

DTO contains params to sign credential

## Properties

| Name                   | Type        | Description                       | Notes                             |
| ---------------------- | ----------- | --------------------------------- | --------------------------------- |
| **unsignedCredential** | **object**  | Unsigned Credential in Dm1 format | [default to undefined]            |
| **revocable**          | **boolean** |                                   | [optional] [default to undefined] |

## Example

```typescript
import { SignCredentialsDm1JwtInputDto } from '@affinidi-tdk/wallets-client'

const instance: SignCredentialsDm1JwtInputDto = {
  unsignedCredential,
  revocable,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
