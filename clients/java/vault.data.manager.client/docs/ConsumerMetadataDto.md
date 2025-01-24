# ConsumerMetadataDto

## Properties

| Name                    | Type           | Description                                         | Notes      |
| ----------------------- | -------------- | --------------------------------------------------- | ---------- |
| **nodeId**              | **String**     |                                                     |            |
| **status**              | **NodeStatus** |                                                     |            |
| **fileCount**           | **BigDecimal** |                                                     | [optional] |
| **folderCount**         | **BigDecimal** |                                                     | [optional] |
| **profileCount**        | **BigDecimal** |                                                     | [optional] |
| **name**                | **String**     |                                                     |            |
| **consumerId**          | **String**     |                                                     |            |
| **createdAt**           | **String**     | creation date/time                                  |            |
| **modifiedAt**          | **String**     | modification date/time                              |            |
| **createdBy**           | **String**     | Identifier of the user who created                  |            |
| **modifiedBy**          | **String**     | Identifier of the user who last updated             |            |
| **description**         | **String**     | Description of the node                             | [optional] |
| **type**                | **NodeType**   |                                                     |            |
| **consumedFileStorage** | **BigDecimal** | Tracks the amount of bytes used by the stored data. |            |
