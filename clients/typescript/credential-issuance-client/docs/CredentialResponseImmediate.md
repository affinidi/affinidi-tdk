# CredentialResponseImmediate

## Properties

| Name                   | Type                                                                                            | Description                                                                               | Notes                  |
| ---------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ---------------------- |
| **credential**         | [**CredentialResponseImmediateCredential**](CredentialResponseImmediateCredential.md)           |                                                                                           | [default to undefined] |
| **c_nonce**            | **string**                                                                                      | String containing a nonce to be used when creating a proof of possession of the key proof | [default to undefined] |
| **c_nonce_expires_in** | [**CredentialResponseImmediateCNonceExpiresIn**](CredentialResponseImmediateCNonceExpiresIn.md) |                                                                                           | [default to undefined] |

## Example

```typescript
import { CredentialResponseImmediate } from '@affinidi-tdk/credential-issuance-client'

const instance: CredentialResponseImmediate = {
  credential,
  c_nonce,
  c_nonce_expires_in,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
