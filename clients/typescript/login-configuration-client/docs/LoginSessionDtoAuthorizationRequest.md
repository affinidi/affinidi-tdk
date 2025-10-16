# LoginSessionDtoAuthorizationRequest

Authorization Request Object

## Properties

| Name                       | Type       | Description                                                             | Notes                             |
| -------------------------- | ---------- | ----------------------------------------------------------------------- | --------------------------------- |
| **state**                  | **string** | State parameter                                                         | [default to undefined]            |
| **presentationDefinition** | **string** | Presentation Definition to ask from the user. In JSON Stringify format. | [default to undefined]            |
| **ari**                    | **string** | ARI is used for analytics proposals.                                    | [optional] [default to undefined] |
| **clientId**               | **string** | clientId used for detect origin.                                        | [optional] [default to undefined] |
| **nonce**                  | **string** | nonce for VP Token proof challenge                                      | [optional] [default to undefined] |
| **dcqlQuery**              | **string** | DCQL query to ask from the user. In JSON Stringify format.              | [default to undefined]            |

## Example

```typescript
import { LoginSessionDtoAuthorizationRequest } from '@affinidi-tdk/login-configuration-client'

const instance: LoginSessionDtoAuthorizationRequest = {
  state,
  presentationDefinition,
  ari,
  clientId,
  nonce,
  dcqlQuery,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
