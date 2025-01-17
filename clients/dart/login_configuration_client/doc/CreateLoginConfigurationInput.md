# affinidi_tdk_login_configuration_client.model.CreateLoginConfigurationInput

## Load the model package

```dart
import 'package:affinidi_tdk_login_configuration_client/api.dart';
```

## Properties

| Name                        | Type                                                                                  | Description                                                                                                                                                                                                 | Notes                        |
| --------------------------- | ------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------- |
| **name**                    | **String**                                                                            | User defined login configuration name                                                                                                                                                                       |
| **description**             | **String**                                                                            |                                                                                                                                                                                                             | [optional]                   |
| **redirectUris**            | **BuiltList&lt;String&gt;**                                                           | OAuth 2.0 Redirect URIs                                                                                                                                                                                     |
| **postLogoutRedirectUris**  | **BuiltList&lt;String&gt;**                                                           | Post Logout Redirect URIs, Used to redirect the user's browser to a specified URL after the logout process is complete. Must match the domain, port, scheme of at least one of the registered redirect URIs | [optional]                   |
| **vpDefinition**            | **String**                                                                            | VP definition in JSON stringify format                                                                                                                                                                      | [optional]                   |
| **presentationDefinition**  | [**JsonObject**](.md)                                                                 | Presentation Definition                                                                                                                                                                                     | [optional]                   |
| **clientMetadata**          | [**LoginConfigurationClientMetadataInput**](LoginConfigurationClientMetadataInput.md) |                                                                                                                                                                                                             | [optional]                   |
| **claimFormat**             | **String**                                                                            | ID token claims output format. Default is array.                                                                                                                                                            | [optional]                   |
| **failOnMappingConflict**   | **bool**                                                                              | Interrupts login process if duplications of data fields names will be found                                                                                                                                 | [optional] [default to true] |
| **scope**                   | **String**                                                                            | List of groups separated by space                                                                                                                                                                           | [optional]                   |
| **tokenEndpointAuthMethod** | [**TokenEndpointAuthMethod**](TokenEndpointAuthMethod.md)                             |                                                                                                                                                                                                             | [optional]                   |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
