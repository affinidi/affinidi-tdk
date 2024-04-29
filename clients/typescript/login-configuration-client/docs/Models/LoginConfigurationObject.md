# LoginConfigurationObject

## Properties

| Name                        | Type                                                                                    | Description                                                    | Notes                        |
| --------------------------- | --------------------------------------------------------------------------------------- | -------------------------------------------------------------- | ---------------------------- |
| **ari**                     | **String**                                                                              | Configuration ari                                              | [default to null]            |
| **configurationId**         | **String**                                                                              | Configuration id                                               | [optional] [default to null] |
| **projectId**               | **String**                                                                              | Project id                                                     | [default to null]            |
| **name**                    | **String**                                                                              | User defined login configuration name                          | [default to null]            |
| **redirectUris**            | **List**                                                                                | OAuth 2.0 Redirect URIs                                        | [optional] [default to null] |
| **scope**                   | **String**                                                                              | OAuth 2.0 Client Scope                                         | [optional] [default to null] |
| **clientId**                | **String**                                                                              | OAuth 2.0 Client ID                                            | [default to null]            |
| **creationDate**            | **String**                                                                              | OAuth 2.0 Client Creation Date                                 | [default to null]            |
| **vpDefinition**            | **String**                                                                              | VP definition in JSON stringify format                         | [default to null]            |
| **presentationDefinition**  | [**Object**](.md)                                                                       | Presentation Definition                                        | [optional] [default to null] |
| **idTokenMapping**          | [**List**](IdTokenMapping_inner.md)                                                     | Fields name/path mapping between the vp_token and the id_token | [default to null]            |
| **clientMetadata**          | [**LoginConfigurationClientMetadataOutput**](LoginConfigurationClientMetadataOutput.md) |                                                                | [default to null]            |
| **tokenEndpointAuthMethod** | [**TokenEndpointAuthMethod**](TokenEndpointAuthMethod.md)                               |                                                                | [default to null]            |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
