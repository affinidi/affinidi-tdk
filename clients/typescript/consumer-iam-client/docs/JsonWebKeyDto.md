# JsonWebKeyDto

## Properties

| Name    | Type       | Description | Notes                             |
| ------- | ---------- | ----------- | --------------------------------- |
| **kid** | **string** |             | [default to undefined]            |
| **kty** | **string** |             | [default to undefined]            |
| **n**   | **string** |             | [optional] [default to undefined] |
| **e**   | **string** |             | [optional] [default to undefined] |
| **x**   | **string** |             | [optional] [default to undefined] |
| **y**   | **string** |             | [optional] [default to undefined] |
| **crv** | **string** |             | [optional] [default to undefined] |
| **alg** | **string** |             | [default to undefined]            |
| **use** | **string** |             | [default to undefined]            |

## Example

```typescript
import { JsonWebKeyDto } from '@affinidi-tdk/consumer-iam-client'

const instance: JsonWebKeyDto = {
  kid,
  kty,
  n,
  e,
  x,
  y,
  crv,
  alg,
  use,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
