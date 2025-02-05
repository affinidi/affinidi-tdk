# affinidi_tdk_vault_data_manager_client.model.ConsumerMetadataDto

## Load the model package

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
```

## Properties

| Name                    | Type                            | Description                                                    | Notes      |
| ----------------------- | ------------------------------- | -------------------------------------------------------------- | ---------- |
| **nodeId**              | **String**                      |                                                                |
| **status**              | [**NodeStatus**](NodeStatus.md) |                                                                |
| **fileCount**           | **int**                         |                                                                | [optional] |
| **folderCount**         | **int**                         |                                                                | [optional] |
| **profileCount**        | **int**                         |                                                                | [optional] |
| **name**                | **String**                      |                                                                |
| **consumerId**          | **String**                      |                                                                |
| **createdAt**           | **String**                      | [GEN] ISO 8601 string of the creation date/time the entity     |
| **modifiedAt**          | **String**                      | [GEN] ISO 8601 string of the modification date/time the entity |
| **createdBy**           | **String**                      | [GEN] Identifier of the user who created the entity            |
| **modifiedBy**          | **String**                      | [GEN] Identifier of the user who last updated the entity       |
| **description**         | **String**                      | Description of the node                                        |
| **type**                | [**NodeType**](NodeType.md)     |                                                                |
| **consumedFileStorage** | **int**                         | Tracks the amount of bytes used by the stored data.            |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
