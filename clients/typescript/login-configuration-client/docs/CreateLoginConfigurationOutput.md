# CreateLoginConfigurationOutput

## Properties

| Name                       | Type                                                                                    | Description                                                                                                                                                                                                      | Notes                             |
| -------------------------- | --------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------- |
| **ari**                    | **string**                                                                              | Configuration ari                                                                                                                                                                                                | [default to undefined]            |
| **projectId**              | **string**                                                                              | Project id                                                                                                                                                                                                       | [default to undefined]            |
| **configurationId**        | **string**                                                                              | Configuration id                                                                                                                                                                                                 | [optional] [default to undefined] |
| **name**                   | **string**                                                                              | User defined login configuration name                                                                                                                                                                            | [default to undefined]            |
| **auth**                   | [**CreateLoginConfigurationOutputAuth**](CreateLoginConfigurationOutputAuth.md)         |                                                                                                                                                                                                                  | [default to undefined]            |
| **redirectUris**           | **Array&lt;string&gt;**                                                                 | OAuth 2.0 Redirect URIs                                                                                                                                                                                          | [default to undefined]            |
| **clientMetadata**         | [**LoginConfigurationClientMetadataOutput**](LoginConfigurationClientMetadataOutput.md) |                                                                                                                                                                                                                  | [default to undefined]            |
| **creationDate**           | **string**                                                                              | OAuth 2.0 Client Creation Date                                                                                                                                                                                   | [default to undefined]            |
| **postLogoutRedirectUris** | **Array&lt;string&gt;**                                                                 | Post Logout Redirect URIs, Used to redirect the user\&#39;s browser to a specified URL after the logout process is complete. Must match the domain, port, scheme of at least one of the registered redirect URIs | [optional] [default to undefined] |

## Example

```typescript
import { CreateLoginConfigurationOutput } from '@affinidi-tdk/login-configuration-client'

const instance: CreateLoginConfigurationOutput = {
  ari,
  projectId,
  configurationId,
  name,
  auth,
  redirectUris,
  clientMetadata,
  creationDate,
  postLogoutRedirectUris,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
