# VerifyPresentationOutput

Response model of /verify-vp

## Properties

| Name        | Type                    | Description               | Notes                  |
| ----------- | ----------------------- | ------------------------- | ---------------------- |
| **errors**  | **Array&lt;string&gt;** | Error of the verification | [default to undefined] |
| **isValid** | **boolean**             | Verification result       | [default to undefined] |

## Example

```typescript
import { VerifyPresentationOutput } from '@affinidi-tdk/credential-verification-client'

const instance: VerifyPresentationOutput = {
  errors,
  isValid,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
