# CreateLoginConfigurations400Response

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
import { CreateLoginConfigurations400Response } from '@affinidi-tdk/login-configuration-client'

const instance: CreateLoginConfigurations400Response = {
  name,
  message,
  httpStatusCode,
  traceId,
  details,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
