# CreateLoginConfigurationOutputAuth

OIDC Auth Credentials

## Properties

| Name             | Type       | Description             | Notes                             |
| ---------------- | ---------- | ----------------------- | --------------------------------- |
| **clientId**     | **string** | OAuth 2.0 Client ID     | [default to undefined]            |
| **clientSecret** | **string** | OAuth 2.0 Client Secret | [optional] [default to undefined] |
| **scope**        | **string** | OAuth 2.0 Client Scope  | [optional] [default to undefined] |
| **issuer**       | **string** | Issuer URL              | [optional] [default to undefined] |

## Example

```typescript
import { CreateLoginConfigurationOutputAuth } from '@affinidi-tdk/login-configuration-client'

const instance: CreateLoginConfigurationOutputAuth = {
  clientId,
  clientSecret,
  scope,
  issuer,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
