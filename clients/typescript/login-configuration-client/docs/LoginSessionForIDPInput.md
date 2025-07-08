# LoginSessionForIDPInput

Input for Creating a Login Session

## Properties

| Name               | Type       | Description                                       | Notes                  |
| ------------------ | ---------- | ------------------------------------------------- | ---------------------- |
| **loginChallenge** | **string** | IDP Login Challenge to Associate the Session with | [default to undefined] |
| **clientId**       | **string** | IDP client id to Associate the Session with       | [default to undefined] |

## Example

```typescript
import { LoginSessionForIDPInput } from '@affinidi-tdk/login-configuration-client'

const instance: LoginSessionForIDPInput = {
  loginChallenge,
  clientId,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
