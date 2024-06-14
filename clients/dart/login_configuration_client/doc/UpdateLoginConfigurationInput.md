# affinidi_tdk_login_configuration_client.model.UpdateLoginConfigurationInput

## Load the model package

```dart
import 'package:affinidi_tdk_login_configuration_client/api.dart';
```

## Properties

| Name                        | Type                                                                                  | Description                                                                                                                                                                                                 | Notes                            |
| --------------------------- | ------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------- |
| **name**                    | **String**                                                                            | User defined login configuration name                                                                                                                                                                       | [optional]                       |
| **redirectUris**            | **List<String>**                                                                      | OAuth 2.0 Redirect URIs                                                                                                                                                                                     | [optional] [default to const []] |
| **postLogoutRedirectUris**  | **List<String>**                                                                      | Post Logout Redirect URIs, Used to redirect the user's browser to a specified URL after the logout process is complete. Must match the domain, port, scheme of at least one of the registered redirect URIs | [optional] [default to const []] |
| **clientSecret**            | **String**                                                                            | OAuth2 client secret                                                                                                                                                                                        | [optional]                       |
| **vpDefinition**            | **String**                                                                            | VP definition in JSON stringify format                                                                                                                                                                      | [optional]                       |
| **presentationDefinition**  | [**Object**](.md)                                                                     | Presentation Definition                                                                                                                                                                                     | [optional]                       |
| **clientMetadata**          | [**LoginConfigurationClientMetadataInput**](LoginConfigurationClientMetadataInput.md) |                                                                                                                                                                                                             | [optional]                       |
| **tokenEndpointAuthMethod** | [**TokenEndpointAuthMethod**](TokenEndpointAuthMethod.md)                             |                                                                                                                                                                                                             | [optional]                       |
| **failOnMappingConflict**   | **bool**                                                                              | Interrupts login process if duplications of data fields names will be found                                                                                                                                 | [optional]                       |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
