# VPTokenValidationError

## Properties

| Name               | Type                                                                                       | Description | Notes                             |
| ------------------ | ------------------------------------------------------------------------------------------ | ----------- | --------------------------------- |
| **name**           | **string**                                                                                 |             | [default to undefined]            |
| **message**        | **string**                                                                                 |             | [default to undefined]            |
| **httpStatusCode** | **number**                                                                                 |             | [default to undefined]            |
| **traceId**        | **string**                                                                                 |             | [default to undefined]            |
| **details**        | [**Array&lt;InvalidParameterErrorDetailsInner&gt;**](InvalidParameterErrorDetailsInner.md) |             | [optional] [default to undefined] |

## Example

```typescript
import { VPTokenValidationError } from '@affinidi-tdk/iota-client'

const instance: VPTokenValidationError = {
  name,
  message,
  httpStatusCode,
  traceId,
  details,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
