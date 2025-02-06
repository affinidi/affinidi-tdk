# affinidi_tdk_vault_data_manager_client.model.CreateProfileInput

## Load the model package

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
```

## Properties

| Name            | Type                        | Description                                                                                                   | Notes      |
| --------------- | --------------------------- | ------------------------------------------------------------------------------------------------------------- | ---------- |
| **name**        | **String**                  | Name of the item                                                                                              |
| **description** | **String**                  | description of profile                                                                                        | [optional] |
| **edekInfo**    | [**EdekInfo**](EdekInfo.md) |                                                                                                               |
| **dek**         | **String**                  | A base64 encoded data encryption key, encrypted using VFS public key, required for node types [FILE, PROFILE] |
| **metadata**    | **String**                  | metadata of the node in stringified json format                                                               | [optional] |
| **subjectDid**  | **String**                  | DID to grant access to Profile                                                                                | [optional] |
| **rights**      | **BuiltList&lt;String&gt;** | types of access to grant                                                                                      | [optional] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
