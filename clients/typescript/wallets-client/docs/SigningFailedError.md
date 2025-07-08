# SigningFailedError

## Properties

| Name               | Type                                                                                     | Description | Notes                             |
| ------------------ | ---------------------------------------------------------------------------------------- | ----------- | --------------------------------- |
| **name**           | **string**                                                                               |             | [default to undefined]            |
| **message**        | **string**                                                                               |             | [default to undefined]            |
| **httpStatusCode** | **number**                                                                               |             | [default to undefined]            |
| **traceId**        | **string**                                                                               |             | [default to undefined]            |
| **details**        | [**Array&lt;ServiceErrorResponseDetailsInner&gt;**](ServiceErrorResponseDetailsInner.md) |             | [optional] [default to undefined] |

## Example

```typescript
import { SigningFailedError } from '@affinidi-tdk/wallets-client'

const instance: SigningFailedError = {
  name,
  message,
  httpStatusCode,
  traceId,
  details,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
