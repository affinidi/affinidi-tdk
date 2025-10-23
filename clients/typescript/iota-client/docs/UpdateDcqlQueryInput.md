# UpdateDcqlQueryInput

## Properties

| Name            | Type       | Description                                                                                                                 | Notes                             |
| --------------- | ---------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------- |
| **dcqlQuery**   | **string** | The DCQL query describing the data requirement that must be satisfied by the user. The value is in a JSON stringify format. | [optional] [default to undefined] |
| **description** | **string** | An optional description of what the query is used for.                                                                      | [optional] [default to undefined] |

## Example

```typescript
import { UpdateDcqlQueryInput } from '@affinidi-tdk/iota-client'

const instance: UpdateDcqlQueryInput = {
  dcqlQuery,
  description,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
