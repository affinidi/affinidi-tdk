# affinidi_tdk_iota_client.model.CreateIotaConfigurationInput

## Load the model package

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
```

## Properties

| Name                       | Type                                                                            | Description                                                                                                                                      | Notes                               |
| -------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ | ----------------------------------- |
| **name**                   | **String**                                                                      | The name of the configuration to quickly identify the resource.                                                                                  |
| **description**            | **String**                                                                      | An optional description of what the configuration is used for.                                                                                   | [optional]                          |
| **walletAri**              | **String**                                                                      | The unique resource identifier of the Wallet used to sign the request token.                                                                     |
| **iotaResponseWebhookURL** | **String**                                                                      | The webhook URL is used for callback when the data is ready.                                                                                     | [optional]                          |
| **enableVerification**     | **bool**                                                                        | Cryptographically verifies the data shared by the user when enabled.                                                                             |
| **enableConsentAuditLog**  | **bool**                                                                        | Records the user's consent when they share their data, including the type of data shared when enabled.                                           |
| **tokenMaxAge**            | **int**                                                                         | This is the lifetime of the signed request token during the data-sharing flow.                                                                   | [optional]                          |
| **clientMetadata**         | [**IotaConfigurationDtoClientMetadata**](IotaConfigurationDtoClientMetadata.md) |                                                                                                                                                  |
| **mode**                   | **String**                                                                      | Determines whether to handle the data-sharing request using the WebSocket, Redirect or Didcomm messaging flow.                                   | [optional] [default to 'websocket'] |
| **redirectUris**           | **BuiltList&lt;String&gt;**                                                     | List of allowed URLs to redirect users, including the response from the request. This is required if the selected data-sharing mode is Redirect. | [optional]                          |
| **enableIdvProviders**     | **bool**                                                                        | Enables identity verification from user with a 3rd-party provider when a verified identity document is not found.                                | [optional]                          |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
