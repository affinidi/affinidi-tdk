# affinidi_tdk_credential_issuance_client.model.CredentialOfferResponse

## Load the model package

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
```

## Properties

| Name                           | Type                                                                  | Description                                                                                                          | Notes                 |
| ------------------------------ | --------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------- | --------------------- |
| **credentialIssuer**           | **String**                                                            | The URL of the Credential Issuer                                                                                     |
| **credentialConfigurationIds** | **List<String>**                                                      | Array of unique strings that each identify one of the keys in the name/value pairs stored in the credentialSupported | [default to const []] |
| **grants**                     | [**CredentialOfferResponseGrants**](CredentialOfferResponseGrants.md) |                                                                                                                      |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
