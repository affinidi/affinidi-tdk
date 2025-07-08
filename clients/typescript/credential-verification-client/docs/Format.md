# Format

## Properties

| Name       | Type                          | Description | Notes                             |
| ---------- | ----------------------------- | ----------- | --------------------------------- |
| **jwt**    | [**JwtObject**](JwtObject.md) |             | [optional] [default to undefined] |
| **jwt_vc** | [**JwtObject**](JwtObject.md) |             | [optional] [default to undefined] |
| **jwt_vp** | [**JwtObject**](JwtObject.md) |             | [optional] [default to undefined] |
| **ldp**    | [**LdpObject**](LdpObject.md) |             | [optional] [default to undefined] |
| **ldp_vc** | [**LdpObject**](LdpObject.md) |             | [optional] [default to undefined] |
| **ldp_vp** | [**LdpObject**](LdpObject.md) |             | [optional] [default to undefined] |

## Example

```typescript
import { Format } from '@affinidi-tdk/credential-verification-client'

const instance: Format = {
  jwt,
  jwt_vc,
  jwt_vp,
  ldp,
  ldp_vc,
  ldp_vp,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
