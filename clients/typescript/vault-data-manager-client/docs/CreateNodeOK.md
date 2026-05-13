# CreateNodeOK

## Properties

| Name           | Type                        | Description            | Notes                             |
| -------------- | --------------------------- | ---------------------- | --------------------------------- |
| **nodeId**     | **string**                  |                        | [default to undefined]            |
| **createdAt**  | **string**                  | creation date/time     | [default to undefined]            |
| **modifiedAt** | **string**                  | modification date/time | [default to undefined]            |
| **url**        | **string**                  |                        | [optional] [default to undefined] |
| **link**       | **string**                  |                        | [optional] [default to undefined] |
| **fields**     | **{ [key: string]: any; }** |                        | [optional] [default to undefined] |

## Example

```typescript
import { CreateNodeOK } from '@affinidi-tdk/vault-data-manager-client'

const instance: CreateNodeOK = {
  nodeId,
  createdAt,
  modifiedAt,
  url,
  link,
  fields,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
