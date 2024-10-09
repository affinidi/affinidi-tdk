# affinidi_tdk_iota_client.model.CreateIotaConfigurationInput

## Load the model package

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
```

## Properties

| Name                       | Type                                                                            | Description                                                                                                                                                                        | Notes                               |
| -------------------------- | ------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------- |
| **name**                   | **String**                                                                      | The name of the configuration                                                                                                                                                      |
| **description**            | **String**                                                                      | Description of the configuration                                                                                                                                                   | [optional]                          |
| **walletAri**              | **String**                                                                      | The wallet Ari that will be used to sign                                                                                                                                           |
| **iotaResponseWebhookURL** | **String**                                                                      | webhook to call when data is ready                                                                                                                                                 | [optional]                          |
| **enableVerification**     | **bool**                                                                        |                                                                                                                                                                                    |
| **enableConsentAuditLog**  | **bool**                                                                        |                                                                                                                                                                                    |
| **tokenMaxAge**            | **int**                                                                         | token time to live in seconds                                                                                                                                                      | [optional]                          |
| **clientMetadata**         | [**IotaConfigurationDtoClientMetadata**](IotaConfigurationDtoClientMetadata.md) |                                                                                                                                                                                    |
| **mode**                   | **String**                                                                      | indicates whether the flow is a WebSocket flow or a Redirect flow. This value is used in Vault to determine how to process the data flow request.                                  | [optional] [default to 'websocket'] |
| **redirectUris**           | **List<String>**                                                                | the URL that the user will be redirected to after the request has been processed; should be provided by the developer of the client application.Required only if mode is Redirect. | [optional] [default to const []]    |
| **enableIdvProviders**     | **bool**                                                                        | enables third party IDV provider verification for the given configuration                                                                                                          | [optional]                          |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
