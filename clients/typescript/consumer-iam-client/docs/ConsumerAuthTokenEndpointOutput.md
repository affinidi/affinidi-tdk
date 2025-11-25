# ConsumerAuthTokenEndpointOutput

## Properties

| Name             | Type       | Description                                                                                                                                                                            | Notes                             |
| ---------------- | ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------- |
| **access_token** | **string** | The access token issued by the authorization server.                                                                                                                                   | [optional] [default to undefined] |
| **expires_in**   | **number** | The lifetime in seconds of the access token. For example, the value \&quot;3600\&quot; denotes that the access token will expire in one hour from the time the response was generated. | [optional] [default to undefined] |
| **scope**        | **string** | The scope of the access token                                                                                                                                                          | [optional] [default to undefined] |
| **token_type**   | **string** | The type of the token issued                                                                                                                                                           | [optional] [default to undefined] |

## Example

```typescript
import { ConsumerAuthTokenEndpointOutput } from '@affinidi-tdk/consumer-iam-client'

const instance: ConsumerAuthTokenEndpointOutput = {
  access_token,
  expires_in,
  scope,
  token_type,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
