# affinidi_tdk_vault_data_manager_client.model.GetScannedFileInfoOK

## Load the model package

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
```

## Properties

| Name                  | Type              | Description                                                                                                                                                    | Notes      |
| --------------------- | ----------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **data**              | [**Object**](.md) |                                                                                                                                                                |
| **jobId**             | **String**        | A unique, randomly generated idetifier                                                                                                                         |
| **status**            | **String**        | Status of the file scanning once initiated                                                                                                                     |
| **profileId**         | **String**        | A unique, randomly generated identifier                                                                                                                        |
| **exclusiveStartKey** | **String**        | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional] |
| **nodeId**            | **String**        | A unique, randomly generated identifier                                                                                                                        |
| **createdAt**         | **String**        |                                                                                                                                                                |
| **name**              | **String**        |                                                                                                                                                                |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
