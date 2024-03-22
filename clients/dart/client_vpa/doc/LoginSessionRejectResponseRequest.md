# openapi.model.LoginSessionRejectResponseRequest

## Load the model package

```dart
import 'package:openapi/api.dart';
```

## Properties

| Name                 | Type       | Description                                                                                                        | Notes      |
| -------------------- | ---------- | ------------------------------------------------------------------------------------------------------------------ | ---------- |
| **error**            | **String** | The error should follow the OAuth2 error format (e.g. invalid_request, login_required). Defaults to request_denied | [optional] |
| **errorDescription** | **String** | Description of the error in a human readable format                                                                | [optional] |
| **state**            | **String** | Random state associated to the Session                                                                             |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
