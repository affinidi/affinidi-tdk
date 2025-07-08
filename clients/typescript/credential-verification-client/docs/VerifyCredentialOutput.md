# VerifyCredentialOutput

Response model of /verify-vcs

## Properties

| Name        | Type                    | Description                           | Notes                  |
| ----------- | ----------------------- | ------------------------------------- | ---------------------- |
| **errors**  | **Array&lt;string&gt;** | Errors of the VCs failed verification | [default to undefined] |
| **isValid** | **boolean**             | Verification result                   | [default to undefined] |

## Example

```typescript
import { VerifyCredentialOutput } from '@affinidi-tdk/credential-verification-client'

const instance: VerifyCredentialOutput = {
  errors,
  isValid,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
