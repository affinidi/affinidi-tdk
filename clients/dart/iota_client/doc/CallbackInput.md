# affinidi_tdk_iota_client.model.CallbackInput

## Load the model package

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
```

## Properties

| Name                       | Type       | Description                                                                                                        | Notes      |
| -------------------------- | ---------- | ------------------------------------------------------------------------------------------------------------------ | ---------- |
| **state**                  | **String** | A string that must be a valid UUID (version 1-5).                                                                  |
| **presentationSubmission** | **String** | A string that must be a valid JSON object. The structure of presentation submission should follow OID4VP standard. | [optional] |
| **vpToken**                | **String** | A string that must be a valid JSON object. Ensure to escape special characters properly..                          | [optional] |
| **error**                  | **String** | The error should follow the OAuth2 error format (e.g. invalid_request, login_required). Defaults to access_denied  | [optional] |
| **errorDescription**       | **String** | Description of the error in a human readable format                                                                | [optional] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
