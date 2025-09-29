# affinidi_tdk_credential_issuance_client.model.CreateIssuanceConfigInput

## Load the model package

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
```

## Properties

| Name                        | Type                                                                           | Description                                                                                                                                           | Notes      |
| --------------------------- | ------------------------------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **name**                    | **String**                                                                     |                                                                                                                                                       | [optional] |
| **description**             | **String**                                                                     |                                                                                                                                                       | [optional] |
| **issuerWalletId**          | **String**                                                                     | Issuer Wallet id                                                                                                                                      |
| **credentialOfferDuration** | **int**                                                                        | credential offer duration in second                                                                                                                   | [optional] |
| **format**                  | **String**                                                                     | String identifying the format of this Credential, i.e., ldp_vc. Depending on the format value, the object contains further elements defining the type | [optional] |
| **credentialSupported**     | [**BuiltList&lt;CredentialSupportedObject&gt;**](CredentialSupportedObject.md) |                                                                                                                                                       |
| **issuerMetadata**          | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md)                        | Issuer public information wallet may want to show to user during consent confirmation                                                                 | [optional] |
| **returnUris**              | **BuiltList&lt;String&gt;**                                                    | List of allowed URIs to be returned to after issuance                                                                                                 | [optional] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
