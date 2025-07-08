# LoginSessionDto

## Properties

| Name                     | Type                                                                              | Description                | Notes                  |
| ------------------------ | --------------------------------------------------------------------------------- | -------------------------- | ---------------------- |
| **id**                   | **string**                                                                        | Session primary identifier | [default to undefined] |
| **authorizationRequest** | [**LoginSessionDtoAuthorizationRequest**](LoginSessionDtoAuthorizationRequest.md) |                            | [default to undefined] |

## Example

```typescript
import { LoginSessionDto } from '@affinidi-tdk/login-configuration-client'

const instance: LoginSessionDto = {
  id,
  authorizationRequest,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
