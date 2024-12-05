# affinidi_tdk_iota_client.model.PrepareRequest

## Load the model package

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
```

## Properties

| Name                   | Type       | Description                                                                                                        | Notes      |
| ---------------------- | ---------- | ------------------------------------------------------------------------------------------------------------------ | ---------- |
| **connectionClientId** | **String** |                                                                                                                    |
| **queryId**            | **String** |                                                                                                                    |
| **correlationId**      | **String** | A unique, randomly generated identifier that correlates the request and response in the data-sharing request flow. |
| **tokenMaxAge**        | **int**    | This is the lifetime of the signed request token during the data-sharing flow.                                     | [optional] |
| **audience**           | **String** |                                                                                                                    | [optional] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
