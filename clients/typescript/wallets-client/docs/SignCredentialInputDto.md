# SignCredentialInputDto

DTO contains params to sign credential

## Properties

| Name                         | Type                                                                                                    | Description                                                                             | Notes                             |
| ---------------------------- | ------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------- |
| **unsignedCredential**       | **object**                                                                                              | Unsigned Credential. If provided \&quot;unsignedCredentialParams\&quot; is not accepted | [optional] [default to undefined] |
| **revocable**                | **boolean**                                                                                             |                                                                                         | [optional] [default to undefined] |
| **credentialFormat**         | **string**                                                                                              |                                                                                         | [optional] [default to undefined] |
| **unsignedCredentialParams** | [**SignCredentialInputDtoUnsignedCredentialParams**](SignCredentialInputDtoUnsignedCredentialParams.md) |                                                                                         | [optional] [default to undefined] |

## Example

```typescript
import { SignCredentialInputDto } from '@affinidi-tdk/wallets-client'

const instance: SignCredentialInputDto = {
  unsignedCredential,
  revocable,
  credentialFormat,
  unsignedCredentialParams,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
