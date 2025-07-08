# SavePexQueriesUpdateInputQueriesInner

## Properties

| Name             | Type       | Description                                                                                                                              | Notes                             |
| ---------------- | ---------- | ---------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------- |
| **queryId**      | **string** | The ID of the query.                                                                                                                     | [default to undefined]            |
| **vpDefinition** | **string** | The presentation definition describing the data requirement that must be satisfied by the user. The value is in a JSON stringify format. | [optional] [default to undefined] |
| **description**  | **string** | An optional description of what the query is used for.                                                                                   | [optional] [default to undefined] |

## Example

```typescript
import { SavePexQueriesUpdateInputQueriesInner } from '@affinidi-tdk/iota-client'

const instance: SavePexQueriesUpdateInputQueriesInner = {
  queryId,
  vpDefinition,
  description,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
