# CreateNodeInput

## Properties

| Name             | Type                        | Description                                                                                                   | Notes      |
| ---------------- | --------------------------- | ------------------------------------------------------------------------------------------------------------- | ---------- |
| **name**         | **String**                  | Name of the item                                                                                              |            |
| **type**         | **NodeType**                |                                                                                                               |            |
| **description**  | **String**                  | description of profile if creating a new profile                                                              | [optional] |
| **parentNodeId** | **String**                  | parent node id, if not provided then root element is used                                                     | [optional] |
| **edekInfo**     | [**EdekInfo**](EdekInfo.md) |                                                                                                               | [optional] |
| **dek**          | **String**                  | A base64 encoded data encryption key, encrypted using VFS public key, required for node types [FILE, PROFILE] | [optional] |
| **metadata**     | **String**                  | metadata of the node in stringified json format                                                               | [optional] |
