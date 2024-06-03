# UpdateLoginConfigurationInput

## Properties

| Name                        | Type                                                                                  | Description                                                                                                                 | Notes                        |
| --------------------------- | ------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | ---------------------------- |
| **name**                    | **String**                                                                            | User defined login configuration name                                                                                       | [optional] [default to null] |
| **redirectUris**            | **List**                                                                              | OAuth 2.0 Redirect URIs                                                                                                     | [optional] [default to null] |
| **postLogoutRedirectUris**  | **List**                                                                              | Post Logout Redirect URIs, Used to redirect the user&#39;s browser to a specified URL after the logout process is complete. | [optional] [default to null] |
| **clientSecret**            | **String**                                                                            | OAuth2 client secret                                                                                                        | [optional] [default to null] |
| **vpDefinition**            | **String**                                                                            | VP definition in JSON stringify format                                                                                      | [optional] [default to null] |
| **presentationDefinition**  | [**Object**](.md)                                                                     | Presentation Definition                                                                                                     | [optional] [default to null] |
| **idTokenMapping**          | [**List**](IdTokenMapping_inner.md)                                                   | Fields name/path mapping between the vp_token and the id_token                                                              | [optional] [default to null] |
| **clientMetadata**          | [**LoginConfigurationClientMetadataInput**](LoginConfigurationClientMetadataInput.md) |                                                                                                                             | [optional] [default to null] |
| **tokenEndpointAuthMethod** | [**TokenEndpointAuthMethod**](TokenEndpointAuthMethod.md)                             |                                                                                                                             | [optional] [default to null] |
| **failOnMappingConflict**   | **Boolean**                                                                           | Interrupts login process if duplications of data fields names will be found                                                 | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
