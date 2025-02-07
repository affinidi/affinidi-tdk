# ConsumerMetadataDto

## Properties

| Name                    | Type           | Description                                                    | Notes      |
| ----------------------- | -------------- | -------------------------------------------------------------- | ---------- |
| **nodeId**              | **String**     |                                                                |            |
| **status**              | **NodeStatus** |                                                                |            |
| **fileCount**           | **BigDecimal** |                                                                | [optional] |
| **folderCount**         | **BigDecimal** |                                                                | [optional] |
| **profileCount**        | **BigDecimal** |                                                                | [optional] |
| **name**                | **String**     |                                                                |            |
| **consumerId**          | **String**     |                                                                |            |
| **createdAt**           | **String**     | [GEN] ISO 8601 string of the creation date/time the entity     |            |
| **modifiedAt**          | **String**     | [GEN] ISO 8601 string of the modification date/time the entity |            |
| **createdBy**           | **String**     | [GEN] Identifier of the user who created the entity            |            |
| **modifiedBy**          | **String**     | [GEN] Identifier of the user who last updated the entity       |            |
| **description**         | **String**     | Description of the node                                        |            |
| **type**                | **NodeType**   |                                                                |            |
| **consumedFileStorage** | **BigDecimal** | Tracks the amount of bytes used by the stored data.            |            |
