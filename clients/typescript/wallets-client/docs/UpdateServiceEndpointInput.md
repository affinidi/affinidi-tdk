# UpdateServiceEndpointInput

Input for updating a service endpoint

## Properties

| Name            | Type       | Description                                                      | Notes                             |
| --------------- | ---------- | ---------------------------------------------------------------- | --------------------------------- |
| **name**        | **string** | Alphanumeric string with common punctuation (max 100 characters) | [optional] [default to undefined] |
| **description** | **string** | Alphanumeric string with common punctuation (max 500 characters) | [optional] [default to undefined] |
| **url**         | **string** | HTTP or HTTPS URL                                                | [optional] [default to undefined] |

## Example

```typescript
import { UpdateServiceEndpointInput } from '@affinidi-tdk/wallets-client'

const instance: UpdateServiceEndpointInput = {
  name,
  description,
  url,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
