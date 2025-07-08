# ServiceErrorResponse

## Properties

| Name        | Type                                                                                     | Description                                           | Notes                             |
| ----------- | ---------------------------------------------------------------------------------------- | ----------------------------------------------------- | --------------------------------- |
| **debugId** | **string**                                                                               | unique id for correlating this specific error to logs | [default to undefined]            |
| **name**    | **string**                                                                               | name of the error                                     | [default to undefined]            |
| **code**    | **string**                                                                               | backwards compatible Affinidi error code              | [default to undefined]            |
| **details** | [**Array&lt;ServiceErrorResponseDetailsInner&gt;**](ServiceErrorResponseDetailsInner.md) |                                                       | [optional] [default to undefined] |

## Example

```typescript
import { ServiceErrorResponse } from '@affinidi-tdk/wallets-client'

const instance: ServiceErrorResponse = {
  debugId,
  name,
  code,
  details,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
