# affinidi_tdk_iota_client.model.InitiateDataSharingRequestInput

## Load the model package

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
```

## Properties

| Name                | Type       | Description                                                                                                                                       | Notes      |
| ------------------- | ---------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **queryId**         | **String** |                                                                                                                                                   |
| **correlationId**   | **String** |                                                                                                                                                   |
| **tokenMaxAge**     | **int**    | token time to live in seconds                                                                                                                     | [optional] |
| **nonce**           | **String** | Random value used to prevent replay attacks                                                                                                       |
| **redirectUri**     | **String** | the URL that the user will be redirected to after the request has been processed; should be provided by the developer of the client application.  |
| **configurationId** | **String** | id of the IOTA configuration used                                                                                                                 |
| **mode**            | **String** | indicates whether the flow is a WebSocket flow or a Redirect flow. This value is used in Vault to determine how to process the data flow request. |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
