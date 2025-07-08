# GetDetailedNodeInfoOK

## Properties

| Name                    | Type                            | Description                                                                 | Notes                             |
| ----------------------- | ------------------------------- | --------------------------------------------------------------------------- | --------------------------------- |
| **nodeId**              | **string**                      | A unique identifier of current node                                         | [default to undefined]            |
| **status**              | [**NodeStatus**](NodeStatus.md) |                                                                             | [default to undefined]            |
| **fileCount**           | **number**                      | number of files in current node                                             | [optional] [default to undefined] |
| **profileCount**        | **number**                      | number of profiles in current node                                          | [optional] [default to undefined] |
| **folderCount**         | **number**                      | number of folders in current node                                           | [optional] [default to undefined] |
| **vcCount**             | **number**                      | number of vcCount in current node                                           | [optional] [default to undefined] |
| **name**                | **string**                      | display name of current node                                                | [default to undefined]            |
| **consumerId**          | **string**                      | unique identifier for consumer                                              | [default to undefined]            |
| **parentNodeId**        | **string**                      | parent node path                                                            | [default to undefined]            |
| **profileId**           | **string**                      | A unique identifier of profile, under which current node is created         | [default to undefined]            |
| **createdAt**           | **string**                      | creation date/time of the node                                              | [default to undefined]            |
| **modifiedAt**          | **string**                      | modification date/time of the node                                          | [default to undefined]            |
| **createdBy**           | **string**                      | Identifier of the user who created the node                                 | [default to undefined]            |
| **modifiedBy**          | **string**                      | Identifier of the user who last updated the node                            | [default to undefined]            |
| **description**         | **string**                      | Description of the node                                                     | [optional] [default to undefined] |
| **type**                | [**NodeType**](NodeType.md)     |                                                                             | [default to undefined]            |
| **link**                | **string**                      | id of the file, used for FILE node only                                     | [optional] [default to undefined] |
| **schema**              | **string**                      | name of the schema, used for PROFILE node only                              | [optional] [default to undefined] |
| **consumedFileStorage** | **number**                      | amount of bytes used by the stored data, used for ROOT_ELEMENT only for now | [optional] [default to undefined] |
| **edekInfo**            | [**EdekInfo**](EdekInfo.md)     |                                                                             | [optional] [default to undefined] |
| **metadata**            | **string**                      | A JSON string format containing metadata of the node                        | [optional] [default to undefined] |
| **getUrl**              | **string**                      |                                                                             | [optional] [default to undefined] |

## Example

```typescript
import { GetDetailedNodeInfoOK } from '@affinidi-tdk/vault-data-manager-client'

const instance: GetDetailedNodeInfoOK = {
  nodeId,
  status,
  fileCount,
  profileCount,
  folderCount,
  vcCount,
  name,
  consumerId,
  parentNodeId,
  profileId,
  createdAt,
  modifiedAt,
  createdBy,
  modifiedBy,
  description,
  type,
  link,
  schema,
  consumedFileStorage,
  edekInfo,
  metadata,
  getUrl,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
