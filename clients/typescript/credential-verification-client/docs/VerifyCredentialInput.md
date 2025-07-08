# VerifyCredentialInput

Request model of /verify-vcs

## Properties

| Name                      | Type                        | Description   | Notes                             |
| ------------------------- | --------------------------- | ------------- | --------------------------------- |
| **verifiableCredentials** | **Array&lt;object&gt;**     | List of VCs   | [default to undefined]            |
| **issuerDidDocument**     | **{ [key: string]: any; }** | Dynamic model | [optional] [default to undefined] |

## Example

```typescript
import { VerifyCredentialInput } from '@affinidi-tdk/credential-verification-client'

const instance: VerifyCredentialInput = {
  verifiableCredentials,
  issuerDidDocument,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
