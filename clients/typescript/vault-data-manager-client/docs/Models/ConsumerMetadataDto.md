# ConsumerMetadataDto

## Properties

| Name                    | Type                            | Description                                                    | Notes                        |
| ----------------------- | ------------------------------- | -------------------------------------------------------------- | ---------------------------- |
| **nodeId**              | **String**                      |                                                                | [default to null]            |
| **status**              | [**NodeStatus**](NodeStatus.md) |                                                                | [default to null]            |
| **fileCount**           | **BigDecimal**                  |                                                                | [optional] [default to null] |
| **folderCount**         | **BigDecimal**                  |                                                                | [optional] [default to null] |
| **profileCount**        | **BigDecimal**                  |                                                                | [optional] [default to null] |
| **name**                | **String**                      |                                                                | [default to null]            |
| **consumerId**          | **String**                      |                                                                | [default to null]            |
| **createdAt**           | **String**                      | [GEN] ISO 8601 string of the creation date/time the entity     | [default to null]            |
| **modifiedAt**          | **String**                      | [GEN] ISO 8601 string of the modification date/time the entity | [default to null]            |
| **createdBy**           | **String**                      | [GEN] Identifier of the user who created the entity            | [default to null]            |
| **modifiedBy**          | **String**                      | [GEN] Identifier of the user who last updated the entity       | [default to null]            |
| **description**         | **String**                      | Description of the node                                        | [default to null]            |
| **type**                | [**NodeType**](NodeType.md)     |                                                                | [default to null]            |
| **consumedFileStorage** | **BigDecimal**                  | Tracks the amount of bytes used by the stored data.            | [default to null]            |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
