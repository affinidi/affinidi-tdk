# affinidi_tdk_credential_issuance_client.model.UpdateIssuanceConfigInput

## Load the model package

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
```

## Properties

| Name                        | Type                                                                           | Description                                                                                                                                           | Notes      |
| --------------------------- | ------------------------------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **name**                    | **String**                                                                     |                                                                                                                                                       | [optional] |
| **description**             | **String**                                                                     |                                                                                                                                                       | [optional] |
| **issuerWalletId**          | **String**                                                                     | Issuer Wallet id                                                                                                                                      | [optional] |
| **credentialOfferDuration** | **int**                                                                        | credential offer duration in second                                                                                                                   | [optional] |
| **format**                  | **String**                                                                     | String identifying the format of this Credential, i.e., ldp_vc. Depending on the format value, the object contains further elements defining the type | [optional] |
| **issuerUri**               | **String**                                                                     | Issuer URI                                                                                                                                            | [optional] |
| **credentialSupported**     | [**BuiltList&lt;CredentialSupportedObject&gt;**](CredentialSupportedObject.md) |                                                                                                                                                       | [optional] |
| **issuerMetadata**          | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md)                        | Issuer public information wallet may want to show to user during consent confirmation                                                                 | [optional] |
| **returnUris**              | **BuiltList&lt;String&gt;**                                                    | List of allowed URIs to be returned to after issuance                                                                                                 | [optional] |
| **webhook**                 | [**CisConfigurationWebhookSetting**](CisConfigurationWebhookSetting.md)        |                                                                                                                                                       | [optional] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
