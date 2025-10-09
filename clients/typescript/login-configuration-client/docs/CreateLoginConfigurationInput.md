# CreateLoginConfigurationInput

## Properties

| Name                        | Type                                                                                  | Description                                                                                                                                                                                                      | Notes                             |
| --------------------------- | ------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------- |
| **name**                    | **string**                                                                            | User defined login configuration name                                                                                                                                                                            | [default to undefined]            |
| **description**             | **string**                                                                            |                                                                                                                                                                                                                  | [optional] [default to undefined] |
| **redirectUris**            | **Array&lt;string&gt;**                                                               | OAuth 2.0 Redirect URIs                                                                                                                                                                                          | [default to undefined]            |
| **postLogoutRedirectUris**  | **Array&lt;string&gt;**                                                               | Post Logout Redirect URIs, Used to redirect the user\&#39;s browser to a specified URL after the logout process is complete. Must match the domain, port, scheme of at least one of the registered redirect URIs | [optional] [default to undefined] |
| **vpDefinition**            | **string**                                                                            | VP definition in JSON stringify format                                                                                                                                                                           | [optional] [default to undefined] |
| **presentationDefinition**  | **object**                                                                            | Presentation Definition                                                                                                                                                                                          | [optional] [default to undefined] |
| **dcqlQuery**               | **object**                                                                            | DCQL query in JSON stringify format                                                                                                                                                                              | [optional] [default to undefined] |
| **idTokenMapping**          | [**Array&lt;IdTokenMappingItem&gt;**](IdTokenMappingItem.md)                          | Fields name/path mapping between the vp_token and the id_token                                                                                                                                                   | [optional] [default to undefined] |
| **clientMetadata**          | [**LoginConfigurationClientMetadataInput**](LoginConfigurationClientMetadataInput.md) |                                                                                                                                                                                                                  | [optional] [default to undefined] |
| **claimFormat**             | **string**                                                                            | ID token claims output format. Default is array.                                                                                                                                                                 | [optional] [default to undefined] |
| **failOnMappingConflict**   | **boolean**                                                                           | Interrupts login process if duplications of data fields names will be found                                                                                                                                      | [optional] [default to true]      |
| **scope**                   | **string**                                                                            | List of groups separated by space                                                                                                                                                                                | [optional] [default to undefined] |
| **tokenEndpointAuthMethod** | [**TokenEndpointAuthMethod**](TokenEndpointAuthMethod.md)                             |                                                                                                                                                                                                                  | [optional] [default to undefined] |

## Example

```typescript
import { CreateLoginConfigurationInput } from '@affinidi-tdk/login-configuration-client'

const instance: CreateLoginConfigurationInput = {
  name,
  description,
  redirectUris,
  postLogoutRedirectUris,
  vpDefinition,
  presentationDefinition,
  dcqlQuery,
  idTokenMapping,
  clientMetadata,
  claimFormat,
  failOnMappingConflict,
  scope,
  tokenEndpointAuthMethod,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
