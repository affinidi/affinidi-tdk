# CreateNodeInput

## Properties

| Name             | Type                        | Description                                                                                                   | Notes                             |
| ---------------- | --------------------------- | ------------------------------------------------------------------------------------------------------------- | --------------------------------- |
| **name**         | **string**                  | Name of the item                                                                                              | [default to undefined]            |
| **type**         | [**NodeType**](NodeType.md) |                                                                                                               | [default to undefined]            |
| **description**  | **string**                  | description of profile if creating a new profile                                                              | [optional] [default to undefined] |
| **parentNodeId** | **string**                  | parent node id, if not provided then root element is used                                                     | [optional] [default to undefined] |
| **edekInfo**     | [**EdekInfo**](EdekInfo.md) |                                                                                                               | [optional] [default to undefined] |
| **dek**          | **string**                  | A base64 encoded data encryption key, encrypted using VFS public key, required for node types [FILE, PROFILE] | [optional] [default to undefined] |
| **metadata**     | **string**                  | metadata of the node in stringified json format                                                               | [optional] [default to undefined] |

## Example

```typescript
import { CreateNodeInput } from '@affinidi-tdk/vault-data-manager-client'

const instance: CreateNodeInput = {
  name,
  type,
  description,
  parentNodeId,
  edekInfo,
  dek,
  metadata,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
