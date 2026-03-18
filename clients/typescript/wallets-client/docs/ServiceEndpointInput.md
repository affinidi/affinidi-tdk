# ServiceEndpointInput

Input for adding a service endpoint

## Properties

| Name            | Type       | Description                                                      | Notes                             |
| --------------- | ---------- | ---------------------------------------------------------------- | --------------------------------- |
| **name**        | **string** | Alphanumeric string with common punctuation (max 100 characters) | [optional] [default to undefined] |
| **description** | **string** | Alphanumeric string with common punctuation (max 500 characters) | [optional] [default to undefined] |
| **url**         | **string** | HTTP or HTTPS URL                                                | [default to undefined]            |
| **serviceType** | **string** | type of service endpoint                                         | [optional] [default to undefined] |

## Example

```typescript
import { ServiceEndpointInput } from '@affinidi-tdk/wallets-client'

const instance: ServiceEndpointInput = {
  name,
  description,
  url,
  serviceType,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
