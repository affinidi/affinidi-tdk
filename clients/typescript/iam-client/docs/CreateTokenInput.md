# CreateTokenInput

## Properties

| Name                     | Type                                                                                    | Description | Notes                             |
| ------------------------ | --------------------------------------------------------------------------------------- | ----------- | --------------------------------- |
| **name**                 | **string**                                                                              |             | [default to undefined]            |
| **authenticationMethod** | [**TokenPrivateKeyAuthenticationMethodDto**](TokenPrivateKeyAuthenticationMethodDto.md) |             | [default to undefined]            |
| **description**          | **string**                                                                              |             | [optional] [default to undefined] |

## Example

```typescript
import { CreateTokenInput } from '@affinidi-tdk/iam-client'

const instance: CreateTokenInput = {
  name,
  authenticationMethod,
  description,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
