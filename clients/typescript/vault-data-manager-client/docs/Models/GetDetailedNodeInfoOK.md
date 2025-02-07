# GetDetailedNodeInfoOK

## Properties

| Name                    | Type                            | Description                                                                 | Notes                        |
| ----------------------- | ------------------------------- | --------------------------------------------------------------------------- | ---------------------------- |
| **nodeId**              | **String**                      | A unique identifier of current node                                         | [default to null]            |
| **status**              | [**NodeStatus**](NodeStatus.md) |                                                                             | [default to null]            |
| **fileCount**           | **BigDecimal**                  | number of files in current node                                             | [optional] [default to null] |
| **profileCount**        | **BigDecimal**                  | number of profiles in current node                                          | [optional] [default to null] |
| **folderCount**         | **BigDecimal**                  | number of folders in current node                                           | [optional] [default to null] |
| **vcCount**             | **BigDecimal**                  | number of vcCount in current node                                           | [optional] [default to null] |
| **name**                | **String**                      | display name of current node                                                | [default to null]            |
| **consumerId**          | **String**                      | unique identifier for consumer                                              | [default to null]            |
| **parentNodeId**        | **String**                      | parent node path                                                            | [default to null]            |
| **profileId**           | **String**                      | A unique identifier of profile, under which current node is created         | [default to null]            |
| **createdAt**           | **String**                      | creation date/time of the node                                              | [default to null]            |
| **modifiedAt**          | **String**                      | modification date/time of the node                                          | [default to null]            |
| **createdBy**           | **String**                      | Identifier of the user who created the node                                 | [default to null]            |
| **modifiedBy**          | **String**                      | Identifier of the user who last updated the node                            | [default to null]            |
| **description**         | **String**                      | Description of the node                                                     | [default to null]            |
| **type**                | [**NodeType**](NodeType.md)     |                                                                             | [default to null]            |
| **link**                | **String**                      | id of the file, used for FILE node only                                     | [optional] [default to null] |
| **schema**              | **String**                      | name of the schema, used for PROFILE node only                              | [optional] [default to null] |
| **consumedFileStorage** | **BigDecimal**                  | amount of bytes used by the stored data, used for ROOT_ELEMENT only for now | [optional] [default to null] |
| **edekInfo**            | [**EdekInfo**](EdekInfo.md)     |                                                                             | [optional] [default to null] |
| **metadata**            | **String**                      | A JSON string format containing metadata of the node                        | [optional] [default to null] |
| **getUrl**              | **String**                      |                                                                             | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
