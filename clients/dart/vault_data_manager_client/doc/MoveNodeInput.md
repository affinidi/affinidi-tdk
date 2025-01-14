# affinidi_tdk_vault_data_manager_client.model.MoveNodeInput

## Load the model package

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
```

## Properties

| Name                                  | Type       | Description                                                                                                                                | Notes                         |
| ------------------------------------- | ---------- | ------------------------------------------------------------------------------------------------------------------------------------------ | ----------------------------- |
| **destinationNodeId**                 | **String** | Parent to which current node should be moved                                                                                               |
| **resolveNameConflictsAutomatically** | **bool**   | automatically update the name of Node if target Node has children with the same name. If not provided, name won't be updated automatically | [optional] [default to false] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
