# VerifyCredentialV2Input

Request model of /v2/verify-vcs

## Properties

| Name                      | Type                        | Description        | Notes                             |
| ------------------------- | --------------------------- | ------------------ | --------------------------------- |
| **verifiableCredentials** | **Array&lt;string&gt;**     | List of VC strings | [default to undefined]            |
| **issuerDidDocument**     | **{ [key: string]: any; }** | Dynamic model      | [optional] [default to undefined] |

## Example

```typescript
import { VerifyCredentialV2Input } from '@affinidi-tdk/credential-verification-client'

const instance: VerifyCredentialV2Input = {
  verifiableCredentials,
  issuerDidDocument,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
