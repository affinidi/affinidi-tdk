# TokenAuthenticationMethodDto

How the Token will be authenticate against our Authorization Server

## Properties

| Name                 | Type                                                                                                              | Description | Notes                  |
| -------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------- | ---------------------- |
| **type**             | **string**                                                                                                        |             | [default to undefined] |
| **signingAlgorithm** | **string**                                                                                                        |             | [default to undefined] |
| **publicKeyInfo**    | [**TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo**](TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo.md) |             | [default to undefined] |

## Example

```typescript
import { TokenAuthenticationMethodDto } from '@affinidi-tdk/iam-client'

const instance: TokenAuthenticationMethodDto = {
  type,
  signingAlgorithm,
  publicKeyInfo,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
