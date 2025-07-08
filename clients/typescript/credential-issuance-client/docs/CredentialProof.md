# CredentialProof

Object containing the proof of possession of the cryptographic key material the issued Credential would be bound to.

## Properties

| Name           | Type       | Description                         | Notes                  |
| -------------- | ---------- | ----------------------------------- | ---------------------- |
| **proof_type** | **string** | String denoting the key proof type. | [default to undefined] |
| **jwt**        | **string** |                                     | [default to undefined] |

## Example

```typescript
import { CredentialProof } from '@affinidi-tdk/credential-issuance-client'

const instance: CredentialProof = {
  proof_type,
  jwt,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
