# affinidi_tdk_vault_data_manager_client.model.ConsumerMetadataDto

## Load the model package

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
```

## Properties

| Name                    | Type                            | Description                                         | Notes      |
| ----------------------- | ------------------------------- | --------------------------------------------------- | ---------- |
| **nodeId**              | **String**                      |                                                     |
| **status**              | [**NodeStatus**](NodeStatus.md) |                                                     |
| **fileCount**           | **int**                         |                                                     | [optional] |
| **folderCount**         | **int**                         |                                                     | [optional] |
| **profileCount**        | **int**                         |                                                     | [optional] |
| **name**                | **String**                      |                                                     |
| **consumerId**          | **String**                      |                                                     |
| **createdAt**           | **String**                      | creation date/time                                  |
| **modifiedAt**          | **String**                      | modification date/time                              |
| **createdBy**           | **String**                      | Identifier of the user who created                  |
| **modifiedBy**          | **String**                      | Identifier of the user who last updated             |
| **description**         | **String**                      | Description of the node                             | [optional] |
| **type**                | [**NodeType**](NodeType.md)     |                                                     |
| **consumedFileStorage** | **int**                         | Tracks the amount of bytes used by the stored data. |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
