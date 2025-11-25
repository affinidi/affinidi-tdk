# UnexpectedError

## Properties

| Name               | Type                                                                                     | Description | Notes                             |
| ------------------ | ---------------------------------------------------------------------------------------- | ----------- | --------------------------------- |
| **name**           | **string**                                                                               |             | [default to undefined]            |
| **message**        | **string**                                                                               |             | [default to undefined]            |
| **httpStatusCode** | **number**                                                                               |             | [default to undefined]            |
| **traceId**        | **string**                                                                               |             | [default to undefined]            |
| **details**        | [**Array&lt;InvalidJwtTokenErrorDetailsInner&gt;**](InvalidJwtTokenErrorDetailsInner.md) |             | [optional] [default to undefined] |

## Example

```typescript
import { UnexpectedError } from '@affinidi-tdk/consumer-iam-client'

const instance: UnexpectedError = {
  name,
  message,
  httpStatusCode,
  traceId,
  details,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
