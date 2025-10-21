# SignCredentialsDm2SdJwtInputDto

DTO contains params to sign credential

## Properties

| Name                   | Type        | Description                       | Notes                             |
| ---------------------- | ----------- | --------------------------------- | --------------------------------- |
| **unsignedCredential** | **object**  | Unsigned Credential in Dm2 format | [default to undefined]            |
| **revocable**          | **boolean** |                                   | [optional] [default to undefined] |
| **disclosureFrame**    | **object**  |                                   | [default to undefined]            |
| **signatureScheme**    | **string**  |                                   | [optional] [default to undefined] |

## Example

```typescript
import { SignCredentialsDm2SdJwtInputDto } from '@affinidi-tdk/wallets-client'

const instance: SignCredentialsDm2SdJwtInputDto = {
  unsignedCredential,
  revocable,
  disclosureFrame,
  signatureScheme,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
