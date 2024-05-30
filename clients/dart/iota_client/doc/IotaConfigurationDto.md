# affinidi_tdk_iota_client.model.IotaConfigurationDto

## Load the model package

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
```

## Properties

| Name                       | Type                                                                            | Description                              | Notes      |
| -------------------------- | ------------------------------------------------------------------------------- | ---------------------------------------- | ---------- |
| **ari**                    | **String**                                                                      | The ARI of the config                    |
| **configurationId**        | **String**                                                                      |                                          |
| **name**                   | **String**                                                                      | The name of the config                   |
| **projectId**              | **String**                                                                      |                                          |
| **walletAri**              | **String**                                                                      | The wallet Ari that will be used to sign |
| **tokenMaxAge**            | **int**                                                                         | token time to live in seconds            |
| **iotaResponseWebhookURL** | **String**                                                                      | webhook to call when data is ready       | [optional] |
| **enableVerification**     | **bool**                                                                        |                                          |
| **enableConsentAuditLog**  | **bool**                                                                        |                                          |
| **clientMetadata**         | [**IotaConfigurationDtoClientMetadata**](IotaConfigurationDtoClientMetadata.md) |                                          |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
