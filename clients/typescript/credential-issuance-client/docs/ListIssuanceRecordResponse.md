# ListIssuanceRecordResponse

list of issuance data records

## Properties

| Name                 | Type                                     | Description | Notes                             |
| -------------------- | ---------------------------------------- | ----------- | --------------------------------- |
| **flowData**         | [**Array&lt;FlowData&gt;**](FlowData.md) |             | [optional] [default to undefined] |
| **lastEvaluatedKey** | **string**                               |             | [optional] [default to undefined] |

## Example

```typescript
import { ListIssuanceRecordResponse } from '@affinidi-tdk/credential-issuance-client'

const instance: ListIssuanceRecordResponse = {
  flowData,
  lastEvaluatedKey,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
