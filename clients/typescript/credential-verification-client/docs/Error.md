# ModelError

Error object

## Properties

| Name             | Type                                           | Description      | Notes                             |
| ---------------- | ---------------------------------------------- | ---------------- | --------------------------------- |
| **errorCode**    | **string**                                     | Error code       | [optional] [default to undefined] |
| **errorMessage** | **string**                                     | Error message    | [optional] [default to undefined] |
| **message**      | **string**                                     | Verbose message  | [optional] [default to undefined] |
| **name**         | **string**                                     | Error name       | [optional] [default to undefined] |
| **debugId**      | **string**                                     | Debug identifier | [optional] [default to undefined] |
| **details**      | [**Array&lt;ErrorDetail&gt;**](ErrorDetail.md) | Error details    | [optional] [default to undefined] |

## Example

```typescript
import { ModelError } from '@affinidi-tdk/credential-verification-client'

const instance: ModelError = {
  errorCode,
  errorMessage,
  message,
  name,
  debugId,
  details,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
