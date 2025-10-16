# UpdateLoginConfigurationInput

## Properties

| Name                        | Type                                                                                  | Description                                                                                                                                                                                                      | Notes                             |
| --------------------------- | ------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------- |
| **name**                    | **string**                                                                            | User defined login configuration name                                                                                                                                                                            | [optional] [default to undefined] |
| **redirectUris**            | **Array&lt;string&gt;**                                                               | OAuth 2.0 Redirect URIs                                                                                                                                                                                          | [optional] [default to undefined] |
| **postLogoutRedirectUris**  | **Array&lt;string&gt;**                                                               | Post Logout Redirect URIs, Used to redirect the user\&#39;s browser to a specified URL after the logout process is complete. Must match the domain, port, scheme of at least one of the registered redirect URIs | [optional] [default to undefined] |
| **clientSecret**            | **string**                                                                            | OAuth2 client secret                                                                                                                                                                                             | [optional] [default to undefined] |
| **vpDefinition**            | **string**                                                                            | VP definition in JSON stringify format                                                                                                                                                                           | [optional] [default to undefined] |
| **presentationDefinition**  | **object**                                                                            | Presentation Definition                                                                                                                                                                                          | [optional] [default to undefined] |
| **dcqlQuery**               | **object**                                                                            | DCQL query in JSON stringify format                                                                                                                                                                              | [optional] [default to undefined] |
| **idTokenMapping**          | [**Array&lt;IdTokenMappingItem&gt;**](IdTokenMappingItem.md)                          | Fields name/path mapping between the vp_token and the id_token                                                                                                                                                   | [optional] [default to undefined] |
| **clientMetadata**          | [**LoginConfigurationClientMetadataInput**](LoginConfigurationClientMetadataInput.md) |                                                                                                                                                                                                                  | [optional] [default to undefined] |
| **tokenEndpointAuthMethod** | [**TokenEndpointAuthMethod**](TokenEndpointAuthMethod.md)                             |                                                                                                                                                                                                                  | [optional] [default to undefined] |
| **failOnMappingConflict**   | **boolean**                                                                           | Interrupts login process if duplications of data fields names will be found                                                                                                                                      | [optional] [default to undefined] |

## Example

```typescript
import { UpdateLoginConfigurationInput } from '@affinidi-tdk/login-configuration-client'

const instance: UpdateLoginConfigurationInput = {
  name,
  redirectUris,
  postLogoutRedirectUris,
  clientSecret,
  vpDefinition,
  presentationDefinition,
  dcqlQuery,
  idTokenMapping,
  clientMetadata,
  tokenEndpointAuthMethod,
  failOnMappingConflict,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
