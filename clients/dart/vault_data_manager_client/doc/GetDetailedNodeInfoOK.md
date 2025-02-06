# affinidi_tdk_vault_data_manager_client.model.GetDetailedNodeInfoOK

## Load the model package

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
```

## Properties

| Name                    | Type                            | Description                                                                 | Notes      |
| ----------------------- | ------------------------------- | --------------------------------------------------------------------------- | ---------- |
| **nodeId**              | **String**                      | A unique identifier of current node                                         |
| **status**              | [**NodeStatus**](NodeStatus.md) |                                                                             |
| **fileCount**           | **int**                         | number of files in current node                                             | [optional] |
| **profileCount**        | **int**                         | number of profiles in current node                                          | [optional] |
| **folderCount**         | **int**                         | number of folders in current node                                           | [optional] |
| **vcCount**             | **int**                         | number of vcCount in current node                                           | [optional] |
| **name**                | **String**                      | display name of current node                                                |
| **consumerId**          | **String**                      | unique identifier for consumer                                              |
| **parentNodeId**        | **String**                      | parent node path                                                            |
| **profileId**           | **String**                      | A unique identifier of profile, under which current node is created         |
| **createdAt**           | **String**                      | creation date/time of the node                                              |
| **modifiedAt**          | **String**                      | modification date/time of the node                                          |
| **createdBy**           | **String**                      | Identifier of the user who created the node                                 |
| **modifiedBy**          | **String**                      | Identifier of the user who last updated the node                            |
| **description**         | **String**                      | Description of the node                                                     |
| **type**                | [**NodeType**](NodeType.md)     |                                                                             |
| **link**                | **String**                      | id of the file, used for FILE node only                                     | [optional] |
| **schema**              | **String**                      | name of the schema, used for PROFILE node only                              | [optional] |
| **consumedFileStorage** | **int**                         | amount of bytes used by the stored data, used for ROOT_ELEMENT only for now | [optional] |
| **edekInfo**            | [**EdekInfo**](EdekInfo.md)     |                                                                             | [optional] |
| **metadata**            | **String**                      | A JSON string format containing metadata of the node                        | [optional] |
| **getUrl**              | **String**                      |                                                                             | [optional] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
