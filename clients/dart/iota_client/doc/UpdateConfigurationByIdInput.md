# affinidi_tdk_iota_client.model.UpdateConfigurationByIdInput

## Load the model package

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
```

## Properties

| Name                       | Type                                                                            | Description                              | Notes      |
| -------------------------- | ------------------------------------------------------------------------------- | ---------------------------------------- | ---------- |
| **name**                   | **String**                                                                      | The name of the config                   | [optional] |
| **walletAri**              | **String**                                                                      | The wallet Ari that will be used to sign | [optional] |
| **iotaResponseWebhookURL** | **String**                                                                      | webhook to call when data is ready       | [optional] |
| **enableVerification**     | **bool**                                                                        |                                          | [optional] |
| **enableConsentAuditLog**  | **bool**                                                                        |                                          | [optional] |
| **tokenMaxAge**            | **int**                                                                         | token time to live in seconds            | [optional] |
| **clientMetadata**         | [**IotaConfigurationDtoClientMetadata**](IotaConfigurationDtoClientMetadata.md) |                                          | [optional] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
