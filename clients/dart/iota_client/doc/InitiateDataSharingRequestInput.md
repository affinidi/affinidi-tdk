# affinidi_tdk_iota_client.model.InitiateDataSharingRequestInput

## Load the model package

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
```

## Properties

| Name                | Type       | Description                                                                                                                                      | Notes      |
| ------------------- | ---------- | ------------------------------------------------------------------------------------------------------------------------------------------------ | ---------- |
| **queryId**         | **String** | The ID of the query.                                                                                                                             |
| **correlationId**   | **String** | A unique, randomly generated identifier that correlates the request and response in the data-sharing request flow.                               |
| **tokenMaxAge**     | **int**    | This is the lifetime of the signed request token during the data-sharing flow.                                                                   | [optional] |
| **nonce**           | **String** | A randomly generated value that is added in the request and response to prevent replay attacks.                                                  |
| **redirectUri**     | **String** | List of allowed URLs to redirect users, including the response from the request. This is required if the selected data-sharing mode is Redirect. |
| **configurationId** | **String** | ID of the Affinidi Iota Framework configuration.                                                                                                 |
| **mode**            | **String** | Determines whether to handle the data-sharing request using the WebSocket or Redirect flow.                                                      |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
