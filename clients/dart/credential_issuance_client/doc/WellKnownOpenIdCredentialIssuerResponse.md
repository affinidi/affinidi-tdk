# affinidi_tdk_credential_issuance_client.model.WellKnownOpenIdCredentialIssuerResponse

## Load the model package

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
```

## Properties

| Name                                  | Type                                                                                                                                              | Description | Notes                            |
| ------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- | -------------------------------- |
| **authorizationEndpoint**             | **String**                                                                                                                                        |             | [optional]                       |
| **credentialEndpoint**                | **String**                                                                                                                                        |             | [optional]                       |
| **credentialIssuer**                  | **String**                                                                                                                                        |             | [optional]                       |
| **credentialsSupported**              | [**List<WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner>**](WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner.md) |             | [optional] [default to const []] |
| **deferredCredentialEndpoint**        | **String**                                                                                                                                        |             | [optional]                       |
| **grantTypesSupported**               | **List<String>**                                                                                                                                  |             | [optional] [default to const []] |
| **jwksUri**                           | **String**                                                                                                                                        |             | [optional]                       |
| **scopesSupported**                   | **List<String>**                                                                                                                                  |             | [optional] [default to const []] |
| **tokenEndpoint**                     | **String**                                                                                                                                        |             | [optional]                       |
| **tokenEndpointAuthMethodsSupported** | **List<String>**                                                                                                                                  |             | [optional] [default to const []] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
