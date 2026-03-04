# ServiceEndpointInput

Input for adding a service endpoint

## Properties

| Name            | Type       | Description                         | Notes                             |
| --------------- | ---------- | ----------------------------------- | --------------------------------- |
| **name**        | **string** | Name of the service endpoint        | [default to undefined]            |
| **description** | **string** | Description of the service endpoint | [default to undefined]            |
| **url**         | **string** | service endpoint URL                | [optional] [default to undefined] |
| **serviceType** | **string** | type of service endpoint            | [optional] [default to undefined] |

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
