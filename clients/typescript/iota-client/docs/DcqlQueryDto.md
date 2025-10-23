# DcqlQueryDto

## Properties

| Name                 | Type       | Description                                                                                                                 | Notes                  |
| -------------------- | ---------- | --------------------------------------------------------------------------------------------------------------------------- | ---------------------- |
| **ari**              | **string** | The unique resource identifier of the query.                                                                                | [default to undefined] |
| **queryId**          | **string** | The ID of the query.                                                                                                        | [default to undefined] |
| **name**             | **string** | The name of the DCQL query to quickly identify the query.                                                                   | [default to undefined] |
| **description**      | **string** | An optional description of what the query is used for.                                                                      | [default to undefined] |
| **configurationAri** | **string** | The unique resource identifier of the related configuration where the query is defined.                                     | [default to undefined] |
| **dcqlQuery**        | **string** | The DCQL query describing the data requirement that must be satisfied by the user. The value is in a JSON stringify format. | [default to undefined] |

## Example

```typescript
import { DcqlQueryDto } from '@affinidi-tdk/iota-client'

const instance: DcqlQueryDto = {
  ari,
  queryId,
  name,
  description,
  configurationAri,
  dcqlQuery,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
