# CreateLoginConfigurationInput

## Properties

| Name                        | Type                                                                                  | Description                                                                                                                                                                                                     | Notes      |
| --------------------------- | ------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **name**                    | **String**                                                                            | User defined login configuration name                                                                                                                                                                           |            |
| **description**             | **String**                                                                            |                                                                                                                                                                                                                 | [optional] |
| **redirectUris**            | **List&lt;String&gt;**                                                                | OAuth 2.0 Redirect URIs                                                                                                                                                                                         |            |
| **postLogoutRedirectUris**  | **List&lt;String&gt;**                                                                | Post Logout Redirect URIs, Used to redirect the user&#39;s browser to a specified URL after the logout process is complete. Must match the domain, port, scheme of at least one of the registered redirect URIs | [optional] |
| **vpDefinition**            | **String**                                                                            | VP definition in JSON stringify format                                                                                                                                                                          | [optional] |
| **presentationDefinition**  | **Object**                                                                            | Presentation Definition                                                                                                                                                                                         | [optional] |
| **idTokenMapping**          | **IdTokenMapping**                                                                    |                                                                                                                                                                                                                 | [optional] |
| **clientMetadata**          | [**LoginConfigurationClientMetadataInput**](LoginConfigurationClientMetadataInput.md) |                                                                                                                                                                                                                 | [optional] |
| **claimFormat**             | [**ClaimFormatEnum**](#ClaimFormatEnum)                                               | ID token claims output format. Default is array.                                                                                                                                                                | [optional] |
| **failOnMappingConflict**   | **Boolean**                                                                           | Interrupts login process if duplications of data fields names will be found                                                                                                                                     | [optional] |
| **scope**                   | **String**                                                                            | List of groups separated by space                                                                                                                                                                               | [optional] |
| **tokenEndpointAuthMethod** | **TokenEndpointAuthMethod**                                                           |                                                                                                                                                                                                                 | [optional] |

## Enum: ClaimFormatEnum

| Name  | Value             |
| ----- | ----------------- |
| ARRAY | &quot;array&quot; |
| MAP   | &quot;map&quot;   |
