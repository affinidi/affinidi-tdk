# TokenDto

## Properties

| Name                     | Type                                                                                    | Description                                                 | Notes                  |
| ------------------------ | --------------------------------------------------------------------------------------- | ----------------------------------------------------------- | ---------------------- |
| **id**                   | **string**                                                                              | Token Id                                                    | [default to undefined] |
| **ari**                  | **string**                                                                              | Token ARI                                                   | [default to undefined] |
| **ownerAri**             | **string**                                                                              | The Token owner\&#39;s ARI                                  | [default to undefined] |
| **name**                 | **string**                                                                              | Owner defined Token display name                            | [default to undefined] |
| **authenticationMethod** | [**TokenPrivateKeyAuthenticationMethodDto**](TokenPrivateKeyAuthenticationMethodDto.md) |                                                             | [default to undefined] |
| **scopes**               | **Array&lt;string&gt;**                                                                 | Scopes that will be assigned to the Token on authentication | [default to undefined] |

## Example

```typescript
import { TokenDto } from '@affinidi-tdk/iam-client'

const instance: TokenDto = {
  id,
  ari,
  ownerAri,
  name,
  authenticationMethod,
  scopes,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
