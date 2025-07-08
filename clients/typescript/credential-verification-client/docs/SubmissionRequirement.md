# SubmissionRequirement

## Properties

| Name            | Type                                                               | Description | Notes                             |
| --------------- | ------------------------------------------------------------------ | ----------- | --------------------------------- |
| **name**        | **string**                                                         |             | [optional] [default to undefined] |
| **purpose**     | **string**                                                         |             | [optional] [default to undefined] |
| **rule**        | **string**                                                         |             | [default to undefined]            |
| **count**       | **number**                                                         |             | [optional] [default to undefined] |
| **min**         | **number**                                                         |             | [optional] [default to undefined] |
| **max**         | **number**                                                         |             | [optional] [default to undefined] |
| **from**        | **string**                                                         |             | [optional] [default to undefined] |
| **from_nested** | [**Array&lt;SubmissionRequirement&gt;**](SubmissionRequirement.md) |             | [optional] [default to undefined] |

## Example

```typescript
import { SubmissionRequirement } from '@affinidi-tdk/credential-verification-client'

const instance: SubmissionRequirement = {
  name,
  purpose,
  rule,
  count,
  min,
  max,
  from,
  from_nested,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
