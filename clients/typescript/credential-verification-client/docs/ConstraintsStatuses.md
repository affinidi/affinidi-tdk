# ConstraintsStatuses

## Properties

| Name          | Type                        | Description | Notes                             |
| ------------- | --------------------------- | ----------- | --------------------------------- |
| **active**    | [**PdStatus**](PdStatus.md) |             | [optional] [default to undefined] |
| **suspended** | [**PdStatus**](PdStatus.md) |             | [optional] [default to undefined] |
| **revoked**   | [**PdStatus**](PdStatus.md) |             | [optional] [default to undefined] |

## Example

```typescript
import { ConstraintsStatuses } from '@affinidi-tdk/credential-verification-client'

const instance: ConstraintsStatuses = {
  active,
  suspended,
  revoked,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
