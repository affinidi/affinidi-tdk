# LoginConfigurationObject

## Properties

| Name                        | Type                                                                                    | Description                                                                                                                                                                                                      | Notes                             |
| --------------------------- | --------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------- |
| **ari**                     | **string**                                                                              | Configuration ari                                                                                                                                                                                                | [default to undefined]            |
| **configurationId**         | **string**                                                                              | Configuration id                                                                                                                                                                                                 | [optional] [default to undefined] |
| **projectId**               | **string**                                                                              | Project id                                                                                                                                                                                                       | [default to undefined]            |
| **name**                    | **string**                                                                              | User defined login configuration name                                                                                                                                                                            | [default to undefined]            |
| **redirectUris**            | **Array&lt;string&gt;**                                                                 | OAuth 2.0 Redirect URIs                                                                                                                                                                                          | [optional] [default to undefined] |
| **postLogoutRedirectUris**  | **Array&lt;string&gt;**                                                                 | Post Logout Redirect URIs, Used to redirect the user\&#39;s browser to a specified URL after the logout process is complete. Must match the domain, port, scheme of at least one of the registered redirect URIs | [optional] [default to undefined] |
| **scope**                   | **string**                                                                              | OAuth 2.0 Client Scope                                                                                                                                                                                           | [optional] [default to undefined] |
| **clientId**                | **string**                                                                              | OAuth 2.0 Client ID                                                                                                                                                                                              | [optional] [default to undefined] |
| **creationDate**            | **string**                                                                              | OAuth 2.0 Client Creation Date                                                                                                                                                                                   | [default to undefined]            |
| **vpDefinition**            | **string**                                                                              | VP definition in JSON stringify format                                                                                                                                                                           | [optional] [default to undefined] |
| **presentationDefinition**  | **object**                                                                              | Presentation Definition                                                                                                                                                                                          | [optional] [default to undefined] |
| **dcqlQuery**               | **object**                                                                              | DCQL query                                                                                                                                                                                                       | [optional] [default to undefined] |
| **idTokenMapping**          | [**Array&lt;IdTokenMappingItem&gt;**](IdTokenMappingItem.md)                            | Fields name/path mapping between the vp_token and the id_token                                                                                                                                                   | [default to undefined]            |
| **clientMetadata**          | [**LoginConfigurationClientMetadataOutput**](LoginConfigurationClientMetadataOutput.md) |                                                                                                                                                                                                                  | [default to undefined]            |
| **tokenEndpointAuthMethod** | [**TokenEndpointAuthMethod**](TokenEndpointAuthMethod.md)                               |                                                                                                                                                                                                                  | [default to undefined]            |

## Example

```typescript
import { LoginConfigurationObject } from '@affinidi-tdk/login-configuration-client'

const instance: LoginConfigurationObject = {
  ari,
  configurationId,
  projectId,
  name,
  redirectUris,
  postLogoutRedirectUris,
  scope,
  clientId,
  creationDate,
  vpDefinition,
  presentationDefinition,
  dcqlQuery,
  idTokenMapping,
  clientMetadata,
  tokenEndpointAuthMethod,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
