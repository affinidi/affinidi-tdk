# CreateLoginConfigurationInput

## Properties

| Name                        | Type                                                                                  | Description                                                                 | Notes                        |
| --------------------------- | ------------------------------------------------------------------------------------- | --------------------------------------------------------------------------- | ---------------------------- |
| **name**                    | **String**                                                                            | User defined login configuration name                                       | [default to null]            |
| **redirectUris**            | **List**                                                                              | OAuth 2.0 Redirect URIs                                                     | [default to null]            |
| **vpDefinition**            | **String**                                                                            | VP definition in JSON stringify format                                      | [optional] [default to null] |
| **presentationDefinition**  | [**Object**](.md)                                                                     | Presentation Definition                                                     | [optional] [default to null] |
| **idTokenMapping**          | [**List**](IdTokenMapping_inner.md)                                                   | Fields name/path mapping between the vp_token and the id_token              | [optional] [default to null] |
| **clientMetadata**          | [**LoginConfigurationClientMetadataInput**](LoginConfigurationClientMetadataInput.md) |                                                                             | [optional] [default to null] |
| **claimFormat**             | **String**                                                                            | ID token claims output format. Default is array.                            | [optional] [default to null] |
| **failOnMappingConflict**   | **Boolean**                                                                           | Interrupts login process if duplications of data fields names will be found | [optional] [default to true] |
| **scope**                   | **String**                                                                            | List of groups separated by space                                           | [optional] [default to null] |
| **tokenEndpointAuthMethod** | [**TokenEndpointAuthMethod**](TokenEndpointAuthMethod.md)                             |                                                                             | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)