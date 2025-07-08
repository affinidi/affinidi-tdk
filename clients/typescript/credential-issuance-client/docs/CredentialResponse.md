# CredentialResponse

## Properties

| Name                   | Type                                                                                  | Description                                                                                                                                                          | Notes                  |
| ---------------------- | ------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------- |
| **credential**         | [**CredentialResponseImmediateCredential**](CredentialResponseImmediateCredential.md) |                                                                                                                                                                      | [default to undefined] |
| **c_nonce**            | **string**                                                                            | String containing a nonce to be used when creating a proof of possession of the key proof                                                                            | [default to undefined] |
| **c_nonce_expires_in** | **number**                                                                            | Lifetime in seconds of the c_nonce                                                                                                                                   | [default to undefined] |
| **transaction_id**     | **string**                                                                            | String identifying a Deferred Issuance transaction. This claim is contained in the response if the Credential Issuer was unable to immediately issue the Credential. | [default to undefined] |

## Example

```typescript
import { CredentialResponse } from '@affinidi-tdk/credential-issuance-client'

const instance: CredentialResponse = {
  credential,
  c_nonce,
  c_nonce_expires_in,
  transaction_id,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
