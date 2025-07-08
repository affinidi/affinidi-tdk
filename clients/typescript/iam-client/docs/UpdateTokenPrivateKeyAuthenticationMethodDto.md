# UpdateTokenPrivateKeyAuthenticationMethodDto

Private Key JWT Authentication of Client with `private_key_jwt` oAuth Method

## Properties

| Name                 | Type                                                                                                              | Description | Notes                             |
| -------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------- | --------------------------------- |
| **type**             | **string**                                                                                                        |             | [optional] [default to undefined] |
| **signingAlgorithm** | **string**                                                                                                        |             | [optional] [default to undefined] |
| **publicKeyInfo**    | [**TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo**](TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo.md) |             | [optional] [default to undefined] |

## Example

```typescript
import { UpdateTokenPrivateKeyAuthenticationMethodDto } from '@affinidi-tdk/iam-client'

const instance: UpdateTokenPrivateKeyAuthenticationMethodDto = {
  type,
  signingAlgorithm,
  publicKeyInfo,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
