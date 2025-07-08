# SignCredentialsDm2LdInputDto

DTO contains params to sign credential

## Properties

| Name                   | Type        | Description                       | Notes                             |
| ---------------------- | ----------- | --------------------------------- | --------------------------------- |
| **unsignedCredential** | **object**  | Unsigned Credential in Dm2 format | [default to undefined]            |
| **revocable**          | **boolean** |                                   | [optional] [default to undefined] |

## Example

```typescript
import { SignCredentialsDm2LdInputDto } from '@affinidi-tdk/wallets-client'

const instance: SignCredentialsDm2LdInputDto = {
  unsignedCredential,
  revocable,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
