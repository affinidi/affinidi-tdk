# OAuth2Token

## Properties

| Name                      | Type                                                                                             | Description                                                                                                                                                                            | Notes                             |
| ------------------------- | ------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------- |
| **access_token**          | **string**                                                                                       | The access token issued by the authorization server.                                                                                                                                   | [optional] [default to undefined] |
| **expires_in**            | **number**                                                                                       | The lifetime in seconds of the access token. For example, the value \&quot;3600\&quot; denotes that the access token will expire in one hour from the time the response was generated. | [optional] [default to undefined] |
| **id_token**              | **number**                                                                                       | To retrieve a refresh token request the id_token scope.                                                                                                                                | [optional] [default to undefined] |
| **refresh_token**         | **string**                                                                                       | The refresh token, which can be used to obtain new access tokens. To retrieve it add the scope \&quot;offline\&quot; to your access token request.                                     | [optional] [default to undefined] |
| **scope**                 | **string**                                                                                       | The scope of the access token                                                                                                                                                          | [optional] [default to undefined] |
| **token_type**            | **string**                                                                                       | The type of the token issued                                                                                                                                                           | [optional] [default to undefined] |
| **authorization_details** | [**Array&lt;OAuth2TokenAuthorizationDetailsInner&gt;**](OAuth2TokenAuthorizationDetailsInner.md) | is used to request issuance of a certain Credential type. This optional field is only applicable in batch credential operations.                                                       | [optional] [default to undefined] |

## Example

```typescript
import { OAuth2Token } from '@affinidi-tdk/login-configuration-client'

const instance: OAuth2Token = {
  access_token,
  expires_in,
  id_token,
  refresh_token,
  scope,
  token_type,
  authorization_details,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
