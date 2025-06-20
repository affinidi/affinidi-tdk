# TokenDto

## Properties

| Name                     | Type                                                                                    | Description                                                 | Notes |
| ------------------------ | --------------------------------------------------------------------------------------- | ----------------------------------------------------------- | ----- |
| **id**                   | **UUID**                                                                                | Token Id                                                    |       |
| **ari**                  | **String**                                                                              | Token ARI                                                   |       |
| **ownerAri**             | **String**                                                                              | The Token owner&#39;s ARI                                   |       |
| **name**                 | **String**                                                                              | Owner defined Token display name                            |       |
| **authenticationMethod** | [**TokenPrivateKeyAuthenticationMethodDto**](TokenPrivateKeyAuthenticationMethodDto.md) |                                                             |       |
| **scopes**               | **List&lt;String&gt;**                                                                  | Scopes that will be assigned to the Token on authentication |       |
