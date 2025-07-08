# PolicyDto

## Properties

| Name            | Type                                                         | Description | Notes                             |
| --------------- | ------------------------------------------------------------ | ----------- | --------------------------------- |
| **name**        | **string**                                                   |             | [optional] [default to undefined] |
| **description** | **string**                                                   |             | [optional] [default to undefined] |
| **principalId** | **string**                                                   |             | [optional] [default to undefined] |
| **projectId**   | **string**                                                   |             | [optional] [default to undefined] |
| **version**     | **string**                                                   |             | [default to undefined]            |
| **statement**   | [**Array&lt;PolicyStatementDto&gt;**](PolicyStatementDto.md) |             | [default to undefined]            |

## Example

```typescript
import { PolicyDto } from '@affinidi-tdk/iam-client'

const instance: PolicyDto = {
  name,
  description,
  principalId,
  projectId,
  version,
  statement,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
