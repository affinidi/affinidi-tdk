# TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo

Corresponding Public Key Info provided either as a URL or a Hardcoded Object

## Properties

| Name        | Type                                        | Description | Notes                  |
| ----------- | ------------------------------------------- | ----------- | ---------------------- |
| **jwks**    | [**JsonWebKeySetDto**](JsonWebKeySetDto.md) |             | [default to undefined] |
| **jwksUri** | **string**                                  |             | [default to undefined] |

## Example

```typescript
import { TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo } from '@affinidi-tdk/iam-client'

const instance: TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo = {
  jwks,
  jwksUri,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
