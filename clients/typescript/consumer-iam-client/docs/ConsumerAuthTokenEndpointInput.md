# ConsumerAuthTokenEndpointInput

## Properties

| Name                      | Type       | Description | Notes                  |
| ------------------------- | ---------- | ----------- | ---------------------- |
| **grant_type**            | **string** |             | [default to undefined] |
| **client_assertion_type** | **string** |             | [default to undefined] |
| **client_assertion**      | **string** |             | [default to undefined] |
| **client_id**             | **string** |             | [default to undefined] |

## Example

```typescript
import { ConsumerAuthTokenEndpointInput } from '@affinidi-tdk/consumer-iam-client'

const instance: ConsumerAuthTokenEndpointInput = {
  grant_type,
  client_assertion_type,
  client_assertion,
  client_id,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
