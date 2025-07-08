# LoginSessionRejectResponseInput

Authorization Response per OpenID for Verifiable Presentations Specification

## Properties

| Name                 | Type       | Description                                                                                                        | Notes                             |
| -------------------- | ---------- | ------------------------------------------------------------------------------------------------------------------ | --------------------------------- |
| **error**            | **string** | The error should follow the OAuth2 error format (e.g. invalid_request, login_required). Defaults to request_denied | [optional] [default to undefined] |
| **errorDescription** | **string** | Description of the error in a human readable format                                                                | [optional] [default to undefined] |
| **state**            | **string** | Random state associated to the Session                                                                             | [default to undefined]            |

## Example

```typescript
import { LoginSessionRejectResponseInput } from '@affinidi-tdk/login-configuration-client'

const instance: LoginSessionRejectResponseInput = {
  error,
  errorDescription,
  state,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
