# ConsumerMetadataDto

## Properties

| Name                    | Type                            | Description                                         | Notes                             |
| ----------------------- | ------------------------------- | --------------------------------------------------- | --------------------------------- |
| **nodeId**              | **string**                      |                                                     | [default to undefined]            |
| **status**              | [**NodeStatus**](NodeStatus.md) |                                                     | [default to undefined]            |
| **fileCount**           | **number**                      |                                                     | [optional] [default to undefined] |
| **folderCount**         | **number**                      |                                                     | [optional] [default to undefined] |
| **profileCount**        | **number**                      |                                                     | [optional] [default to undefined] |
| **name**                | **string**                      |                                                     | [default to undefined]            |
| **consumerId**          | **string**                      |                                                     | [default to undefined]            |
| **createdAt**           | **string**                      | creation date/time                                  | [default to undefined]            |
| **modifiedAt**          | **string**                      | modification date/time                              | [default to undefined]            |
| **createdBy**           | **string**                      | Identifier of the user who created                  | [default to undefined]            |
| **modifiedBy**          | **string**                      | Identifier of the user who last updated             | [default to undefined]            |
| **description**         | **string**                      | Description of the node                             | [optional] [default to undefined] |
| **type**                | [**NodeType**](NodeType.md)     |                                                     | [default to undefined]            |
| **consumedFileStorage** | **number**                      | Tracks the amount of bytes used by the stored data. | [default to undefined]            |

## Example

```typescript
import { ConsumerMetadataDto } from '@affinidi-tdk/vault-data-manager-client'

const instance: ConsumerMetadataDto = {
  nodeId,
  status,
  fileCount,
  folderCount,
  profileCount,
  name,
  consumerId,
  createdAt,
  modifiedAt,
  createdBy,
  modifiedBy,
  description,
  type,
  consumedFileStorage,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
