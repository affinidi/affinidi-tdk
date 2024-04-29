# CreateLoginConfigurationOutput

## Properties

| Name                | Type                                                                                    | Description                           | Notes                        |
| ------------------- | --------------------------------------------------------------------------------------- | ------------------------------------- | ---------------------------- |
| **ari**             | **String**                                                                              | Configuration ari                     | [default to null]            |
| **projectId**       | **String**                                                                              | Project id                            | [default to null]            |
| **configurationId** | **String**                                                                              | Configuration id                      | [optional] [default to null] |
| **name**            | **String**                                                                              | User defined login configuration name | [default to null]            |
| **auth**            | [**CreateLoginConfigurationOutput_auth**](CreateLoginConfigurationOutput_auth.md)       |                                       | [default to null]            |
| **redirectUris**    | **List**                                                                                | OAuth 2.0 Redirect URIs               | [default to null]            |
| **clientMetadata**  | [**LoginConfigurationClientMetadataOutput**](LoginConfigurationClientMetadataOutput.md) |                                       | [default to null]            |
| **creationDate**    | **String**                                                                              | OAuth 2.0 Client Creation Date        | [default to null]            |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
