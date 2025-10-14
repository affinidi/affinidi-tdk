# affinidi_tdk_login_configuration_client.model.UpdateLoginConfigurationInput

## Load the model package

```dart
import 'package:affinidi_tdk_login_configuration_client/api.dart';
```

## Properties

| Name                        | Type                                                                                  | Description                                                                                                                                                                                                 | Notes      |
| --------------------------- | ------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **name**                    | **String**                                                                            | User defined login configuration name                                                                                                                                                                       | [optional] |
| **redirectUris**            | **BuiltList&lt;String&gt;**                                                           | OAuth 2.0 Redirect URIs                                                                                                                                                                                     | [optional] |
| **postLogoutRedirectUris**  | **BuiltList&lt;String&gt;**                                                           | Post Logout Redirect URIs, Used to redirect the user's browser to a specified URL after the logout process is complete. Must match the domain, port, scheme of at least one of the registered redirect URIs | [optional] |
| **clientSecret**            | **String**                                                                            | OAuth2 client secret                                                                                                                                                                                        | [optional] |
| **vpDefinition**            | **String**                                                                            | VP definition in JSON stringify format                                                                                                                                                                      | [optional] |
| **presentationDefinition**  | [**JsonObject**](.md)                                                                 | Presentation Definition                                                                                                                                                                                     | [optional] |
| **dcqlQuery**               | [**JsonObject**](.md)                                                                 | DCQL query in JSON stringify format                                                                                                                                                                         | [optional] |
| **idTokenMapping**          | [**BuiltList&lt;IdTokenMappingItem&gt;**](IdTokenMappingItem.md)                      | Fields name/path mapping between the vp_token and the id_token                                                                                                                                              | [optional] |
| **clientMetadata**          | [**LoginConfigurationClientMetadataInput**](LoginConfigurationClientMetadataInput.md) |                                                                                                                                                                                                             | [optional] |
| **tokenEndpointAuthMethod** | [**TokenEndpointAuthMethod**](TokenEndpointAuthMethod.md)                             |                                                                                                                                                                                                             | [optional] |
| **failOnMappingConflict**   | **bool**                                                                              | Interrupts login process if duplications of data fields names will be found                                                                                                                                 | [optional] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
