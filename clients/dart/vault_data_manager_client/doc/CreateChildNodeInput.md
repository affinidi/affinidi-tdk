# affinidi_tdk_vault_data_manager_client.model.CreateChildNodeInput

## Load the model package

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
```

## Properties

| Name            | Type                        | Description                                                                                                   | Notes      |
| --------------- | --------------------------- | ------------------------------------------------------------------------------------------------------------- | ---------- |
| **name**        | **String**                  | Name of the item                                                                                              |
| **type**        | [**NodeType**](NodeType.md) |                                                                                                               |
| **description** | **String**                  | description of profile if creating a new profile                                                              | [optional] |
| **edekInfo**    | [**EdekInfo**](EdekInfo.md) |                                                                                                               | [optional] |
| **dek**         | **String**                  | A base64 encoded data encryption key, encrypted using VFS public key, required for node types [FILE, PROFILE] | [optional] |
| **metadata**    | **String**                  | metadata of the node in stringified json format                                                               | [optional] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
