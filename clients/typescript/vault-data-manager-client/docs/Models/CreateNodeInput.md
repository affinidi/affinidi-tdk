# CreateNodeInput

## Properties

| Name             | Type                        | Description                                                                                                   | Notes                        |
| ---------------- | --------------------------- | ------------------------------------------------------------------------------------------------------------- | ---------------------------- |
| **name**         | **String**                  | Name of the item                                                                                              | [default to null]            |
| **type**         | [**NodeType**](NodeType.md) |                                                                                                               | [default to null]            |
| **description**  | **String**                  | description of profile if creating a new profile                                                              | [optional] [default to null] |
| **parentNodeId** | **String**                  | parent node id, if not provided then root element is used                                                     | [optional] [default to null] |
| **edekInfo**     | [**EdekInfo**](EdekInfo.md) |                                                                                                               | [optional] [default to null] |
| **dek**          | **String**                  | A base64 encoded data encryption key, encrypted using VFS public key, required for node types [FILE, PROFILE] | [optional] [default to null] |
| **metadata**     | **String**                  | metadata of the node in stringified json format                                                               | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
