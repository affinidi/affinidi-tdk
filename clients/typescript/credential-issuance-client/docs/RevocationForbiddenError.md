# RevocationForbiddenError

## Properties

| Name               | Type                                                                                     | Description | Notes                             |
| ------------------ | ---------------------------------------------------------------------------------------- | ----------- | --------------------------------- |
| **name**           | **string**                                                                               |             | [default to undefined]            |
| **message**        | **string**                                                                               |             | [default to undefined]            |
| **httpStatusCode** | **number**                                                                               |             | [default to undefined]            |
| **traceId**        | **string**                                                                               |             | [default to undefined]            |
| **details**        | [**Array&lt;ActionForbiddenErrorDetailsInner&gt;**](ActionForbiddenErrorDetailsInner.md) |             | [optional] [default to undefined] |

## Example

```typescript
import { RevocationForbiddenError } from '@affinidi-tdk/credential-issuance-client'

const instance: RevocationForbiddenError = {
  name,
  message,
  httpStatusCode,
  traceId,
  details,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
