# affinidi_tdk_iota_client.model.CallbackResponseOK

## Load the model package

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
```

## Properties

| Name             | Type       | Description                                                                                                                              | Notes      |
| ---------------- | ---------- | ---------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **redirectUri**  | **String** | The URL to which Affinidi Vault will redirect the user.                                                                                  | [optional] |
| **responseCode** | **String** | A unique identifier to fetch the callback response data. Send this value together with the transactionId to successfully fetch the data. | [optional] |
| **message**      | **String** | A message to the Affinidi Vault indicating that the update was successful.                                                               |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
