# CreateLoginConfigurationOutput

## Properties

| Name                       | Type                                                                            | Description                                                                                                                                                                                                     | Notes      |
| -------------------------- | ------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **ari**                    | **String**                                                                      | Configuration ari                                                                                                                                                                                               |            |
| **projectId**              | **String**                                                                      | Project id                                                                                                                                                                                                      |            |
| **configurationId**        | **String**                                                                      | Configuration id                                                                                                                                                                                                | [optional] |
| **name**                   | **String**                                                                      | User defined login configuration name                                                                                                                                                                           |            |
| **auth**                   | [**CreateLoginConfigurationOutputAuth**](CreateLoginConfigurationOutputAuth.md) |                                                                                                                                                                                                                 |            |
| **redirectUris**           | **List&lt;String&gt;**                                                          | OAuth 2.0 Redirect URIs                                                                                                                                                                                         |            |
| **clientMetadata**         | **LoginConfigurationClientMetadataOutput**                                      |                                                                                                                                                                                                                 |            |
| **creationDate**           | **String**                                                                      | OAuth 2.0 Client Creation Date                                                                                                                                                                                  |            |
| **postLogoutRedirectUris** | **List&lt;String&gt;**                                                          | Post Logout Redirect URIs, Used to redirect the user&#39;s browser to a specified URL after the logout process is complete. Must match the domain, port, scheme of at least one of the registered redirect URIs | [optional] |