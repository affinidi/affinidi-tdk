# ConsumerAuthTokenEndpointInput

## Properties

| Name                      | Type       | Description | Notes                             |
| ------------------------- | ---------- | ----------- | --------------------------------- |
| **grant_type**            | **string** |             | [default to undefined]            |
| **client_assertion_type** | **string** |             | [default to undefined]            |
| **client_assertion**      | **string** |             | [default to undefined]            |
| **code**                  | **string** |             | [optional] [default to undefined] |
| **refresh_token**         | **string** |             | [optional] [default to undefined] |
| **redirect_uri**          | **string** |             | [optional] [default to undefined] |
| **client_id**             | **string** |             | [optional] [default to undefined] |

## Example

```typescript
import { ConsumerAuthTokenEndpointInput } from '@affinidi-tdk/iam-client'

const instance: ConsumerAuthTokenEndpointInput = {
  grant_type,
  client_assertion_type,
  client_assertion,
  code,
  refresh_token,
  redirect_uri,
  client_id,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
