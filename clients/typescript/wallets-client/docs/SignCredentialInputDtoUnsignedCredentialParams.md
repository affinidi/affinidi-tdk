# SignCredentialInputDtoUnsignedCredentialParams

unsignedCredentialParams. Used to build an unsigned credential before the signing. This param is not accepted when \"unsignedCredential\" is given

## Properties

| Name                  | Type                        | Description | Notes                  |
| --------------------- | --------------------------- | ----------- | ---------------------- |
| **jsonLdContextUrl**  | **string**                  |             | [default to undefined] |
| **jsonSchemaUrl**     | **string**                  |             | [default to undefined] |
| **typeName**          | **string**                  |             | [default to undefined] |
| **credentialSubject** | **{ [key: string]: any; }** |             | [default to undefined] |
| **holderDid**         | **string**                  |             | [default to undefined] |
| **expiresAt**         | **string**                  |             | [default to undefined] |

## Example

```typescript
import { SignCredentialInputDtoUnsignedCredentialParams } from '@affinidi-tdk/wallets-client'

const instance: SignCredentialInputDtoUnsignedCredentialParams = {
  jsonLdContextUrl,
  jsonSchemaUrl,
  typeName,
  credentialSubject,
  holderDid,
  expiresAt,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
